class UsersController < ApplicationController

  def index
    @users = User.all
  end
  def new
    @user = User.new
    @user.user_degrees.build.build_degree
		#@user.degrees.bulid
  end

  def create
    @user = User.new(user_params)
    if  @user.save
      respond_to do |format|
        format.html { redirect_to @user, notice: "User was successfully created."}
        format.json { render :show, status: :created, location: @user }
      end
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to userss_url
  end

  private
  def user_params
    params.require(:user).permit(:name, :mobile, user_degrees_attributes: [:passing_year, degree_attributes: [:name]])
  end    
end

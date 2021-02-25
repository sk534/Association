class AddPassingYear < ActiveRecord::Migration[6.1]
  def change
    add_column :user_degrees, :passing_year, :date
  end
end

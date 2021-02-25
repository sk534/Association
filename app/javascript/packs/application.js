// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("bootstrap")
require("jquery")
require("@nathanvda/cocoon")
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

import "../stylesheets/application";

Rails.start()
Turbolinks.start()
ActiveStorage.start()


$(function() {
    $('.datepicker').datepicker();
});


document.addEventListener("turbolinks:load", function() {
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
})

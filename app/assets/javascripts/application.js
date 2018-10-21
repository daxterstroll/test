//= require jquery
//= require jquery_ujs
//= require rails.validations
//= require baguetteBox.min
//= require action_cable
//= require cable
//= require jquery-3.3.1.slim.min
//= require jquery.min
//= require popper.min
//= require bootstrap.min
//= require tinymce
//= require rails.validations.custom

/*modal windows*/
$(document).ready(function () {
    $('#myModal').modal('show');
});
setTimeout(function() {$(".modal").modal('hide'); }, 3000);
/*modal windows*/
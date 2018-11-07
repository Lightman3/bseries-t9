/*
$(function(){
  if ($('#devise_sessions_new').length > 0) {

    var form = $('#new_user');
    var submitHandler = function(submitEvent){

      var emailField = $('#user_email');
      var emailErrorMessageElement = $('#email_error_message');

      console.log("verificando valor en campo de email (con jQuery):", emailField.val());

      if (! emailField.val()) {
        submitEvent.preventDefault();
        if (emailErrorMessageElement.length == 0) {
          emailField.after('<div class="error_message" id="email_error_message"></div>');
          emailErrorMessageElement = $('#email_error_message');
        }
        emailField.addClass('error');
        emailErrorMessageElement.removeClass('hide');
        emailErrorMessageElement.text('Inserta un correo para continuar');
      } else {
        emailErrorMessageElement.addClass('hide');
        emailField.removeClass('error');
      }

      var passwordField = $('#user_password');
      var passwordErrorMessageElement = $('#password_error_message');

      console.log("verificando valor en campo de password (con jQuery):", passwordField.val());

      if (! passwordField.val()) {
        submitEvent.preventDefault();
        if (passwordErrorMessageElement.length == 0) {
          passwordField.after('<div class="error_message" id="password_error_message"></div>');
          passwordErrorMessageElement = $('#password_error_message');
        }
        passwordField.addClass('error');
        passwordErrorMessageElement.removeClass('hide');
        passwordErrorMessageElement.text('Debes ingresar una contraseña');
      } else {
        passwordErrorMessageElement.addClass('hide');
        passwordField.removeClass('error');
      }

      submitEvent.stopPropagation();

    };

    form.on('submit',submitHandler);

  }
});
*/
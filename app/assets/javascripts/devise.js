
// esta funcion se llamara cuando ya este cargada la pagina
function deviseLoginPageLoadedHandler(){

  if (document.getElementById('devise_sessions_new') != null){
    // estamos en la pagina de inicio de sesion
    var form = document.getElementById('new_user');

    var submitHandler = function(submitEvent){
      console.log("verificando envio de formulario");
      var emailField = document.getElementById('user_email');
      var emailErrorMessageElement = document.getElementById('email_error_message');

      console.log("verificando valor en campo de email:", emailField.value);

      if (! emailField.value) {
        submitEvent.preventDefault();

        if (emailErrorMessageElement == null) {
          emailErrorMessageElement = document.createElement('div');
          emailErrorMessageElement.id = 'email_error_message';
          emailErrorMessageElement.className = 'error_message';
          emailField.insertAdjacentElement('afterend',emailErrorMessageElement);
        }
        emailField.classList.add('error');
        emailErrorMessageElement.classList.remove('hide');
        emailErrorMessageElement.innerText = 'Inserta un correo para continuar';
      } else {
        if (emailErrorMessageElement != null) {
          // ya no hay error: lo ocultamos
          emailErrorMessageElement.classList.add('hide');
        }
        emailField.classList.remove('error');
      }

      var passwordField = document.getElementById('user_password');
      var passwordErrorMessageElement = document.getElementById('password_error_message');

      console.log("verificando valor en campo de clave:", passwordField.value);
      /* si no hay clave, desplegar mensaje como "Debes ingresar una contraseña" */


      if (! passwordField.value) {
        submitEvent.preventDefault();

        if (passwordErrorMessageElement == null) {
          passwordErrorMessageElement = document.createElement('div');
          passwordErrorMessageElement.id = 'password_error_message';
          passwordErrorMessageElement.className = 'error_message';
          passwordField.insertAdjacentElement('afterend',passwordErrorMessageElement);
        }
        passwordField.classList.add('error');
        passwordErrorMessageElement.classList.remove('hide');
        passwordErrorMessageElement.innerText = 'Debes ingresar una contraseña';
      } else {
        if (passwordErrorMessageElement != null) {
          // ya no hay error: lo ocultamos
          passwordErrorMessageElement.classList.add('hide');
        }
        passwordField.classList.remove('error');
      }


      submitEvent.stopPropagation();
    };

    form.addEventListener('submit',submitHandler);

  }

}


// llamaremos la funcion de inicio

if (document.readyState === "loading") {
  document.addEventListener("DOMContentLoaded", deviseLoginPageLoadedHandler);
} else {  // `DOMContentLoaded` already fired
  deviseLoginPageLoadedHandler();
}

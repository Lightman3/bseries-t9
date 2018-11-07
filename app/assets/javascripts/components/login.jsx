class Login extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
      showError: false,
      sending: false
    };

    this.handleChangeEmail = this.handleChangeEmail.bind(this);
    this.handleChangePass = this.handleChangePass.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.resetForm = this.resetForm.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    event.stopPropagation();

    if (!this.state.email || !this.state.password) {
      //no enviamos y mostramos error
      this.setState({showError: true});
    } else {
      this.setState({showError: false, sending: true});
    }
  }
  resetForm(event){
    this.setState({
      email: '',
      password: '',
      showError: false,
      sending: false
    });
    event.preventDefault();
  }

  handleChangeEmail(event){
    this.setState({email: event.target.value});
  }

  handleChangePass(event){
    this.setState({password: event.target.value});
  }

  render() {

    const email = this.state.email;
    const password = this.state.password;
    const showError = this.state.showError;
    const send = this.state.sending;
    let sendingAlert;
    let form;

    let emailErrorMessage;
    let passwordErrorMessage;


    if (send) {

      sendingAlert = (
          <div className="sending">
            Formulario enviado con email <strong>{email}</strong> y clave <strong>{password}</strong>
            <a href="#" onClick={this.resetForm} className="reset-btn">reiniciar</a>
          </div>
      );
    } else {

      if (showError && !email) {
        emailErrorMessage = <div className="error_message">Debes ingresar un correo</div>;
      }
      if (showError && !password) {
        passwordErrorMessage = <div className="error_message">Debes ingresar una clave</div>;
      }

      form = (
          <form onSubmit={this.handleSubmit}>

            <div className="field">
              <label htmlFor="user_email">Email</label>
              <input
                  type="text" name="user[email]" id="user_email"
                  value={email}
                  onChange={this.handleChangeEmail}
              />
              {emailErrorMessage}
            </div>


            <div className="field">
              <label htmlFor="user_password">Contraseña</label>
              <input
                  type="password" name="user[password]" id="user_password"
                  value={password}
                  onChange={this.handleChangePass}
              />
              {passwordErrorMessage}
            </div>

            <div className="actions">
              <input type="submit" value="Log in" />
            </div>
          </form>
      );
    }

    return (
      <div id="login_form">
        <h1>{this.props.title}</h1>

        {sendingAlert}
        {form}

        <div className="devise-links">
          <a href="/users/sign_up">Sign up</a>
          <a href="/users/password/new">Forgot your password?</a>
        </div>
      </div>
    );
  }
}
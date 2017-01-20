import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';

class SignInModal extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      username: "",
      password: "",
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();

    const user = Object.assign({}, this.state);
    this.props.login(user)
      .then(user => {
        this.setState({ username: "", password: "" });
        this.props.setModal(false);
        this.props.router.push('/');
      });
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  handleClick(e) {
    e.preventDefault();

    this.props.setModal(false);
  }

  render() {

    return(
      <div className="modal-background">
        <form className="modal-content" onSubmit={ this.handleSubmit } onClick={ e => e.stopPropagation() }>
          <h2 className="sign-in-header">Sign in</h2>
          <input type="text"
            value={this.state.username}
            onChange={this.update("username")}
            placeholder="Username"
            className="sign-in-username-box"/><br></br>

          <input type="password"
            value={this.state.password}
            onChange={this.update("password")}
            placeholder="Password"
            className="sign-in-password-box"/><br></br>

          <p className="sign-in-errors">{this.props.errors.base}</p>

          <input type="submit" value="Let's go" className="sign-in-button" />
          <p className="sign-in-text">Hint: Try 'password' for any other user.</p>
        </form>
      </div>
    );

  }
}

export default withRouter(SignInModal);

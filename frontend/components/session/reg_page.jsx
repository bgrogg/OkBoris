import React from 'react';
import InitialRegistrationContainer from './initial_reg_container';
import { withRouter } from 'react-router';
import SignInModalContainer from './sign_in_modal_container';

class RegPage extends React.Component {
  constructor(props) {
    super(props);

    this.handleClick = this.handleClick.bind(this);
    this.handleGuest = this.handleGuest.bind(this);
  }

  handleClick(e) {
    e.preventDefault();

    this.props.setModal(true);
  }

  handleGuest(e) {
    e.preventDefault();

    this.props.login({ username: "username", password: "password"})
      .then(user => {
        this.props.router.push('/');
      });
  }

  render() {
    return (
      <div>
        <div className="background group">
          <div className="reg-header group">
            <div className="signin-header">
              { "Already a member?" }
              <button className="signin-button" onClick={ this.handleClick } >
                Sign In
              </button>
              <button className="demo-button" onClick={ this.handleGuest } >
                Demo Login
              </button>
            </div>
            <h1 className="logo">OkBoris</h1>
          </div>
          <div className="reg-bottom">
            <div className="tag-line">
              Join the best free job hunting site in San Francisco
              <div className="smaller-caption">
                {"Lorem ipsum dolor sit amet, primis ultrices. At quis praesent."}
              </div>
            </div>
            <InitialRegistrationContainer />
          </div>
        </div>
        <div className="bottom-section group">
          <div className="image-container group">
            <div className="image-box">
              <img></img>
              <p>
                {"Employers: Find the perfect employee for your project!"}
              </p>
            </div>
            <div className="image-box">
              <img></img>
              <p>
                {"Employees: Find the employer of your dreams!"}
              </p>
            </div>
            <div className="image-box">
              <img></img>
              <p>
                {"Our matching algorithm is guaranteed to find you the perfect match!"}
              </p>
            </div>
          </div>
        </div>
        <footer className="footer group">
          <p className="footer-copy-styling">
            {"© OkBoris 2017"}
          </p>
          <p className="footer-disclosure-styling">
            {"Full Disclosure: Something funny here"}
          </p>
        </footer>
        <SignInModalContainer />
      </div>
    );
  }
}

export default withRouter(RegPage);

import React from 'react';
import InitialRegistrationContainer from './initial_reg_container';
import { withRouter } from 'react-router';
import SignInModalContainer from './sign_in_modal_container';
import SignInModal from './sign_in_modal';
import Modal from 'react-modal';
import ModalStyle from './modal_style';

class SplashPage extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      username: "",
      password: "",
      modalIsOpen: false
    };

    this.handleClick = this.handleClick.bind(this);
    this.handleGuest = this.handleGuest.bind(this);
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);

  }

  handleClick(e) {
    e.preventDefault();

    this.openModal(true);
  }

  openModal() {
    this.setState({modalIsOpen: true});
  }

  closeModal() {
    this.setState({modalIsOpen: false});
  }

  handleGuest(e) {
    e.preventDefault();

    this.props.login({ username: "datemike", password: "password"})
      .then(user => {
        this.props.router.push('/');
      });
  }

  render() {
    return (
      <div>
        <Modal
          isOpen={this.state.modalIsOpen}
          contentLabel="modal"
          onRequestClose={this.closeModal}
          style={ModalStyle}>
            <SignInModalContainer />
        </Modal>
        <div className="background group">
          <div className="splash-header group">
            <div className="signin-header">
              { "Have an account?" }
              <button className="signin-button" onClick={ this.handleClick } >
                Sign In
              </button>
              <button className="guest-button" onClick={ this.handleGuest } >
                Guest Login
              </button>
            </div>
            <h1 className="logo">OkDunderMifflin</h1>
          </div>
          <div className="splash-bottom">
            <div className="tag-line">
              Join the best free job dating site for employees of Dunder Mifflin.
            </div>
            <InitialRegistrationContainer />
            <div className="small-caption">
              {"You miss 100% of the shots you don't take. - Wayne Gretzky"}
              <div className="smallest-caption">{"- Michael Scott"}</div>
            </div>
          </div>
        </div>
        <div className="bottom-section group">
          <div className="image-container group">
            <div className="image-box">
              <img></img>
              <p>
                {"Find your next date to the Dundies!"}
              </p>
            </div>
            <div className="image-box">
              <img></img>
              <p>
                {"No one goes home until Michael finds a date."}
              </p>
            </div>
            <div className="image-box">
              <img></img>
              <p>
                {"May your dreams soar as high as your hats!"}
              </p>
            </div>
          </div>
        </div>
        <footer className="footer group">
          <p className="footer-copy-styling">
            {"© OkDunderMifflin 2017"}
          </p>
          <p className="footer-disclosure-styling">
            {"A Michael Scott Joint"}
          </p>
        </footer>
      </div>
    );
  }
}

export default withRouter(SplashPage);

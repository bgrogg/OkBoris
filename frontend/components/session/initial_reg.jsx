import React from 'react';
import { Link, withRouter } from 'react-router';
import PhaseOne from './phase_one';
import PhaseTwo from './phase_two';
import SignUpFormContainer from './sign_up_form_container';


class InitialRegistration extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      regStage: 0,
      email: "",
      location: "",
      looking_for: "",
      position: ""
    };

    this.update = this.update.bind(this);
    this.handleFirstStage = this.handleFirstStage.bind(this);
    this.handleSecondStage = this.handleSecondStage.bind(this);
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  handleFirstStage(e) {
    e.preventDefault();

    this.setState({
      position: this.state.position,
      regStage: 1
    });
  }

  handleSecondStage(e) {
    e.preventDefault();

    this.setState({
      email: this.state.email,
      location: this.state.location,
      looking_for: this.state.looking_for,
      regStage: 2,
    });
  }

  render() {

    let currentForm;

    if (this.state.regStage === 0) {
      currentForm = (
        <PhaseOne
          submit={ this.handleFirstStage }
          update={ this.update }
          position={ this.state.position } />
      );
    } else if (this.state.regStage === 1) {
      currentForm = (
        <PhaseTwo
          submit={ this.handleSecondStage }
          update={ this.update }
          email={ this.state.email }
          location={ this.state.location }
          looking_for={ this.state.looking_for } />
      );
    } else if (this.state.regStage === 2) {

      const regInfo = {
        position: this.state.position,
        email: this.state.email,
        location: this.state.location,
        looking_for: this.state.looking_for
      };

      currentForm = (
        <SignUpFormContainer regInfo={ regInfo } />
      );
    }

    return (
      <div className="form-container">
        {currentForm}
      </div>
    );
  }
}

export default withRouter(InitialRegistration);

import React from 'react';
import { Link, withRouter } from 'react-router';
import SignUpFormContainer from './sign_up_form_container';
import PhaseOne from './phase_one';
import PhaseTwo from './phase_two';


class InitialRegistration extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      regStage: 0,
      email: "",
      location: "mission",
      looking_for: "full-time",
      position: "recruiter"
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

    console.log(this.state);
    return (
      <div className="form-container">
        {currentForm}
      </div>
    );
  }
}

export default withRouter(InitialRegistration);

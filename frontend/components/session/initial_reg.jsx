import React from 'react';
import { Link, withRouter } from 'react-router';
import SignUpFormContainer from './sign_up_form_container';
import StageOne from './stage_one';
import StageTwo from './stage_two';


class InitialRegistration extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      regStage: 0,
      location: "",
      gender: "female",
      orientation: "straight",
      age: ""
    };

    this.handleFirstStage = this.handleFirstStage.bind(this);
    this.handleSecondStage = this.handleSecondStage.bind(this);
    this.update = this.update.bind(this);
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  handleFirstStage(e) {
    e.preventDefault();

    this.setState({
      orientation: this.state.orientation,
      gender: this.state.gender,
      regStage: 1
    });
  }

  handleSecondStage(e) {
    e.preventDefault();

    this.setState({
      location: this.state.location,
      age: this.state.age,
      regStage: 2,
    });
  }

  render() {

    let currentForm;
    if (this.state.regStage === 0) {
      currentForm = (
        <StageOne
          submit={ this.handleFirstStage }
          update={ this.update }
          gender={ this.state.gender }
          orientation={ this.state.orientation } />
      );
    } else if (this.state.regStage === 1) {
      currentForm = (
        <StageTwo
          submit={ this.handleSecondStage }
          update={ this.update }
          age={ this.state.age }
          location={ this.state.location }
          looking_for={ this.state.looking_for } />
      );
    } else if (this.state.regStage === 2) {

      const userInfo = {
        orientation: this.state.orientation,
        age: this.state.age,
        location: this.state.location,
        gender: this.state.gender
      };

      currentForm = (
        <SignUpFormContainer userInfo={ userInfo } />
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

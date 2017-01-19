import React from 'react';

class QuestionForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      choiceId: null,
      acceptableChoices: [],
      importance: 0,
      explanation: "",
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChoice = this.handleChoice.bind(this);
    this.questionStack = this.questionStack.bind(this);
    this.choiceedQuestions = this.choiceedQuestions.bind(this);
    this.handleAcceptable = this.handleAcceptable.bind(this);
    this.handleImportance = this.handleImportance.bind(this);
    this.handleExplanation = this.handleExplanation.bind(this);
    this.renderChoices = this.renderChoices.bind(this);
    this.renderAcceptables = this.renderAcceptables.bind(this);
    this.renderImportance = this.renderImportance.bind(this);
    this.renderExplanation = this.renderExplanation.bind(this);
    this.renderForm = this.renderForm.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();

    if (this.state.importance === 0) {
      this.setState({ importance: 10 });
    }

    const newResponse = {
      choice_id: this.state.choiceId,
      user_id: this.props.currentUser.id,
      acceptable_choices: this.state.acceptableChoices,
      importance: this.state.importance,
      explanation: this.state.explanation
    };


    this.props.createResponse(newResponse)
      .then(
        this.setState({
          choiceId: null,
          acceptableChoices: [],
          importance: 0,
          explanation: ""
        })
      );
  }

  handleChoice(e) {
    this.setState({ choiceId: e.currentTarget.value });
  }

  handleAcceptable(e) {
    const newArray = this.state.acceptableChoices.slice();

    if (newArray.includes(e.currentTarget.value)) {
      const acc_index = newArray.indexOf(e.currentTarget.value);
      newArray.splice(acc_index, 1);
      this.setState({ acceptable_choices: newArray });
    } else {
      newArray.push(e.currentTarget.value);
      this.setState({ acceptableChoices: newArray });
    }
  }

  handleImportance(e) {
    this.setState({ importance: e.currentTarget.value });
  }

  handleExplanation(e) {
    this.setState({ explanation: e.currentTarget.value });
  }

  questionStack() {
    if (this.props.questions) {
      const unchoiceed = Object.keys(this.props.questions).map((question) => {
        if (this.choiceedQuestions().includes(parseInt(question))) {
          return;
        } else {
          return this.props.questions[question];
        }
      }).filter((val) => val !== undefined);

      return unchoiceed;
    } else {
      return {};
    }
  }

  choiceedQuestions() {
    return (
      Object.keys(this.props.responses).map((response) => {
        return this.props.responses[response].question.id;
      })
    );
  }

  renderChoices() {
    const choices = this.questionStack()[0].choices.map((choice) => {
      return ([
        <label
          htmlFor={"radio-choice-" + choice.id}
          key={choice.id}
          className="radio-choice" >
          <input
            id={"radio-choice-" + choice.id}
            value={ choice.id }
            name="my-choice"
            type="radio"
            onClick={ this.handleChoice }
            />
          {choice.body}
        </label>
      ]);
    });

    return (
      <div className="user-choices" >
        {choices}
      </div>
    );
  }

  renderAcceptables() {
    const acceptables = this.questionStack()[0].choices.map((choice) => {
      return (
        <label className="acceptables-choice" key={ choice.id }>
          <input type="checkbox"
            value={ choice.body }
            onClick={ this.handleAcceptable }
            />
          {choice.body}
        </label>
      );
    });

    return (
      <div className="user-acceptables">
        <div className="acceptables-title">
          <p>Choice(s) you won't accept</p>
        </div>
        {acceptables}
      </div>
    );
  }

  renderImportance() {
    return(
      <div className="user-importance">
        <div className="importance-title">
          <p>Importance</p>
        </div>
        <div className="importance-radios group">
          <label className="importance-choice" htmlFor="importance-choice-1" >
              <input
                id="importance-choice-1"
                name="importance-choice"
                value={ 1 }
                type="radio"
                checked={ this.state.importance == 1 }
                onClick={ this.handleImportance }
                />
              <div className="importance-bar"></div>
              A little
          </label>
          <label className="importance-choice" htmlFor="importance-choice-2" >
              <input
                id="importance-choice-2"
                name="importance-choice"
                value={ 10 }
                type="radio"
                checked={ this.state.importance == 10 }
                onClick={ this.handleImportance }
                />
              <div className="importance-bar"></div>
              Somewhat
          </label>
          <label className="importance-choice" htmlFor="importance-choice-3" >
              <input
                id="importance-choice-3"
                name="importance-choice"
                value={ 50 }
                type="radio"
                checked={ this.state.importance == 50 }
                onClick={ this.handleImportance }
                />
              <div className="importance-bar"></div>
              Very
          </label>
        </div>
      </div>
    );
  }

  renderExplanation() {
    return (
      <div className="user-explanation">
        <div className="explanation-input-container">
          <textarea
            className="explanation-textarea"
            value={ this.state.explanation }
            onChange={ this.handleExplanation }
            placeholder="Explain your choice (optional)"
            />
        </div>
      </div>
    );
  }

  renderForm() {
    if (this.questionStack().length > 0) {
      return (
        <div className="question-form">
          <div className="question-title">
            <p>{this.questionStack()[0].title}</p>
          </div>
          <div className="choices-container">
            <form className="choices-form">
              {this.renderChoices()}
              {this.renderAcceptables()}
              {this.renderImportance()}
              {this.renderExplanation()}
              <input type="submit" value="Answer" className="answer-button" onClick={ this.handleSubmit }/>
            </form>
          </div>
        </div>
      );
    } else {
      return <div></div>;
    }
  }

  render() {
    if (this.props.questions) {
      return (
        <div className="new-question">
          {this.renderForm()}
        </div>
      );
    } else {
      return <div></div>;
    }
  }

}

export default QuestionForm;

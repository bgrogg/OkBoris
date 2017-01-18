import React from 'react';

class EssayDetail extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      previousInput: "",
      userInput: "",
      edit: false
    };

    this.handleClick = this.handleClick.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.handleUpdate = this.handleUpdate.bind(this);
    this.handleCancel = this.handleCancel.bind(this);

    this.ownDetail = this.ownDetail.bind(this);
    this.normalDetail = this.normalDetail.bind(this);

    this.editText = this.editText.bind(this);
    this.normalText = this.normalText.bind(this);
    this.currentText = this.currentText.bind(this);
  }

  componentDidMount() {
    this.setState({ userInput: this.props.userInput });
  }

  componentWillReceiveProps(nextProps) {
    this.setState({ userInput: nextProps.userInput });
  }

  handleClick(e) {
    e.preventDefault();

    this.setState({ previousInput: this.state.userInput, edit: true});
  }

  handleUpdate(e) {
    e.preventDefault();

    const updatedDetail = { [this.props.detailName]: this.state.userInput };
    const user = Object.assign({}, this.props.profile, updatedDetail);
    this.props.updateProfile(user)
    .then(() => {
      this.setState({ edit: false });
    });
  }

  handleChange(e) {
    this.setState({userInput: e.currentTarget.value});
  }


  handleCancel(e) {
    e.preventDefault();
    this.setState({ userInput: this.state.previousInput, previousInput: "", edit: false });
  }

  normalDetail() {
    return (
      <div>
        <div className="essay-normal group">
          <span className="essay-title">{this.props.detailTitle}</span>
        </div>
      </div>
    );
  }

  ownDetail() {
    return(
      <div>
        <button className="essay-button" onClick={ this.handleClick }>
          <span className="essay-title">{this.props.detailTitle}</span>
          <span className="essay-edit-pencil"></span>
        </button>
      </div>
    );
  }

  editText() {
    return (
      <form className="edit-text">

        <textarea
          className="edit-text-inside"
          type="text"
          placeholder={ this.props.placeHolder }
          onChange={ this.handleChange }
          value={ this.state.userInput } />

        <input type="submit" value="Save" className="save-button" onClick={ this.handleUpdate }/>
        <input type="submit" value="Cancel" className="cancel-button" onClick={ this.handleCancel }/>
      </form>
    );
  }

  normalText() {
    let placeHolderText = this.state.userInput;
    let placeHolderBool = false;

    if (!this.state.userInput) {
      placeHolderText = this.props.placeHolder;
      placeHolderBool = true;
    } else if (this.props.currentUser.id === this.props.profile.id && this.state.userInput.length === 0) {
      placeHolderText = this.props.placeHolder;
      placeHolderBool = true;
    }

    if (placeHolderBool) {
      return (
        <div className="placeholder-text">{ placeHolderText }</div>
      );
    } else {
      return (
        <div className="essay-text">{ this.state.userInput }</div>
      );
    }
  }

  currentText() {
    if (this.state.edit) {
      return this.editText();
    } else {
      return this.normalText();
    }
  }

  render() {
    if (!this.props.currentUser) {
      return null;
    } else if (this.props.currentUser.id === this.props.profile.id) {
      return (
        <div className="essay">
          {this.ownDetail()}
          {this.currentText()}
        </div>
      );
    } else {
      return (
        <div className="essay">
          {this.normalDetail()}
          {this.normalText()}
        </div>
      );
    }
  }
}

export default EssayDetail;

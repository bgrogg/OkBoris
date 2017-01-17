
import React from 'react';
import { Link, withRouter } from 'react-router';

class Profile extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      imageFile: null,
      imageUrl: null
    };

    this.profileActions = this.profileActions.bind(this);
    this.handleImage = this.handleImage.bind(this);
    this.profPic = this.profPic.bind(this);
  }


  componentDidMount() {
    this.props.fetchCurrentProfile(this.props.params.id)
      .then(() => {
        this.props.fetchResponses(this.props.profile.id);
        this.setState({ imageUrl: this.props.profile.image_file_name });
      });
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.id !== nextProps.params.id) {
      this.props.fetchCurrentProfile(nextProps.params.id)
        .then(() => this.setState({ imageUrl: this.props.profile.image_file_name }));
    }
  }

  handleImage(e) {
    e.preventDefault();

    const user = this.props.profile;
    const file = e.currentTarget.files[0];
    const fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({ imageFile: file, imageUrl: fileReader.result });
      const formData = new FormData();
      formData.append("user[image]", file);
      this.props.updateImage(formData, user);
    };

    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  profPic() {
    if (this.props.currentUser.id === this.props.profile.id) {
      return (
        <div>
          <img className="prof-pic" src={this.state.imageUrl} ></img>
          <label htmlFor="update-input" className="update-image-block">Update</label>
          <input id="update-input" type="file" onChange={ this.handleImage } />
        </div>
      );
    } else {
      return (
        <img className="prof-pic non-user" src={this.state.imageUrl} ></img>
      );
    }
  }

  render() {
    if (!this.props.profile || !this.props.currentUser) {
      return <div></div>;
    } else {
      return(
        <main className="profile-main">
          <div className="profile-header">
            <div className="inner-header group">
              <div className="user-info group">
                <div className="user-thumb">
                  {this.profPic()}
                </div>
                <div className="user-basics group">
                  <h2 className="user-name">
                    {this.props.profile.username}
                  </h2>
                  <h3 className="user-details">
                    {this.props.profile.looking_for} • {this.props.profile.location}
                  </h3>
                </div>
              </div>
            </div>
          </div>
        </main>
      );
    }
  }
}

export default withRouter(Profile);

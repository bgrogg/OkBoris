import React from 'react';
import { Link, withRouter } from 'react-router';
import EssayContainer from './essay_container';
import TabsContainer from '../tabs/tabs_container';

class Profile extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      imageUrl: null,
      imageFile: null
    };

    this.handleImage = this.handleImage.bind(this);
    this.profilePic = this.profilePic.bind(this);
  }


  componentDidMount() {
    this.props.fetchCurrentProfile(this.props.params.userId)
      .then(() => {
        this.setState({ imageUrl: this.props.profile.image_file_name });
      });
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.userId !== nextProps.params.userId) {
      this.props.fetchCurrentProfile(nextProps.params.userId)
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

  profilePic() {
    if (this.props.currentUser.id === this.props.profile.id) {
      return (
        <div>
          <img className="profile-pic" src={this.state.imageUrl} ></img>
          <label htmlFor="update-input" className="update-image-block">Update</label>
          <input id="update-input" type="file" onChange={ this.handleImage } />
        </div>
      );
    } else {
      return (
        <img className="profile-pic non-user" src={this.state.imageUrl} ></img>
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
                  {this.profilePic()}
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
          <TabsContainer
            tabs={ [ <EssayContainer /> ] }
            tabNames={ ["About", "Questions"] }
            styling="profile-tabs"
            />
        </main>
      );
    }
  }
}

export default withRouter(Profile);

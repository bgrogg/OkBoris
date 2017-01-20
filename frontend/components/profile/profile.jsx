import React from 'react';
import { Link, withRouter } from 'react-router';
import EssayContainer from './essay_container';
import TabsContainer from '../tabs/tabs_container';
import QuestionsContainer from '../question/questions_container';
import merge from 'lodash/merge';

class Profile extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      imageUrl: null
    };

    this.cloudinate = this.cloudinate.bind(this);
    this.profilePic = this.profilePic.bind(this);
  }


  componentDidMount() {
    this.props.fetchCurrentProfile(this.props.params.userId)
      .then(() => {
        this.props.fetchResponses(this.props.profile.id);
        this.setState({ imageUrl: this.props.profile.image_file_name });
      });
    this.props.fetchQuestions();
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.userId !== nextProps.params.userId) {
      this.props.fetchCurrentProfile(nextProps.params.userId)
        .then(() => this.setState({ imageUrl: this.props.profile.image_file_name }));
    }
  }

  cloudinate(e) {
    e.preventDefault();

    cloudinary.openUploadWidget(
      {
        cloud_name: 'dnpcubtwv',
        upload_preset: 'fycjpmnl',
        theme: 'minimal',
      },
      (errors, imageInfo) => {
        if (errors === null) {
          let cloud_url = imageInfo[0].url;
          this.setState({
            imageUrl: cloud_url
          });
          const user = this.props.profile;
          const updatedUser = merge(user, {image_file_name: cloud_url});
          this.props.updateProfile(updatedUser);
        }
      }
    );
  }

  profilePic() {
    if (this.props.currentUser.id === this.props.profile.id) {
      return (
        <div>
          <img className="profile-pic" src={this.state.imageUrl} ></img>
          <button className="update-image-block" onClick={this.cloudinate}>Update</button>
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
                    {this.props.profile.age} • {this.props.profile.location} • {this.props.profile.orientation} • {this.props.profile.gender}
                  </h3>
                </div>
              </div>
            </div>
          </div>
          <TabsContainer
            tabs={ [ <EssayContainer />, <QuestionsContainer questions={this.props.questions }/> ] }
            tabNames={ ["About", "Questions"] }
            styling="profile-tabs"
            />
        </main>
      );
    }
  }
}

export default withRouter(Profile);

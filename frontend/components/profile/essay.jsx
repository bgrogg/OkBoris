import React from 'react';
import EssayDetail from './essay_detail';

class Essay extends React.Component {
    constructor(props) {
      super(props);
    }

    render() {
      if (this.props.profile) {

        return(
          <div className="profile-content">
            <EssayDetail
              detailName="summary"
              detailTitle="About me"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.summary }
              profile={ this.props.profile }
              placeHolder="Tell us a little about yourself."
              updateProfile={ this.props.updateProfile }
              />
            <EssayDetail
              detailName="languages"
              detailTitle="Preferred Languages"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.languages }
              profile={ this.props.profile }
              placeHolder="Which languages do you prefer to work in?"
              updateProfile={ this.props.updateProfile }
              />
            <EssayDetail
              detailName="frameworks"
              detailTitle="Preferred frameworks or environments"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.frameworks}
              profile={ this.props.profile }
              placeHolder="What are your preferred frameworks to work in?"
              updateProfile={ this.props.updateProfile }
              />
          </div>
        );
      } else {
        return <div></div>;
      }
    }
}

export default Essay;

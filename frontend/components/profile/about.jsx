import React from 'react';
import AboutAnswer from './about_answer';

class About extends React.Component {
    constructor(props) {
      super(props);
    }

    render() {
      if (this.props.profile) {

        return(
          <div className="profile-content">
            <AboutAnswer
              dataName="summary"
              answerTitle="About me"
              answerText={ this.props.profile.summary }
              currentUser={ this.props.currentUser }
              profile={ this.props.profile }
              updateProfile={ this.props.updateProfile }
              placeHolder="Tell us a little about yourself."
              />
            <AboutAnswer
              dataName="languages"
              answerTitle="Preferred Languages"
              answerText={ this.props.profile.languages }
              currentUser={ this.props.currentUser }
              profile={ this.props.profile }
              updateProfile={ this.props.updateProfile }
              placeHolder="Which languages do you prefer to work in?"
              />
            <AboutAnswer
              dataName="frameworks"
              answerTitle="Preferred frameworks or environments"
              answerText={ this.props.profile.frameworks}
              currentUser={ this.props.currentUser }
              profile={ this.props.profile }
              updateProfile={ this.props.updateProfile }
              placeHolder="What are your preferred frameworks to work in?"
              />
          </div>
        );
      } else {
        return <div></div>;
      }
    }
}

export default About;

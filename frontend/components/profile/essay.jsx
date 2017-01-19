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
              detailTitle="My self-summary"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.summary }
              profile={ this.props.profile }
              placeHolder="Tell us a little about yourself."
              updateProfile={ this.props.updateProfile }
              />
            <EssayDetail
              detailName="life"
              detailTitle="What I'm doing with my life"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.life }
              profile={ this.props.profile }
              placeHolder="Don’t overthink this one; tell us what you’re doing day-to-day."
              updateProfile={ this.props.updateProfile }
              />
            <EssayDetail
              detailName="skills"
              detailTitle="I'm really good at"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.skills}
              profile={ this.props.profile }
              placeHolder="Go on, brag a little (or a lot). We won’t judge."
              updateProfile={ this.props.updateProfile }
              />
            <EssayDetail
              detailName="favorites"
              detailTitle="Favorite books, movies, shows, music, and food"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.favorites}
              profile={ this.props.profile }
              placeHolder="Help your potential matches find common interests."
              updateProfile={ this.props.updateProfile }
              />
            <EssayDetail
              detailName="thinking"
              detailTitle="I spend a lot of time thinking about"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.thinking}
              profile={ this.props.profile }
              placeHolder="Global warming, lunch, or your next vacation… it’s all fair game."
              updateProfile={ this.props.updateProfile }
              />
            <EssayDetail
              detailName="friday"
              detailTitle="On a typical Friday night I am"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.friday}
              profile={ this.props.profile }
              placeHolder="Netflix and takeout, or getting your party on — how do you let loose?"
              updateProfile={ this.props.updateProfile }
              />
            <EssayDetail
              detailName="msg_if"
              detailTitle="You should message me if"
              currentUser={ this.props.currentUser }
              userInput={ this.props.profile.msg_if}
              profile={ this.props.profile }
              placeHolder="Offer a few tips to help matches win you over."
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

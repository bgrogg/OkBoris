import React, { Component } from 'react';
import { withRouter } from 'react-router';
import UserIndexItem from './user_index_item';

class UserIndex extends Component {
  constructor(props) {
    super(props);

    this.display = this.display.bind(this);
    this.sortedUsers = this.sortedUsers.bind(this);
    this.userIndexItems = this.userIndexItems.bind(this);
  }


  componentDidMount() {
    this.props.fetchUsers();
  }

  positionSeeking(user) {
    if (this.props.currentUser.position === "jobseeker") {
      return this.props.users[user.user].position === "recruiter";
    } else {
      return this.props.users[user.user].position === "jobseeker";
    }
  }

  preferences() {
    let seeking;

    if (this.props.currentUser.position === "recruiter") {
      seeking = "jobseeker";
    } else {
      seeking = "recruiter";
    }

    return (
      <div className="preferences-bar">
        <p className="browse-large">Searching for {seeking}s in your area.</p>
      </div>
    );

  }

  sortedUsers() {
    return Object.keys(this.props.users).map(user => {
      return { user };
    }).filter(user =>
      this.positionSeeking(user)
    );
  }

  userIndexItems() {
    const matches = this.sortedUsers().map(user => {
      return (
        <li key={ user.user }>
          <UserIndexItem
            currentUser={ this.props.currentUser }
            user={ this.props.users[user.user] } />
        </li>
      );
    });
    return matches;
  }

  display() {
    return this.userIndexItems();
  }

  render() {
    if (!this.props.currentUser) {
      return null;
    }
    
    const { children } = this.props;
    return (
      <div className="browse-main">
        {this.preferences()}
        <div className="user-index-container">
          <ul className="user-index-group">
            {this.display()}
          </ul>
          {children}
        </div>
      </div>
    );
  }
}

export default withRouter(UserIndex);

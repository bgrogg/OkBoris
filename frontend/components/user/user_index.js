import React, { Component } from 'react';
import { withRouter } from 'react-router';
import UserIndexItem from './user_index_item';

class UserIndex extends Component {
  constructor(props) {
    super(props);

    this.state = {
      distance: 3000
    };

    this.display = this.display.bind(this);
    this.sortedUsers = this.sortedUsers.bind(this);
    this.userIndexItems = this.userIndexItems.bind(this);
    this.positionSeeking = this.positionSeeking.bind(this);
    this.preferences = this.preferences.bind(this);
    this.distanceOptions = this.distanceOptions.bind(this);
    this.handleDistance = this.handleDistance.bind(this);
  }


  componentDidMount() {
    this.props.fetchUsers(this.state.distance);
    this.setState({ distance: 3000 });
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
        <p className="browse-large">Searching for "{seeking}s" within {this.distanceOptions()} miles from you.</p>
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

  handleDistance(e) {
    this.props.fetchUsers(parseInt(e.currentTarget.value));
    this.setState({ distance: parseInt(e.currentTarget.value) });
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

  distanceOptions() {
    return (
      <select className="sort-dropdown" onChange={ this.handleDistance }>
        <option value="3000">500+</option>
        <option value="2">2</option>
        <option value="5">5</option>
        <option value="10">10</option>
        <option value="50">50</option>
        <option value="100">100</option>
      </select>
    );
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

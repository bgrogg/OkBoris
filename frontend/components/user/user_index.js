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

  sortedUsers() {
    return Object.keys(this.props.users).map(user => {
      return { user };
    });
  }

  userIndexItems() {
    const matches = this.sortedUsers().map(user => {
      return (
        <li className="dishwasher" key={ user.user }>
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
    const { users, children } = this.props;
    return (
      <div className="user-index-container">
        <ul className="user-index-group">
          {this.display()}
        </ul>
        {children}
      </div>
    );
  }
}

export default withRouter(UserIndex);

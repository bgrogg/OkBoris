import React, { Component } from 'react';

class UserIndex extends Component {
  componentDidMount() {
    this.props.fetchUsers();
  }

  render() {
    const { users, children } = this.props;
    return (
      <div className="browse_matches">
        <ul>
          TESTING
          {users.map(user => <UserIndexItem key={user.id} user={user} />)}
        </ul>
        {children}
      </div>
    );
  }
}

export default UserIndex;

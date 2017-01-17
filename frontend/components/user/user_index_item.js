import React, { Component } from 'react';
import { withRouter } from 'react-router';

class UserIndexItem extends Component {
  constructor(props) {
    super(props);

  this.handleProfile = this.handleProfile.bind(this);
  }

  handleProfile(e) {
    e.preventDefault();

    this.props.router.push('/users/${this.props.user.id}');
  }

  render() {
    return (
      <div className="match-item-wrapper">
        <div className="match-item">
          <div className="match-text">
            <p className="username-text">{this.props.user.username}</p>
            <p className="user-browse-info">{this.props.user.location}</p>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(UserIndexItem);

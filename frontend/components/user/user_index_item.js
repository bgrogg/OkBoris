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
      <div>
        <div>
          <div>
            <p>{this.props.user.username}</p>
            <p>{this.props.user.location}</p>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(UserIndexItem);

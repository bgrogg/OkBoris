import React, { Component } from 'react';
import { withRouter } from 'react-router';

class UserIndexItem extends Component {
  constructor(props) {
    super(props);

  this.handleProfile = this.handleProfile.bind(this);
  }

  handleProfile(e) {
    e.preventDefault();

    this.props.router.push(`/profile/${this.props.user.id}`);
  }

  render() {
    return (
      <div className="browse-wrapper">
        <div className="browse-item">
          <img src={this.props.user.image_file_name} className="browse-pic" onClick={ this.handleProfile }></img>
          <div className="browse-text">
            <p className="username-text">{this.props.user.username}</p>
            <p className="user-browse-info">{this.props.user.location}</p>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(UserIndexItem);

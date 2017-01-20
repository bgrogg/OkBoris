import React from 'react';
import { withRouter } from 'react-router';
import { requestLogout } from '../../actions/session_actions';

class NavBar extends React.Component {
  constructor(props) {
    super(props);

    this.handleLogOut = this.handleLogOut.bind(this);
  }

  handleLogOut(e) {
    e.preventDefault();

    this.props.logout().then(() => this.props.router.push("/signup"));
  }

  render() {
    if (!this.props.currentUser) {
      return <div></div>;
    } else {
      return(
        <nav className="nav-bar">
          <div>
            <h1 className="nav-logo">
              <a href="/">okdm</a>
            </h1>
            <ul className="nav-left group">
              <li className="nav-left-link">
                <a href="/">Browse Matches</a>
              </li>
            </ul>
          </div>
          <div>
            <ul className="nav-right group">
              <li className="nav-right-link">
                <a href={"#/profile/"+this.props.currentUser.id}>
                  <img src={this.props.currentUser.image_file_name} className="nav-profile-pic"/>
                </a>
              </li>
              <li className="nav-right-link">
                <button onClick={this.handleLogOut}>Log Out</button>
              </li>
            </ul>
          </div>
        </nav>
      );
    }
  }
}

export default withRouter(NavBar);

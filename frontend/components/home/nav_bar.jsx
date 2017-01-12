import React from 'react';
import { withRouter } from 'react-router';

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
        <nav className="site-nav group">
          <div>
            <h1 className="nav-logo">
              <a href="/">okb</a>
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
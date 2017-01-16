import React from 'react';
import NavBarContainer from './home/nav_bar_container';
import { connect } from 'react-redux';

const App = ({children}) => {

  return (
    <div>
      <NavBarContainer />
      { children }
    </div>
  );
};

const mapStateToProps = state => ({
});

export default connect(
  mapStateToProps
)(App);

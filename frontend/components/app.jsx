import React from 'react';
import SignInModalContainer from './session/sign_in_modal_container';
import NavBarContainer from './home/nav_bar_container';
import { connect } from 'react-redux';

const App = ({children, modal}) => {
  const modalEl = modal ? <SignInModalContainer /> : null;

  return (
    <div>
      Test
      <NavBarContainer />
      { children }
      { modalEl }
    </div>
  );
};

const mapStateToProps = state => ({
  modal: state.modal,
});

export default connect(
  mapStateToProps
)(App);

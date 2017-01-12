import React from 'react';
import SignInModalContainer from './signup/sign_in_modal_container';
import NavBarContainer from './home/nav_bar_container';
import { connect } from 'react-redux';

const App = ({children, modal}) => {
  const modalEl = modal ? <SignInModalContainer /> : null;

  return (
    <div>
      <NavBarContainer />
      { children }
      { modalEl }
    </div>
  );
};

export default App;

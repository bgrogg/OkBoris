import React from 'react';
import { connect } from 'react-redux';
import SplashPage from './splash_page';
import { receiveModal } from '../../actions/modal_actions';
import { requestLogin } from '../../actions/session_actions';

const mapDispatchToProps = dispatch => ({
  setModal: modal => dispatch(receiveModal(modal)),
  login: user => dispatch(requestLogin(user)),
});

export default connect(
  null,
  mapDispatchToProps
)(SplashPage);

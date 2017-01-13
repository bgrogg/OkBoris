import React from 'react';
import { connect } from 'react-redux';
import SignInModal from './sign_in_modal';
import { requestLogin } from '../../actions/session_actions';
import { receiveModal } from '../../actions/modal_actions';

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.session.errors,
  modal: state.modal,
});

const mapDispatchToProps = (dispatch) => ({
  login: user => dispatch(requestLogin(user)),
  setModal: modal => dispatch(receiveModal(modal)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SignInModal);

import React from 'react';
import { connect } from 'react-redux';
import SignUpForm from './sign_up_form';
import { requestSignup } from '../../actions/session_actions';

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.session.errors,
});

const mapDispatchToProps = dispatch => ({
  signup: user => dispatch(requestSignup(user)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SignUpForm);

import { signup, login, logout } from '../util/session_api_util';

export const LOGIN = "LOGIN";
export const LOGOUT = "LOGOUT";
export const SIGNUP = "SIGNUP";
export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const RECEIVE_LOGOUT_SUCCESS = "RECEIVE_LOGOUT_SUCCESS";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const requestSignup = user => dispatch => {
  return signup(user).then(
    currentUser => dispatch(receiveCurrentUser(currentUser))
  ).fail(
    error => dispatch(receiveErrors(error.responseJSON))
  );
};

export const requestLogin = user => dispatch => {
  return login(user).then(
    currentUser => dispatch(receiveCurrentUser(currentUser))
  ).fail(
    error => dispatch(receiveErrors(error.responseJSON))
  );
};

export const requestLogout = () => dispatch => {
  return logout().then(
    () => dispatch(receiveCurrentUser(null))
  ).fail(
    error => dispatch(receiveErrors(error.responseJSON))
  );
};

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveLogoutSuccess = () => ({
  type: RECEIVE_LOGOUT_SUCCESS
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

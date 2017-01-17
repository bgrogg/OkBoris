import { RECEIVE_USERS, RECEIVE_USER } from '../actions/user_actions';
import { merge } from 'lodash';

const UserReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_USERS:
      return merge({}, action.users);
    case RECEIVE_USER:
      const user = {[action.user.id]: action.user};
      const mergedUser = merge({}, state, user);
      return mergedUser;
    default:
      return state;
  }
};

export default UserReducer;

import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import ModalReducer from './modal_reducer';
import UserReducer from './user_reducer';
import ProfileReducer from './profile_reducer';
import QuestionReducer from './question_reducer';
import ResponseReducer from './response_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  modal: ModalReducer,
  users: UserReducer,
  currentProfile: ProfileReducer,
  questions: QuestionReducer,
  responses: ResponseReducer
});

export default RootReducer;

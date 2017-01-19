import { connect } from 'react-redux';
import UserIndex from './user_index';
import { selectAllUsers } from '../../reducers/selectors';
import { fetchUsers } from '../../actions/user_actions';
import { fetchQuestions } from '../../actions/question_actions';

const mapStateToProps = state => ({
  users: selectAllUsers(state),
  currentUser: state.session.currentUser,
  questions: state.questions.questions
});

const mapDispatchToProps = dispatch => ({
  fetchUsers: (distance) => dispatch(fetchUsers(distance)),
  fetchQuestions: () => dispatch(fetchQuestions())
});

export default connect (
  mapStateToProps,
  mapDispatchToProps
)(UserIndex);

import { connect } from 'react-redux';
import { fetchCurrentProfile, updateImage } from '../../actions/profile_actions';
import { logout } from '../../actions/session_actions';
import Profile from './profile';
import { fetchQuestions } from '../../actions/question_actions';
import { fetchResponses } from '../../actions/response_actions';

const mapStateToProps = state => ({
  profile: state.currentProfile.currentProfile,
  currentUser: state.session.currentUser,
  questions: state.questions.questions,
  responses: state.responses.responses
});

const mapDispatchToProps = dispatch => ({
  fetchCurrentProfile: user_id => dispatch(fetchCurrentProfile(user_id)),
  updateImage: (formData, user) => dispatch(updateImage(formData, user)),
  logout: () => dispatch(logout()),
  fetchQuestions: () => dispatch(fetchQuestions()),
  fetchResponses: (user_id) => dispatch(fetchResponses(user_id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Profile);

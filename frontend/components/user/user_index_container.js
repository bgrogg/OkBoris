import { connect } from 'react-redux';
import UserIndex from './user_index';
import { selectAllUsers } from '../../reducers/selectors';
import { fetchUsers } from '../../actions/user_actions';

const mapStateToProps = state => ({
  users: selectAllUsers(state)
});

const mapDispatchToProps = dispatch => ({
  fetchUsers: () => dispatch(fetchUsers())
});

export default connect (
  mapStateToProps,
  mapDispatchToProps
)(UserIndex);

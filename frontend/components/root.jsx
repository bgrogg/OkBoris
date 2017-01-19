import React from 'react';
import { Provider } from 'react-redux';

// react router
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// react components
import App from './app';
import InitialRegistration from './session/initial_reg';
import SplashPageContainer from './session/splash_page_container';
import UserIndexContainer from './user/user_index_container';
import ProfileContainer from './profile/profile_container';

const Root = ({ store }) => {

  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (!currentUser) {
      replace('/signup');
    }
  };

  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path="/" component={App}>
          <IndexRoute component={ UserIndexContainer } onEnter={ _ensureLoggedIn }/>
          <Route path="/profile/:userId" component={ ProfileContainer } onEnter={ _ensureLoggedIn } />
          <Route path='/signup' component={ SplashPageContainer } onEnter={ _redirectIfLoggedIn } />
      </Route>
      </Router>
    </Provider>
  );
};

export default Root;

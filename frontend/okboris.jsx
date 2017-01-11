import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store.js';

document.addEventListener('DOMContentLoaded', () => {
    window.store = configureStore();
    const root = document.getElementById('root');
    ReactDOM.render(<h1>Welcome to OkBoris!</h1>, root);
});

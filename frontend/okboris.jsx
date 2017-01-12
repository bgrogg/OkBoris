import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store.js';
import Root from './components/root';
import Modal from 'react-modal';


document.addEventListener('DOMContentLoaded', () => {
    Modal.setAppElement(document.getElementById('root'));
    const store = configureStore();
    window.store = store;
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store}/>, root);
});

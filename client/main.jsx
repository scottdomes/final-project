require('./assets/app.css');

var React = require('react');
var ReactDOM = require('react-dom');
var routes = require('./config/routes.jsx');

ReactDOM.render(routes, document.getElementById('app'));
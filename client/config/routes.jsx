var React = require('react');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;
var hashHistory = ReactRouter.hashHistory;
var HelloWorld = require('../components/HelloWorld.jsx');

var routes = (
  <Router history={hashHistory}>
    <Route path='/' component={HelloWorld} />
  </Router> 
);

module.exports = routes;
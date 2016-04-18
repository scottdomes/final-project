var React = require('react');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;
var hashHistory = ReactRouter.hashHistory;
var LandingContainer = require('../containers/LandingContainer.jsx');

var routes = (
  <Router history={hashHistory}>
    <Route path='/' component={LandingContainer} />
  </Router> 
);

module.exports = routes;
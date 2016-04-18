var React = require('react');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;
var hashHistory = ReactRouter.hashHistory;
var LandingHeader = require('../components/LandingHeader.jsx');

var routes = (
  <Router history={hashHistory}>
    <Route path='/' component={LandingHeader} />
  </Router> 
);

module.exports = routes;
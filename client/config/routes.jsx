var React = require('react');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;
var IndexRoute = ReactRouter.IndexRoute;
var hashHistory = ReactRouter.hashHistory;
var Main = require('../components/Main.jsx');
var LandingContainer = require('../containers/LandingContainer.jsx');
var FriendsContainer = require('../containers/FriendsContainer.jsx');
var EventConfigContainer = require('../containers/EventConfigContainer.jsx');

var routes = (
  <Router history={hashHistory}>
    <Route path='/' component={Main}>
      <IndexRoute component={LandingContainer}/>
      <Route path='friends' component={FriendsContainer}/>
      <Route path='eventconfig' component={EventConfigContainer}/>
    </Route>
  </Router> 
);

module.exports = routes;
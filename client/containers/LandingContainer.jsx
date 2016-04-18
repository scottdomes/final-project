var React = require('react');
var LandingHeader = require('../components/LandingHeader.jsx');
var LandingForm = require('../components/LandingForm.jsx');


var LandingContainer = React.createClass({
  render: function () {
    return (
      <div>
        <LandingHeader />
        <LandingForm />
      </div>
    )
  }
});

module.exports = LandingContainer;
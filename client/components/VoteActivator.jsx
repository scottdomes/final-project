var React = require('react');
var VoteActivatorButton = require('../components/VoteActivatorButton.jsx');

var VoteActivator = React.createClass({
  render: function () {
    return (
      <div>
        <div id="vote-activator-heading" className="row">
          <div className="large-12 large columns text-center">
            <h3>Allow voting on:</h3>
          </div>
        </div>

        <div id="vote-activator" className="row">
          <div className="large-6 large columns text-center">
            <VoteActivatorButton label='Date' />
          </div>

          <div className="large-6 large columns text-center">
            <VoteActivatorButton label='Location' />
          </div> 
        </div> 
      </div>
    )
  }
});

module.exports = VoteActivator;
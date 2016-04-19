var React = require('react');

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
            <button className="button vote-activator active">Date</button>
          </div>

          <div className="large-6 large columns text-center">
            <button className="button vote-activator">Location</button>
          </div> 
        </div> 
      </div>
    )
  }
});

module.exports = VoteActivator;
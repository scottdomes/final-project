var React = require('react');
var ProgressIndicator = require('../components/ProgressIndicator.jsx');
var DatePicker = require('../components/DatePicker.jsx');

var EventConfigContainer = React.createClass({
  render: function () {
    return (
      <div>
        <ProgressIndicator />
        <DatePicker />
      </div>
    )
  }
});

module.exports = EventConfigContainer;
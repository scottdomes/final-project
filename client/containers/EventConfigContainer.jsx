var React = require('react');
var ProgressIndicator = require('../components/ProgressIndicator.jsx');
var DatePickerWrapper = require('../components/DatePickerWrapper.jsx');
var DatePicker = require('../components/DatePicker.jsx');

var EventConfigContainer = React.createClass({
  render: function () {
    return (
      <div>
        <ProgressIndicator />
        <DatePickerWrapper>
          <DatePicker />
        </DatePickerWrapper>
      </div>
    )
  }
});

module.exports = EventConfigContainer;
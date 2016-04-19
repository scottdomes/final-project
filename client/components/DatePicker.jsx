var React = require('react');
var DateRangePicker = require('react-daterange-picker');
var moment = require('moment-range');

const stateDefinitions = {
  available: {
    color: null,
    label: 'Available',
  },
  unavailable: {
    selectable: false,
    color: '#78818b',
    label: 'Unavailable',
  },
};


const DatePicker = React.createClass({
  getInitialState() {
    return {
      value: null,
    };
  },
  handleSelect(range, states) {
    // range is a moment-range object
    this.setState({
      value: range,
      states: states,
    });
  },

  render() {
    return (
      <DateRangePicker
        firstOfWeek={1}
        numberOfCalendars={2}
        selectionType='range'
        minimumDate={new Date()}
        stateDefinitions={stateDefinitions}
        defaultState="available"
        showLegend={true}
        value={this.state.value}
        onSelect={this.handleSelect} />
    );
  },
});


module.exports =  DatePicker;
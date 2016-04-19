var React = require('react');

var VoteActivatorButton = React.createClass({
  getInitialState: function () {
    return {
      isSelected: false
    }
  },
  handleClick: function () {
    if (this.state.isSelected) {
      this.setState({isSelected: false});
    } else {
      this.setState({isSelected: true});
    }
  },
  render: function () {
    var style;
    if (this.state.isSelected) {
      style = { 'background-color': '#3adb76'}
    } else {
      style = {};
    }
    return (
      <button className="button vote-activator" style={style} onClick={this.handleClick}>{this.props.label}</button>
    )
  }
});

module.exports = VoteActivatorButton;
var React = require('react');

var DatePickerWrapper = React.createClass({
  render: function () {
    return (
      <div className="row" id="enter-location">
        <div className="large-10 large-centered columns">
          {this.props.children} 
        </div> 
      </div>
    )
  }
});

module.exports = DatePickerWrapper;
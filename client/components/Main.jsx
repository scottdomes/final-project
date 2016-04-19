var React = require('react');

var Main = React.createClass({
  render: function () {
    return (
      <div id="body-overlay">
        {this.props.children}
      </div>
    )
  }
});

module.exports = Main;
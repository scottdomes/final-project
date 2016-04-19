var React = require('react');

var LandingForm = React.createClass({
  render: function () {
    return (
      <div className="row" id="enter-location">
        <div className="large-6 large-centered columns">
          <form id="form-enter-location">
            <input type="text" placeholder="Where do you want to go?" />
            <button className="button success">Let's go!</button>
          </form>
        </div> 
      </div>
    )
  }
});

module.exports = LandingForm;
var React = require('react');

var ProgressIndicator = React.createClass({
  render: function () {
    return (
      <div className="row" id="progress-indicator">
        <div className="large-2 custom-offset large columns">
          <div className="outline-circle completed">
            <img src="img/location.png" />
          </div>
        </div>

        <div className="large-1 large columns text-center">
          <img src="img/arrows.png" className="arrow" />
        </div>

        <div className="large-2 large columns">
          <div className="outline-circle completed">
            <img src="img/three.png" />
          </div>
        </div>

        <div className="large-1 large columns text-center">
          <img src="img/arrows.png" className="arrow" />
        </div>

        <div className="large-2 large columns">
          <div className="outline-circle">
            <img src="img/interface.png" />
          </div>
        </div>

        <div className="large-1 large columns text-center">
          <img src="img/arrows.png" className="arrow" />
        </div>

        <div className="large-2 end large columns">
          <div className="outline-circle">
            <img src="img/paper.png" />
          </div>
        </div>
      </div>
    )
  }
});

module.exports = ProgressIndicator;
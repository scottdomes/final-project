var React = require('react');

var LandingHeader = React.createClass({
  render: function () {
    return (
      <div>
        <div className="row" id="front-page-heading">
          <div className="large-6 large-centered columns">
            <h1>Plan less. Camp more.</h1>
            <h4>Social trip planning for campers.</h4>
          </div> 
        </div> 

        <div className="row" id="process-explanation">
          <div className="large-3 columns">
            <img src="img/location.png" />
            <p>Choose a potential location.</p>
          </div> 

          <div className="large-3 columns">
            <img src="img/three.png" />
            <p>Invite your friends.</p>
          </div> 

          <div className="large-3 columns">
            <img src="img/interface.png" />
            <p>Vote on locations and dates.</p>
          </div> 

          <div className="large-3 columns">
            <img src="img/paper.png" />
            <p>Coordinate packing lists and planning.</p>
          </div>
        </div>
      </div>
    )
  }
});

module.exports = LandingHeader;
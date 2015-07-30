var React = require('react');

// Hello World Like Button //////////////////////////
var divStyle = {
  color: 'tomato'
};

var HelloWorld = React.createClass({
  render: function() {
    return (
        <div style={divStyle}>Hello world from React</div>

      )
  }
});

var LikeButton = React.createClass({

  // getInitialState: function() {
  //   return { counter:0 }
  // },

  render: function() {
    return (
        <div onClick={this.doSomething} className="like-button">Like {this.props.counter}</div>
      )
  }
})

//////////////////////////////////////
var styles = {};

styles.bar = {
  backgroundColor: 'gray',
  padding: '5px'
};

styles.barProgress = {
  height: '50px',
  transition: 'width 200ms',
  backgroundColor: '#0bd318'
};

var Bar = React.createClass({
  render: function() {
    styles.barProgress.width = this.props.progress + "%";
    return (
      <div style={styles.bar}>
        <div style={styles.barProgress}></div>
      </div>
    )
  }
});


var App = React.createClass({
  getInitialState: function() {
    return { defaultCounter: 5}
  },

  doSomething: function() {
    this.setState({ defaultCounter: ++this.state.counter })
  },


  render: function() {
    return (
      <div> 
        <HelloWorld />
        <LikeButton />
        <p>Magic</p>
        <LikeButton counter={this.state.defaultCounter} />
        <Bar progress="20" />
      </div>
    )
  }
});



React.render(
  <App />, 
  document.getElementById('app')
);
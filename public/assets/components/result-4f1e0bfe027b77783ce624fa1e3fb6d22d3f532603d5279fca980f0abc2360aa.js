var Result=React.createClass({displayName:"Result",propTypes:{name:React.PropTypes.string,uri:React.PropTypes.string},render:function(){var e=this.props.result;return React.createElement("a",{href:e.uri,className:"result"},React.createElement("div",null,React.createElement("h4",null,e.name)))}});
var SearchResults=React.createClass({displayName:"SearchResults",getInitialState:function(){return{title:""}},render:function(){var e=[],t="";return this.props.results&&0==!this.props.results.length&&(t="Search Results...",this.props.results.forEach(function(t){e.push(React.createElement(Result,{result:t,key:"result"+t._id.$oid}))}.bind(this))),React.createElement("div",{className:"container"},React.createElement("div",null,React.createElement("h3",{className:"results-heading"},t)),React.createElement("div",{className:"results"},e))}});
var HomePage=React.createClass({displayName:"HomePage",getInitialState:function(){return{results:[]}},handleSearch:function(e){this.setState({results:e})},render:function(){return React.createElement("div",null,React.createElement("div",{className:"jumbotron"},React.createElement("div",{className:"container text-center"},React.createElement("div",{className:"row"},React.createElement("div",{className:"col-md-6 col-md-offset-3"},React.createElement("h1",null,"Consider it done.")),React.createElement("div",{className:"col-md-6 col-md-offset-3"},React.createElement("h3",null,"From house painting to personal training, we bring you the right pros for every project on your list.")),React.createElement(SearchForm,{handleSearch:this.handleSearch})))),React.createElement(HomeIcons,null),React.createElement(SearchResults,{results:this.state.results}))}});
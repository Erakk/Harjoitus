import React, { Component } from 'react';
import './App.css';
import InputField from './components/InputField';
import InputMessage from './components/InputMessage';


export default class App extends Component {

  constructor(props){
    super(props);

    this.state = {
      messages: [
        {id:0, text: "eka"}
      ],
      nextId: 1
    };

  }

  addMessage = (messageText) => {
    let messages = this.state.messages.slice();
    messages.push({id: this.state.nextId, text: messageText});
    this.setState({
      messages: messages,
      nextId: ++this.state.nextId 
    })
  }

  removeMessage = (id) => {
    this.setState({
      messages: this.state.messages.filter((message) => message.id !== id)
    })
  }

  render() {
    return (
      <div className="App-walls">
          <div className="Message-Overflow">
          {
            this.state.messages.map((message) => {
              return <InputMessage message={message} key={message.id} id={message.id} removeMessage = {this.removeMessage}/>
            })
          }
          </div>
        <InputField messageText="" addMessage={this.addMessage}/>

      </div>
    );
  }
}

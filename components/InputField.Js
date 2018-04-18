import React from 'react';
import './InputField.css';

export default class InputField extends React.Component {

    constructor(props) {
        super(props)

        this.state = {value: ''};

        this.handleChange = this.handleChange.bind(this);
        this.addMessage = this.addMessage.bind(this);
    }

    handleChange(e){
            this.setState({value: e.target.value});    
    }

    addMessage(message){
        if (message.length > 0 ){
            this.props.addMessage(message);
            this.setState({value: ''});
        }
    }

    handleEnter = (e) => {
        if(e.key == 'Enter'){
            this.props.addMessage(this.state.value)
            this.state.value = '';
            e.preventDefault();
        }
    }

    render(){
        return (
            <div className = "inputWalls">             
                <textarea className="txt-area-input" 
                placeholder='Kirjoita tähän...' 
                rows = "4" cols = "50" maxLength = "200" type="text" 
                value={this.state.value} 
                onKeyPress = {this.handleEnter} 
                onChange={this.handleChange}/>

                <button className="btn btn-primary>" onClick={() => this.addMessage(this.state.value)}>Submit</button>
            </div>
        );
    }
}

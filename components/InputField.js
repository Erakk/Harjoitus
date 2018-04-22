import React from 'react';
import './InputField.css';

export default class InputField extends React.Component {

    constructor(props) {
        super(props)
        this.state = {value: ''};
    }

    handleChange = (e) =>{
        this.setState({value: e.target.value});    
    };

    addMessage = (message) => {
        if (message.length > 0 ){
            this.props.addMessage(message);
            this.setState({value: ''});
        }
    }

    handleEnter = (e) => {
        if(e.key === 'Enter'){
            if(this.state.value.length > 0){
                this.props.addMessage(this.state.value)
                this.setState({value: '' })
            }
            e.preventDefault();
        }
    };

    render(){
        return (
            <div className = "inputWalls">     
                   
                <textarea className="txt-area-input" 
                placeholder='Kirjoita tähän...' 
                rows = "4" cols = "50" maxLength = "200" type="text" 
                value={this.state.value} 
                onKeyPress = {this.handleEnter} 
                onChange={this.handleChange}/>

                <button className="btn" onClick={() => this.addMessage(this.state.value)}>Lähetä</button>
            </div>
        );
    }
}

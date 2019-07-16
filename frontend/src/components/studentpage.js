import React, { Component } from 'react';
import logo from '../assets/logo2.png';
import $ from 'jquery';
import './App.css';
import './StudentQuiz'
import {
    Collapse,
    Navbar,
    NavbarToggler,
    NavbarBrand,
    Nav,
    NavItem,
    NavLink,
    Form, FormGroup, Label, Input
} from 'reactstrap';
import { Redirect } from 'react-router';


class studentpage extends Component {

    constructor(props) {
        super(props);

        this.toggle = this.toggle.bind(this);
        this.state = {
            isOpen: false,
            toQuiz: false,
            toGrades: false
        };
    }
    toggle() {
        this.setState({
            isOpen: !this.state.isOpen
        });
    }

    render() {

        if (this.state.toQuiz === true) {
            return <Redirect to='/StudentQuiz' />;
        }
        if (this.state.toGrades === true) {
            return <Redirect to='/SeeGrades' />;
        }


        return (
            <div className="StudentPage" id='studentPage'>

                <Navbar id='navbar' dark expand="md" fixed="top" height='40px'>
                    <NavbarBrand href="/">
                        <img src={logo} alt="logo" height='30px'/>
                    </NavbarBrand>
                    <NavbarToggler onClick={this.toggle} />
                    <Collapse isOpen={this.state.isOpen} navbar>
                        <Nav className="ml-auto" navbar>
                            <NavItem>
                                <NavLink href="/">Log out</NavLink>
                            </NavItem>
                        </Nav>
                    </Collapse>
                </Navbar>

                <div className='mainSection'>
                    <div>
                        <Form>
                            <FormGroup>
                                <Label for="code" id='codelbl' sm={8}>Enter code</Label>
                                <Input type="text" name="code" id="codeQ" onChange={this.handleChange}  />
								<br/>
                                <input id="btnJoin" className='btnClk' type="button" value="ENTER QUIZ" onClick={() => {

                                    let endpoint_LiveQuiz = "ws://127.0.0.1:8082";
                                    let ws = new WebSocket(endpoint_LiveQuiz);
                                    let identity = null;

                                    ws.onopen = function(openingData){
                                        console.log('OnOpen: ' + openingData.data);
                                        $("#btnJoin").val("Joining quiz...");
                                        $("#codeQ").prop('disabled', true);
                                    };

                                    ws.onclose = function(closingData){
                                        $("#btnJoin").val("ENTER QUIZ");
                                        $("#codeQ").prop('disabled', false);
                                    };

                                    ws.onmessage = function(message){


                                        console.log('OnMessage: ' + message.data);
                                        var res = JSON.parse(message.data);
                                        
                                        if (identity == null){

                                            identity = {SecretKey:localStorage.getItem('sk'), AccessCode:$("#codeQ").val(), WSID:res.Data};
                                            localStorage.setItem('identity', JSON.stringify(identity));
                                            let action = {Identity:identity, Action:"JoinQuiz", Data:null};
                                            console.log(action);
                                            ws.send(JSON.stringify(action));
                                        }

                                        else if (res.Success){
                                            if (res.Action != null && res.Action === "QuizStarted"){
                                                window.location = "/StudentQuiz";
                                                ws.close();
                                            } else{
                                                $("#btnJoin").val("Waiting for start...");
                                            }
                                        }
                                        
                                        else {
                                            document.getElementById('codeQ').placeholder = "Invalid quiz Access Code";
                                            console.log("Called placeholder change");
                                            ws.close();
                                        }



                                    }
                                }} />
                            </FormGroup>
                        </Form>
                    </div>
                    <div>
                        <input className='btnClk' type="button" value="SEE GRADES" onClick={() => {
                            this.setState({ toGrades: true});
                            console.log("AAA");
                        }} />
                    </div>
                </div>

            </div>
        );
    }
}

export default studentpage;
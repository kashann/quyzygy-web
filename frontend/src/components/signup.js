import React, {Component} from 'react';
import './App.css';
import {Redirect} from 'react-router';
import Popup from "reactjs-popup";
import SignUp from './signup.js';
import $ from 'jquery';
import localStorage from 'localStorage';
import sha256 from 'sha256';
import {Label, FormGroup, Input} from 'reactstrap';

const contentStyle = {
    maxWidth: "600px",
    width: "90%"
};


class signup extends Component {
    constructor(props) {
        super(props);
    }

    updateLocalStorage(loginData) {
        localStorage.setItem('sk', loginData["secretKey"]);
        localStorage.setItem('userType', loginData['userType']);
    }

    getLocalStorage() {
        var x = {};
        x['sk'] = localStorage.getItem('sk');
        x['userType'] = localStorage.getItem('userType');

        return x;
    }

    localStorageDemo() {
        $("#localStorageDemo").html(JSON.stringify(this.getLocalStorage()));
    }

    successFunction (response, radioValue) {
        console.log(response);
        this.updateLocalStorage(response);
        this.localStorageDemo();

        if (radioValue === 'Student') {
            window.location.replace('/studentPage');
        }
        if (radioValue === 'Professor') {
            window.location.replace('/profPage');
        }
    }

    register(){
        var context = this;
        var endpoint_API = "http://localhost:8080/";
        let hash = sha256($("#passwordBox").val());
        var radioValue = $("input[name='userTypeBox']:checked").val();
                
        $.ajax({
            url: endpoint_API + "register",
            type: "POST",
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({firstName:$("#firstNameBox").val(), lastName:$("#lastNameBox").val(),
                email:$("#emailBox").val(), passwordHash:hash, userType:radioValue}),
            crossDomain: true,
            success: function (response) {
                context.successFunction(response, radioValue);
            },
            error: function (xhr, status) {
                alert("error");
            }
        });
        this.localStorageDemo();
    }

    handleClick(e) {
        this.register();
    }

    render() {

        return (
            <div className="SignUp">

                <div id='loginForm'>
                    <form>
                        <div className='block'>
                            <label htmlFor="firstNameBox" >First Name</label>
                            <input type="text" id="firstNameBox"/>
                        </div>
                        <div className='block'>
                            <label htmlFor="lastNameBox" >Last Name</label>
                            <input type="text" id="lastNameBox"/>
                        </div>
                        <div className='block'>
                            <label htmlFor="emailBox" >Email</label>
                            <input type="email" id="emailBox" placeholder="name@csie.ase.ro"/>
                        </div>
                        <div className='block'>
                            <label htmlFor="passwordBox" >Password</label>
                            <input type="password" id="passwordBox" placeholder="password"/>
                        </div>
                        <div className='block'>
                            <label htmlFor="etypePasswordBox" >Retype Password</label>
                            <input type="password" id="retypePasswordBox" placeholder="retype password"/>
                        </div>

                        <FormGroup tag="fieldset" row>
                            <legend className="col-form-label sm-10">Student or Teacher?</legend>

                            <FormGroup check>
                                <Label check>
                                    <input type="radio" name="userTypeBox" value="Student"/>
                                    Student
                                </Label>
                            </FormGroup>
                            <FormGroup check>
                                <Label check>
                                    <input type="radio" name="userTypeBox" value="Professor"/>
                                    Professor
                                </Label>
                            </FormGroup>
                        </FormGroup>

                        <input className="btnClk logBtn" type="button" value="REGISTER" id="registerButton" onClick={this.handleClick.bind(this)}/>
                    </form>
                </div>

            </div>

        )
    }

}

export default signup;
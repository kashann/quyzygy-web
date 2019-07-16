import React, {Component} from 'react';
import './App.css';
import logo from '../assets/logo2.png';
import imgAndreea from '../assets/andreea.png';
import imgIoana from '../assets/ioana.png';
import imgCristina from '../assets/cristina.png';
import imgGeorge from '../assets/george.png';
import imgVictor from '../assets/victor.png';
import LogIn from './login.js';
import {
    Collapse, Navbar, NavbarToggler, NavbarBrand, Nav, NavItem, NavLink
} from 'reactstrap';
import { Col, Row} from 'react-bootstrap';

class homepage extends Component {


    constructor(props) {
        super(props);

        this.toggle = this.toggle.bind(this);
        this.state = {
            isOpen: false
        };
    }

    toggle() {
        this.setState({
            isOpen: !this.state.isOpen
        });
    }

    render() {
        return (
            <div className="HomePage">
                <Navbar id='navbar' dark expand="md" fixed="top" height='40px'>
                    <NavbarBrand href="/">
                        <img src={logo} alt="logo" height='30px'/>
                    </NavbarBrand>
                    <NavbarToggler onClick={this.toggle}/>
                    <Collapse isOpen={this.state.isOpen} navbar>
                        <Nav className="ml-auto" navbar>
                            <NavItem>
                                <NavLink href="#UtilitySection">Utility</NavLink>
                            </NavItem>
                            <NavItem>
                                <NavLink href="#SignUpSection">Sign Up</NavLink>
                            </NavItem>
                            <NavItem>
                                <NavLink href="#AboutSection">About us</NavLink>
                            </NavItem>
                            <NavItem>
                                <NavLink href="#DonateSection">Donate</NavLink>
                            </NavItem>
                        </Nav>
                    </Collapse>
                </Navbar>


                <div id="UtilitySection">

                    <div id='utilityText'>
                        <p>
                            Upon a quick reflection, everyone can easily notice that tests are hard – not only from the
                            student’s perspective, but also the professor’s.<br/><br/>

                            Quyzygy is a multi-platform application that will save the professor’s energy by cutting the grading time all
                            together, which also means giving the student’s mark as soon as he is done with the test, but also
                            save material resources, by finding a much suitable platform for those exams. In addition we also
                            expect we’ll be able to ease the creation of quizzes by giving people the chance to edit them and
                            even share them.<br/><br/>

                            We make quizzes fun and simple!
                        </p>
                    </div>

                </div>

                <div id="SignUpSection">
                    <LogIn/>
                </div>

                <div id="AboutSection">
                    <p>
                        Great minds change the world. We did this app.<br/></p>

                    <div>
                        <Row>
                            <Col xs={24} md={16}>
                                <img src={imgAndreea} className="responsive" alt="Andreea Preda"/>
                                    <p>Andreea Preda</p>
                            </Col>
                           
                        </Row>
                    </div>

                </div>
                <div id="DonateSection">
                    <div id='DonateText'>
                    <div>
                    You can donate money here: RO49 AAAA 1B31 0075 9384 0000<br/><br/>
                    We also accept good grades.<br/><br/>
                        <div className="Hh">Thank you! :)</div>
                    </div>
                    </div>
                </div>

            </div>
        );
    }
}

export default homepage;
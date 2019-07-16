import React from 'react';
import $ from "jquery";
import localStorage from 'localStorage'
import { Table} from 'react-bootstrap';
import logo from "../assets/logo2.png";
import {
    Collapse,
    Navbar,
    NavbarToggler,
    NavbarBrand,
    Nav,
    NavItem,
    NavLink,
} from 'reactstrap';


export default class seeProfGrades extends React.Component {

    constructor(props) {
        super(props);

        this.toggle = this.toggle.bind(this);
        this.state = {
            isOpen: false,
        };
    }
    toggle() {
        this.setState({
            isOpen: !this.state.isOpen
        });
    }

    render() {
        if (window.location.href.indexOf('reload') === -1) {
            window.location.replace(window.location.href + '?reload');
        }
        return (

            <div className='seeProfGrades'>

                <Navbar id='navbar' dark expand="md" fixed="top" height='40px'>
                    <NavbarBrand href="/">
                        <img src={logo} alt="logo" height='30px'/>
                    </NavbarBrand>
                    <NavbarToggler onClick={this.toggle} />
                    <Collapse isOpen={this.state.isOpen} navbar>
                        <Nav className="ml-auto" navbar>
                            <NavItem>
                                <NavLink href="/profpage">MyPage</NavLink>
                            </NavItem>
                            <NavItem>
                                <NavLink href="/">Log out</NavLink>
                            </NavItem>
                        </Nav>
                    </Collapse>
                </Navbar>


                <div id='gradesTable'>
                    <h2>My Student's Grades</h2>
                    <Table responsive>
                        <thead>
                        <tr>
                            <th> Quiz ID</th>
                            <th> Quiz Name</th>
                            <th> Grade</th>
                            <th> Student</th>
                            <th> Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </Table>
                </div>
            </div>
        )
    }

    componentWillMount() {
        let endpoint_API = "http://localhost:8080/";

        $(window).on('load', function () {

            $.ajax({
                url: endpoint_API + "studGrades?sk=" + localStorage.getItem('sk'),
                type: "GET",
                crossDomain: true,
                success: function (response) {
                    console.log(response);
                    $.each(response, function (key, value) {				
						$.ajax({
							url: endpoint_API + "userEmail/" + value.UserID,
							type: "GET",
							crossDomain: true,
							success: function (response) {
								$('tbody').append(`<tr>
									 <td class="Quiz ID">${value.QuizID}</td>
									 <td class="Quiz Name">${value.QuizName}</td>
									 <td class="Grade">${value.Value}/${value.Total}</td>
									 <td class="Student">${response}</td>
									 <td class="Date">${value.Date}</td>
								 </tr>`);
							},
							error: function (xhr, status) {
								alert("error");
							}
						});
                    })
                },
                error: function (xhr, status) {
                    alert("error");
                }
            });
        });

    }

}
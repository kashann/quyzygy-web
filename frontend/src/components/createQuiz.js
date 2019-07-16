import React, {Component} from 'react';
import './App.css';
import $ from 'jquery';
import localStorage from 'localStorage';
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

class CreateQuiz extends Component {

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

    componentWillMount() {
        let endpoint_API = "http://localhost:8080/";
        var questionIDs = [];
        var randomQuestions;

        $(window).on('load', function () {
            $("#qText00").val(localStorage.getItem('email'));
            $("#qt0").val(localStorage.getItem('email'));
            refreshMyQuestions();
            $("#save").on('click', function () {
                console.log(JSON.stringify({Author:localStorage.getItem('email'), CourseName: $("#qText01").val(), QuizName: $("#qText02").val(),Duration:(parseInt($("#qText03").val()) * 60),Questions: $("#qText05").val(),Public: ($("#qText06").checked)?1:0, Geofencing:($("#qText07").checked)?1:0}))
                $.ajax({
                    url: endpoint_API + "createQuiz?sk=" + localStorage.getItem('sk'),
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/json',
                    data: JSON.stringify({Author:localStorage.getItem('email'), CourseName: $("#qText01").val(), QuizName: $("#qText02").val(),Duration:(parseInt($("#qText03").val()) * 60),Questions: $("#qText05").val(),Public: ($("#qText06").checked)?1:0, Geofencing:($("#qText07").checked)?1:0}),
                    crossDomain: true,
                    success: function (response) {
                        console.log(response);
                        alert("Quiz created!");
                    },
                    error: function (xhr, status) {
                        alert("error");
                        console.log('xhr', xhr);
                    }
                });
            });
            $("#randomQuiz").on('click', function () {
                getRandomQuestions($("#qText05").val());
                console.log(JSON.stringify({Author:localStorage.getItem('email'), CourseName: $("#qText01").val(), QuizName: $("#qText02").val(),Duration:(parseInt($("#qText03").val()) * 60), Questions:randomQuestions, Public: ($("#qText06").checked)?1:0, Geofencing:($("#qText07").checked)?1:0}))
                $.ajax({
                    url: endpoint_API + "createQuiz?sk=" + localStorage.getItem('sk'),
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/json',
                    data: JSON.stringify({Author:localStorage.getItem('email'), CourseName: $("#qText01").val(), QuizName: $("#qText02").val(),Duration:(parseInt($("#qText03").val()) * 60), Questions:randomQuestions, Public: ($("#qText06").checked)?1:0, Geofencing:($("#qText07").checked)?1:0}),
                    crossDomain: true,
                    success: function (response) {
                        console.log(response);
                        alert("Quiz created!");
                    },
                    error: function (xhr, status) {
                        alert("error");
                        console.log('xhr', xhr);
                    }
                });
            });
			$("#saveQue").on('click', function(){
                let t = $("#qt2").val();
                let ca;
                let opt = [];

                if (t === "OpenAnswer"){
                    ca = $("#qt000").val();
                }
                else{
                    for (let i = 0; i < 4; i++){ // 4 answer options
                        opt.push($("#a"+ (i + 1) + "2").val());
                        if(document.getElementById('a' + (i + 1) + "1").checked){
                            ca = $("#a"+ (i + 1) + "2").val();
                        }
                    }
                }
                $.ajax({
                    url: endpoint_API + "createQuestion?sk=" + localStorage.getItem('sk'),
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/json',
                    data: JSON.stringify({ Author:localStorage.getItem('email'), Text: $("#qt1").val(), Type: $("#qt2").val(), Answers:JSON.stringify(opt), CorrectAnswer:ca, Points:parseInt($("#qt045").val())}),
                    crossDomain: true,
                    success: function (response) {
                        console.warn(response);
                        refreshMyQuestions();
                    },
                    error: function (xhr, status) {
                        alert("error");
                    }
                });
            });
			$("#qt2").on('change', function(){
                if ($("#qt2").val() === "SingleAnswer"){
                    $('#qt03').html("<fieldset> <label>Option 1:</label> <input type='radio' name='opt' id='a11'/> <input type='text' id='a12'/> </br> <label>Option 2:</label> <input type='radio' name='opt' id='a21'/> <input type='text' id='a22'/> </br> <label>Option 3:</label> <input type='radio' name='opt' id='a31'/> <input type='text' id='a32'/> </br> <label>Option 4:</label> <input type='radio' name='opt' id='a41'/> <input type='text' id='a42'/> </fieldset>");
                }
                else{
                    $("#qt03").html("<label>Answer:</label><input type='text' id='qt000'/>");
                }
            });
        });

        function getRandomIndex(items) {
            return Math.floor(Math.random() * items.length);
        }

        function getRandomQuestions(nr) {
            randomQuestions = "";
            for (var i = 0; i < nr; i++) {
                if(i === 0)
                    randomQuestions += "[";
                var removedItem = questionIDs.splice(getRandomIndex(questionIDs), 1);
                randomQuestions += removedItem;
                if(i < nr - 1)
                    randomQuestions += ", ";
                else
                    randomQuestions += "]";
            }
        }

        function refreshMyQuestions(){
            $.get(endpoint_API + "myQuestions?sk=" + localStorage.getItem('sk'), function(data){
                $('#qstt tbody').empty();
				questionIDs = [];
                for (let i = 0; i < data.length; i++){
                    let ht = "<tr>"
                    ht += "<td>";
                    ht += data[i].ID;
                    ht += "</td>";
                    ht += "<td>";
                    ht += data[i].Text;
                    ht += "</td>";
                    ht += "<td>";
                    ht += data[i].Answers;
                    ht += "</td>";
                    ht += "<td>";
                    ht += data[i].Type;
                    ht += "</td>";
                    ht += "<td>";
                    ht += data[i].CorrectAnswer;
                    ht += "</td>";
                    ht += "<td>";
                    ht += data[i].Points;
                    ht += "</td>";
                    ht += "</tr>";
                    $("#qstt").append(ht);
                    questionIDs.push(data[i].ID);
                }
            });
			
			$("createQuestionForm").trigger("reset");
			$("#qt1").val("");
			$('#qt2').prop('selectedIndex',0);
			$("#qt03").html("");
			$("#qt045").val("");
        }
    }

    
    render() { // layout

        if (window.location.href.indexOf('reload')===-1) {
            window.location.replace(window.location.href+'?reload');
        }
        return (

            <div id='quizForm'>

            <Navbar id='navbar' dark expand="md" fixed="top" height='40px'>
                <NavbarBrand href="/">
                    <img src={logo} alt="logo" height='30px'/>
                </NavbarBrand>
                <NavbarToggler onClick={this.toggle} />
                <Collapse isOpen={this.state.isOpen} navbar>
                    <Nav className="ml-auto" navbar>
                        <NavItem>
                            <NavLink href="/profPage">My page</NavLink>
                        </NavItem>
                        <NavItem>
                            <NavLink href="/">Log out</NavLink>
                        </NavItem>
                    </Nav>
                </Collapse>
            </Navbar>

            <div id='createQF'>
                <form>
                    <h2>Create a quiz</h2>
                    <div className='block'>
                        <label htmlFor="qText00" >Author</label>
                        <input type="text" id="qText00" disabled/>
                    </div>
                    <div className='block'>
                        <label htmlFor="qText" >Course name</label>
                        <input type="text" id="qText01"/>
                    </div>
                    <div className='block'>
                        <label htmlFor="qText" >Quiz name</label>
                        <input type="text" id="qText02"/>
                    </div>
                    <div className='block'>
                        <label htmlFor="Type" >Duration (minutes)</label>
                        <input type="text" id="qText03"/>
                    </div>
                    <div className='block'>
                        <label htmlFor="CorrA" >(Nr. of) Questions</label>
                        <input type="text" id="qText05"/>
                    </div>
                    <div className='block'>
                        <input type="checkbox" id='qText06'/>
                        <label htmlFor='qText06'>Public</label>
                    </div>
                    <div className='block'>
                        <input type="checkbox" id='qText07'/>
                        <label htmlFor='qText07'>Geofencing</label>
                    </div>
                    <div className='block'>
                    </div>
                    <input className='btnClk createQBT' type="button" value="Save" id="save"/>
                    <input className='btnClk createQBT' type="button" value="Generate quiz with random questions" id="randomQuiz" style={{width:350}}/>
                </form>
                
                <form>
                <h3>My questions:</h3>
					<table id="qstt">
					<thead>
						<tr>
							<th>
								ID
							</th>
							<th>
								Question
							</th>
							<th>
								Answers
							</th>
							<th>
								Type
							</th>
							<th>
								Correct answer
							</th>
							<th>
								Points
							</th>
						</tr>
						</thead>
					</table>
                </form>
               <center>
               <h3>Create question</h3>
                <form id="createQuestionForm">
                <div className='block'>
                        <label htmlFor="qText" >Author</label>
                        <input type="text" id="qt0" disabled/>
                </div>
                <div className='block'>
                        <label htmlFor="qText" >Text</label>
                        <input type="text" id="qt1"/>
                </div>
                <div className='block'>
                    <label>Type:</label>
                    <select id="qt2">
						<option defaultValue hidden>Choose</option>
                        <option>
                            SingleAnswer
                        </option>
                        <option>
                            OpenAnswer
                        </option>
                    </select>
                </div>
                <div className='block' id='qt03'>
                       
                </div>
                <div className='block'>
                       <label>Points</label>
                       <input type='text' id='qt045'></input>
                </div>
                <input className='btnClk createQBT' type="button" value="Save" id="saveQue" />
                </form>
               </center>
            </div>
            </div>
        )
    }
}

export default CreateQuiz;
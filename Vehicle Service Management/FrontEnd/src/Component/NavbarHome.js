import Container from "react-bootstrap/Container";
import { Link } from "react-router-dom";
import React, { Component } from "react";
import { Dropdown } from 'react-bootstrap';


import { Nav, NavDropdown } from 'react-bootstrap';

class NavbarHome extends Component {
  render() {
    return (
      <div
        className="position-sticky  container-fluid p-0 m-0 "
        style={{ width: "100%" }}
      >
        {/* <nav>
          <Navbar
            variant="dark ms-0"
            style={{ backgroundColor: "#37306B" }}
            sticky="top"
            expand="lg"
          >
            <Container>
              <Navbar.Brand>
                <img
                  src="./Images/logo1.jpg"
                  height="50px"
                  width="70px"
                  alt="Logo.."
                />
              </Navbar.Brand>
              <Navbar.Toggle aria-controls="basic-navbar-nav" />
              <Navbar.Collapse id="basic-navbar-nav">
                <Nav className="me-auto">
                  <Link
                    to="#"
                    style={{
                      color: "white",
                      // fontFamily: "cursive",
                      fontSize: "20px",
                      margin: "2px",
                      textDecoration: "none",
                    }}
                  >
                    <big>Vehicle Service Management System</big>
                  </Link>
                  &nbsp;&nbsp;
                  <Link
                    to="/Home"
                    style={{
                      color: "white",
                      // fontFamily: "cursive",
                      fontSize: "20px",
                      margin: "5px",
                      textDecoration: "none",
                    }}
                  >
                    Home
                  </Link>
                </Nav>
                <Nav>
                  <Link
                    to="/About"
                    className="me-3"
                    style={{
                      color: "white",
                      // fontFamily: "cursive",
                      fontSize: "20px",
                      margin: "5px",
                      textDecoration: "none",
                    }}
                  >
                    About Us
                  </Link>
                  <Link
                    to="/Contact"
                    className="me-3"
                    style={{
                      color: "white",
                      // fontFamily: "cursive",
                      fontSize: "20px",
                      margin: "5px",
                      textDecoration: "none",
                    }}
                  >
                    Contact Us
                  </Link>

                  <NavDropdown
                    style={{
                      color: "white",
                      fontSize: "18px",
                      textDecoration: "none",
                      marginLeft: "10px",
                    }}
                    title="Sign Up"
                    menuVariant="white"
                  >
                    <NavDropdown.Item href="/CustomerSignupLogin">
                      Sign up as Customer
                    </NavDropdown.Item>
                    <NavDropdown.Item href="/MechanicSignupLogin">
                      Sign up as Mechanic
                    </NavDropdown.Item>
                  </NavDropdown>
                  <Link
                    to="/Loginpage"
                    className=" padding-left-5"
                    style={{
                      color: "white",
                      // fontFamily: "cursive",
                      fontSize: "20px",
                      margin: "5px",
                      textDecoration: "none",
                    }}
                  >
                    Login
                  </Link>
                </Nav>
              </Navbar.Collapse>
            </Container>
          </Navbar>
        </nav> */}

        
<nav  className="navbar navbar-expand-sm bg-primary-subtle">
  <div className="container-fluid">


    <a className="navbar-brand float-start" href="#">      <img  src="./Images/newLogo.jpg"  height="50px"  width="70px"  alt="Logo.."   style={{ borderRadius: '50%' }}/>  Vehicle Service Management System</a>
    <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span className="navbar-toggler-icon"></span>
    </button>
    <div className=" float-end" >
      <ul className="navbar-nav">
        <li className="nav-item">
          <a className="nav-link active" aria-current="page" href="/Home">Home</a>
        </li>
        <li className="nav-item">
          <a className="nav-link" href="/About">About Us</a>
        </li>
        <li className="nav-item">
          <a className="nav-link" href="/Contact">Contact Us</a>
        </li>

        <li>
        <Dropdown>
        <Dropdown.Toggle className="nav-link" variant="none" id="dropdown-basic">
          Sign Up
        </Dropdown.Toggle>

        <Dropdown.Menu>
          <Dropdown.Item href="/CustomerSignupLogin">As Customer</Dropdown.Item>
          <Dropdown.Item href="/MechanicSignupLogin">As Mechanic</Dropdown.Item>
        </Dropdown.Menu>
      </Dropdown>
        </li>
        
        <li className="nav-item">
          <a className="nav-link" href="/Loginpage">Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
      </div>
    );
  }
}

export default NavbarHome;

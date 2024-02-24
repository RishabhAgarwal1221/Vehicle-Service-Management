import React, { Component } from "react";
import { Link } from "react-router-dom";
// import Container from "react-bootstrap/Container";
// import Nav from "react-bootstrap/Nav";
// import Navbar from "react-bootstrap/Navbar";

const AdminNavbar = ({ handleSearch }) => {
  return (
    <div>
      {/* <Navbar style={{ backgroundColor: "pink" }}>
        <Container>
           <Navbar.Brand>
            <img
              src="../Images/logo1.jpg"
              height="50px"
              width="70px"
              alt="Logo.."
            />
          </Navbar.Brand>
          <Navbar.Brand
            to="/admin/dashboard"
            style={{
              color: "purple",

              fontSize: "20px",
              margin: "5px",
              textDecoration: "none",
            }}
          >
            Vehicle Service Management System{" "}
          </Navbar.Brand>
          <Nav className="me-auto">
            <Link
              to="/admin/dashboard"
              style={{
                color: "purple",

                fontSize: "20px",
                margin: "5px",
                textDecoration: "none",
              }}
            >
              Dashboard
            </Link>
            <Link
              to="/admin/adminCustomer"
              style={{
                color: "purple",

                fontSize: "20px",
                margin: "5px",
                textDecoration: "none",
              }}
            >
              Customer
            </Link>
            <Link
              to="/admin/mechanic"
              style={{
                color: "purple",

                fontSize: "20px",
                margin: "5px",
                textDecoration: "none",
              }}
            >
              Mechanic
            </Link>
            <Link
              to="/admin/request"
              style={{
                color: "purple",

                fontSize: "20px",
                margin: "5px",
                textDecoration: "none",
              }}
            >
              Request
            </Link>
            <Link
              to="/admin/feedbackReview"
              style={{
                color: "purple",

                fontSize: "20px",
                margin: "5px",
                textDecoration: "none",
              }}
            >
              FeedBack
            </Link>
          </Nav>

          <nav>
            <Link
              to="/Home"
              className="m-3"
              style={{
                color: "purple",

                fontSize: "20px",
                margin: "5px",
                textDecoration: "none",
              }}
              onClick={() => {
                localStorage.clear();
              }}
            >
              Logout
            </Link>
          </nav>
        </Container>
      </Navbar> */}

<nav  className="navbar navbar-expand-sm bg-primary-subtle">
  <div className="container-fluid">
    <a className="navbar-brand float-start" href="#"><img  src="../Images/newLogo.jpg" height="50px"  width="70px"  alt=""   style={{ borderRadius: '50%' }}/>  Vehicle Service Management System</a>
    <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span className="navbar-toggler-icon"></span>
    </button>
    <div className="float-end" id="navbarNavDropdown">
      <ul className="navbar-nav">
        <li className="nav-item">
          <a className="nav-link active" aria-current="page" href="/admin/dashboard">Dashboard</a>
        </li>
        <li className="nav-item">
          <a className="nav-link" href="/admin/adminCustomer">Customer</a>
        </li>
        <li className="nav-item">
          <a className="nav-link" href="/admin/mechanic">Mechanic</a>
        </li>
        
        <li className="nav-item">
          <a className="nav-link" href="/admin/request">Request</a>
        </li>

        
        <li className="nav-item">
          <a className="nav-link" href="/admin/feedbackReview">Feedback</a>
        </li>

        <li className="nav-item">
        <a className="nav-link" href="/Home" onClick={() => {
                localStorage.clear();
              }}>Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

          
        
</div>
  );
};

export default AdminNavbar;

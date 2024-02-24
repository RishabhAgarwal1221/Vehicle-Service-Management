import Button from "react-bootstrap/Button";
import { Container } from "react-bootstrap";
import Form from "react-bootstrap/Form";
import MechanicService from "./Services/MechanicService";
import React, { Component, useEffect, useState } from "react";
import { Navigate, useNavigate } from "react-router-dom";
import { useLocation } from "react-router-dom";
import RequestService from "./Services/RequestService";
  
import axios from "axios";
import AdminNavbar from "./Navbar/AdminNavbar";
import ChangeRequest from "./ChangeRequest.jpg";

export function UpdateReqAdmin() {
  const location = useLocation();

  const navigate = useNavigate();

  const [mechanics, setMechanics] = useState([]);

  const [changeStatus, setStatus] = useState("");
  const [mechanicId] = useState({});
  const [cost, setCost] = useState("");
  const [releasedDate, setReleaseDate] = useState("");

  const setDate = () => {
    const today = new Date();

    const date = today.setDate(today.getDate());
    const defaultValue = new Date(date).toISOString().split("T")[0];
    return defaultValue;
  };

  const changeStatusHandler = (e) => {
    setStatus(e.target.value);
    if (e.target.value === "Released") setReleaseDate(setDate());
  };

  useEffect(() => {
    MechanicService.getAllMechanics().then((res) => {
          console.log(res.data.mechanicId)
      setMechanics(res.data);
    });
  }, []);

  const updateRequest = () => {
    const { updatedrequestId } = location.state;
    console.log(updatedrequestId);
    console.log(updatedrequestId.requestId);
    const id = updatedrequestId.requestId;
    

    
    MechanicService.getOneMechanic(1).then((response) => {
      RequestService.getOneRequest(updatedrequestId.requestId).then((res) => {
        const ob = {
          requestId: res.data.requestId,
          enquiryDate: res.data.enquiryDate,
          releaseDate: releasedDate,
          problemDescription: res.data.problemDescription,
          status: changeStatus,
          vehicleNo: res.data.vehicleNo,
          vehicleName: res.data.vehicleName,
          vehicleBrand: res.data.vehicleBrand,
          vehicleModel: res.data.vehicleModel,
          vehicleCategory: res.data.vehicleCategory,
          mechanic: response.data,
          customer: res.data.customer,
          bill: Number.parseInt(cost),
          feedback: res.data.feedback,
        };

        console.log(ob);

        console.log(JSON.stringify(ob));

        const newRequest = JSON.stringify(ob);

        // RequestService.updateRequest(ob.requestId,newRequest ).then((res)=>{
        axios
          .put(
            `http://localhost:9000/Request-api/${id}`,
            newRequest,
            {
              headers: {
                "Content-Type": "application/json",
              },
            }
          )
          .then((res) => {
            console.log("request updated");

            navigate("/admin/dashboard");
          })
          .catch((error) => {
            console.error("Error updating request:", error);
          })
      });
    });
  };

  return (
    <div>
      <AdminNavbar />

      <div className="row" style={{ margin: "50px 300px" }}>
        <Container className="col">
          <h3
            style={{
              textAlign: "center",
              color: "Bron",
            }}
          >
            Update STATUS{" "}
          </h3>
          <Form.Group className="mb-3" controlId="formBasicEmail">
            <Form.Label>Repair Cost</Form.Label>
            <Form.Control
              type="number"
              placeholder="Repair Cost"
              onChange={(e) => {
                setCost(e.target.value);
              }}
            />
            
          </Form.Group>
          <Form.Group className="mb-3">
            <Form.Label>Status</Form.Label>
            <Form.Select onChange={changeStatusHandler}>
              <option value="Pending">Pending </option>
              <option value="Approved">Approved </option>
              <option value="Released">Released</option>
            </Form.Select>
          </Form.Group>

          <Button variant="primary" onClick={updateRequest} className="mb-3">
            Submit
          </Button>
          <Button
            className="btn btn-primary mb-3"
            onClick={() => {
              navigate("/admin/dashboard");
            }}
            style={{ marginLeft: "10px" }}
          >
            Cancel
          </Button>
        </Container>
        
      </div>
    </div>
  );
}

import React from 'react'
import Map from "../Components/Map"
import { connect } from "react-redux"
import { withScriptjs, withGoogleMap } from "react-google-maps"
import { tooglePropertyModal } from "../actions"
import PropertyDetailModal from "./PropertyDetailModal"

class PropertyDetail extends React.Component {

    state = {
        apartmentPressed: null
    }

    componentDidMount() {
        const id = this.props.match.params.id
        
        fetch(`http://localhost:3001/api/v1/properties/${id}`)
        .then(response => response.json())
        .then(response => this.setState({
            property: response.property, 
            images: response.images,
            apartments: response.apartments
        }))
    }
    
    componentDidUpdate(prevProps, prevState) {
        if (prevState.apartments !== this.state.apartments) {

        }
    }

    handleApartmentsAddRender = (tenantInfo, apartmentObj, move_in_date) => {
        const apartmentIndex = this.state.apartments.map(apartment => { return apartment.id }).indexOf(apartmentObj.id)
        const obj = {
            move_in_date: move_in_date, 
            name: apartmentObj.name, 
            occupied: true, 
            property_id: apartmentObj.apartment_id, 
            tenant: {
                name: tenantInfo.name
            }
        }

        let newApartments = this.state.apartments
        newApartments.splice(apartmentIndex, 1, obj)
        this.setState({
            ...this.state, 
            apartments: newApartments
        })
    }

    deleteTenant = (tenantId) => {
        fetch(`http://127.0.0.1:3001/api/v1/tenants/${tenantId}`, { method: "DELETE" })
    }

    handleRemoveTenant = (e) => {
        const apartment = this.state.apartments.find(apartment => apartment.id === parseInt(e.target.id))
        this.deleteTenant(apartment.tenant.id)

        const apartmentIndex = this.state.apartments.map(apartment => { return apartment.id }).indexOf(apartment.id)
        console.log(apartment)
        const obj = {
            move_in_date: "",
            name: apartment.name,
            occupied: false,
            property_id: apartment.apartment_id,
        }

        let newApartments = this.state.apartments
        newApartments.splice(apartmentIndex, 1, obj)
        this.setState({
            ...this.state,
            apartments: newApartments
        })

        this.toogleOccupiedStatus(apartment)
    }

    toogleOccupiedStatus = (apartment) => {
        const payload = {
            occupied: false,
            move_in_date: null
        }

        const obj = {
            method: "PATCH",
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(payload)
        }

        fetch(`http://localhost:3001/api/v1/apartments/${apartment.id}`, obj)
            .then(response => response.json())
            .then(data => {
                console.log("Successfully updated", data)
            })
            .catch(error => console.log("Error", error))
    }


    renderTableData = () => {
        return this.state.apartments.map(apartment => {
            return <tr>
                <td>{apartment.name}</td>
                <td>{apartment.occupied ? "true" : "false"}</td>
                <td>{apartment.tenant ? apartment.tenant.name : ""}</td>
                <td>${this.state.property.price_per_unit}</td>
                <td>{apartment.move_in_date}</td>
                {apartment.occupied ? <button id={apartment.id} value="remove" onClick={(e) => this.handleRemoveTenant(e)} >Remove a Tenant</button> : <button id={apartment.id} value="add" onClick={(e) => this.handleModalApartmentPressed(e)}>Add a Tenant</button>}
            </tr>
        })
    }

    handleModalApartmentPressed = (e) => {
        const apartment = this.state.apartments.find(apartment => apartment.id === parseInt(e.target.id))

        this.setState({
            apartmentPressed: apartment
        })
        this.props.tooglePropertyModal(true)
    }

    renderDetails = () => {
        const WrappedMap = withScriptjs(withGoogleMap(Map))
        // console.log("Props", this.props)
        // console.log("State", this.state)

        return (
            <div className="property-detail-container">
                <div className="property-detail-images">
                    {this.state.images.map((image, idx) => {
                        return (
                            <img 
                                src={image} 
                                key={idx}
                                style={{ width: "475px", height: "313.81px" }}
                                alt="Building"
                            />
                        )
                    })}
                </div>
                <div className="property-detail-address">
                    <div className="property-detail-street">
                        <strong>{this.state.property.address}</strong>
                    </div>
                    <div className="property-detail-city-state-zip">
                        {this.state.property.city}, {this.state.property.state} {this.state.property.zip_code}
                    </div>
                </div>
                <div className="property-detail-metrics-container">
                    Metrics Continer
                </div>
                <div className="property-detail-google-map">
                    <div style={{ height: "641px", width: "576px" }} className="google-maps-api">
                        <WrappedMap
                            googleMapURL={`https://maps.googleapis.com/maps/api/js?key=${process.env.REACT_APP_GOOGLE_API_KEY}`}
                            loadingElement={<div style={{ height: "100%" }} />}
                            containerElement={<div style={{ height: "100%" }} />}
                            mapElement={<div style={{ height: "100%" }} />}
                        />
                    </div>
                </div>
                <div className="property-detail-apartments-container">
                    <div className="property-detail-apartments-table">
                        <table>
                            <tbody>
                                <tr>
                                    <th>Apartment Id</th>
                                    <th>Occupied</th>
                                    <th>Tenant</th>
                                    <th>Rent</th>
                                    <th>Move in Date</th>
                                </tr>
                                {this.renderTableData()}
                            </tbody>
                        </table>
                    </div>
                </div>
                <div>
                    <PropertyDetailModal 
                        apartmentPressed={this.state.apartmentPressed} 
                        handleApartmentsAddRender={this.handleApartmentsAddRender}
                    />
                </div>
            </div>
        )
    }
 
    render() {
        // console.log("Checking for state", this.state)

        return (
            <div>{this.state.property && this.renderDetails()}</div>
        )
    }
}

// const mapStateToProps = {

// }

export default connect(null, { tooglePropertyModal }) (PropertyDetail)
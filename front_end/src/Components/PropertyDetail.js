import React from 'react'
import Map from "../Components/Map"
import { withScriptjs, withGoogleMap } from "react-google-maps"

class PropertyDetail extends React.Component {

    state = {

    }

    // I think you will need to make a custom route or include all of the apartmens for this property
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

    renderTableData = () => {
        return this.state.apartments.map(apartment => {
            return <tr>
                <td>{apartment.name}</td>
                <td>{apartment.occupied ? "true" : "false"}</td>
                <td>{apartment.tenant ? apartment.tenant.name : ""}</td>
                <td>${this.state.property.price_per_unit}</td>
                <td>{apartment.move_in_date}</td>
            </tr>
        })
    }

    renderDetails = () => {
        const WrappedMap = withScriptjs(withGoogleMap(Map))

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
            </div>
        )
    }
 
    render() {
        return (
            <div>{this.state.property && this.renderDetails()}</div>
        )
    }
}

export default PropertyDetail
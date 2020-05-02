import React from "react"
import { connect } from "react-redux"
import { getOwnerProperties } from "../actions"
import PropertyCard from "../Components/PropertyCard"
import Map from "../Components/Map"
import { withScriptjs, withGoogleMap } from "react-google-maps"
import { Link } from "react-router-dom"

class PropertiesContainer extends React.Component {
    
    componentDidUpdate(prevProps) {
        if (this.props.currentUser !== prevProps.currentUser) {
            const owner_id = this.props.currentUser.id

            fetch(`http://localhost:3001/api/v1/owner_properties/${owner_id}`)
            .then(response => response.json())
            .then(response => this.props.getOwnerProperties(response))
        }
    }

    render() {
        const WrappedMap = withScriptjs(withGoogleMap(Map))
        
        return (
            <div style={{ marginBottom: "200px"}}>
                <div className="properties">
                     {this.props.properties.map(property => {
                        return <Link to={`/properties/${property.id}`}>
                            <PropertyCard  key={property.id} property={property} />
                        </Link>
                    })}
                </div>
                <div style={{height: "641px", width: "576px"}} className="google-maps-api">
                    <WrappedMap 
                        googleMapURL={`https://maps.googleapis.com/maps/api/js?key=${process.env.REACT_APP_GOOGLE_API_KEY}`}
                        loadingElement={<div style={{ height: "100%" }} />}
                        containerElement={<div style={{ height: "100%" }} />}
                        mapElement={<div style={{ height: "100%" }} />}
                    />
                </div>
            </div>
        )
    }
}

const mapStateToProps = (state) => {
    return {
        currentUser: state.currentUser,
        properties: state.properties
    }
}

export default connect(mapStateToProps, { getOwnerProperties }) (PropertiesContainer)
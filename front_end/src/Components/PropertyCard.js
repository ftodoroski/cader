import React from 'react'

class PropertyCard extends React.Component {

    monthyIncome = () => {
        const occupiedUnits = this.props.property.occupied_units
        const pricePerUnit = this.props.property.price_per_unit

        return occupiedUnits * pricePerUnit
    }

    render() {
        // console.log(this.props.property)
        return (
            <div className="property-card">
                <div className="property-card-image">
                    <img src={this.props.property.images[0]} style={{width: "161px",  height: "108px"}} alt="House"/>
                </div>
                <div className="property-card-address">
                    <div className="property-card-street">
                        <strong>{this.props.property.address}</strong>
                    </div>
                    <div className="property-card-city-state-zip">
                        {this.props.property.city}, {this.props.property.state} {this.props.property.zip_code}
                    </div>
                </div>
                <br />
                <div className="property-card-info">
                    <table className="property-card-table">
                        <tbody className="property-card-table-body">
                            <tr className="property-card-table-row">
                                <th className="property-card-table-header">Occupied Units</th>
                                <td className="property-card-table-data">{this.props.property.occupied_units} out of {this.props.property.number_of_units}</td>
                            </tr>
                            <tr>
                                <th className="property-card-table-header">Monthly Rental Income</th>
                                <td className="property-card-table-data">{this.monthyIncome()}</td>
                            </tr>
                            <tr>
                                <th className="property-card-table-header">Mortgage Payable</th>
                                <td className="property-card-table-data">{this.props.property.mortgage_payable}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div className="add-new-tenant-button">
                    <button>
                        {/* this would be where the modal will live and when its pressed it brings up a form to add a new tenant  */}
                        Add a New Tenant
                    </button>
                </div>
            </div>
        )
    }
}

export default PropertyCard
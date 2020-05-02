import React from "react"
import { connect } from "react-redux"
import { getUnoccupiedUnits } from "../actions"

class UnoccupiedUnitsContainer extends React.Component {

    componentDidUpdate(prevProps) {
        if (this.props.currentUser !== prevProps.currentUser) {
            const ownerId = this.props.currentUser.id

            fetch(`http://localhost:3001/api/v1/unoccupied_units/${ownerId}`)
            .then(response => response.json())
            .then(data => this.props.getUnoccupiedUnits(data))
        }
    }

    renderTableData = () => {
        return this.props.unoccupiedUnits.map(unit => {
            return (
                <tr>
                    <td>{unit.name}</td>
                    <td>{`${unit.property.address} ${unit.property.city}, ${unit.property.state} ${unit.property.country} ${unit.property.zip_code}`}</td>
                    <td>${unit.property.price_per_unit}</td>
                    <button>Add a Tenanat</button>
                </tr>
            )
        })
    }
    
    render() {  
        

        return (
            <div className="unoccupied-units-container" >
                <table className="unoccupied-units-table">
                    <tbody>
                        <tr>
                            <th>Unit</th>
                            <th>Location</th>
                            <th>Rent Price</th>
                        </tr>
                        {this.renderTableData()}
                    </tbody>
                </table>
            </div>
        )
    }
}

const mapStateToProps = (state) => {
    return {
        currentUser: state.currentUser, 
        unoccupiedUnits: state.unoccupiedUnits
    }
}

export default connect(mapStateToProps, { getUnoccupiedUnits }) (UnoccupiedUnitsContainer)
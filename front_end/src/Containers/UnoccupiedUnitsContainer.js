import React from "react"
import { connect } from "react-redux"
import { getUnoccupiedUnits, toogleModal } from "../actions"
import ModalExampleDimmer from "../Components/Modal"

class UnoccupiedUnitsContainer extends React.Component {

    state = {
        apartmentPressed: null, 
        newUnoccupiedList: []
    }

    componentDidUpdate(prevProps, prevState) {
        if (this.props.currentUser !== prevProps.currentUser) {
            const ownerId = this.props.currentUser.id
            
            fetch(`http://localhost:3001/api/v1/unoccupied_units/${ownerId}`)
            .then(response => response.json())
            .then(data => this.props.getUnoccupiedUnits(data))
        } else if (prevProps.unoccupiedUnits !== this.props.unoccupiedUnits) {
            
        }
    }

    componentDidMount () {
        if (this.props.currentUser) {
            const ownerId = this.props.currentUser.id

            fetch(`http://localhost:3001/api/v1/unoccupied_units/${ownerId}`)
            .then(response => response.json())
            .then(data => this.props.getUnoccupiedUnits(data))
        }
    }

    renderToogleModal = (e) => {
        this.setState({apartmentPressed: e.target.value})
        this.props.toogleModal(true)
    }

    renderTableData = () => {
        return this.props.unoccupiedUnits.map(unit => {
            return (
                <tr>
                    <td>{unit.name}</td>
                    <td>{`${unit.property.address} ${unit.property.city}, ${unit.property.state} ${unit.property.country} ${unit.property.zip_code}`}</td>
                    <td>${unit.property.price_per_unit}</td>
                    <button 
                        onClick={(e) => this.renderToogleModal(e)} 
                        value={unit.id} 
                    >
                    Add a Tenanat
                    </button>
                </tr>
            )
        })
    }

    resetApartmentState = () => {
        this.setState({
            apartmentPressed: null
        })
    }
    
    render() {  
        console.log("Props", this.props)
        console.log("State", this.state)

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
                <div className="unoccupied-units-modal">
                    <ModalExampleDimmer 
                        apartmentPressed={this.state.apartmentPressed}
                        resetApartmentState={this.resetApartmentState}
                    />
                </div>
            </div>
        )
    }
}

const mapStateToProps = (state) => {
    return {
        currentUser: state.currentUser, 
        unoccupiedUnits: state.unoccupiedUnits,
        modalToogle: state.modalToogle,
        modalDimmer: state.modalDimmer
    }
}

export default connect(mapStateToProps, { getUnoccupiedUnits, toogleModal }) (UnoccupiedUnitsContainer)
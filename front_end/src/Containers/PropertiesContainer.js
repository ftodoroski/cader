import React from 'react'
import { connect } from 'react-redux'

class PropertiesContainer extends React.Component {
    render() {
        // console.log(this.props.currentUser)
        return (
            <div>PropertiesContainer</div>
        )
    }
}

const mapStateToProps = (state) => {
    return {
        currentUser: state.currentUser
    }
}

export default connect(mapStateToProps) (PropertiesContainer)
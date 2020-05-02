import React from 'react'
import Login from '../Components/Login'
import { connect } from 'react-redux'
import history from '../history'
import { logOut } from '../actions'
// import { bindActionCreators } from 'redux'
import {withRouter} from 'react-router'

class Navbar extends React.Component {

    handleLogOut = () => {
        localStorage.removeItem("token")
        this.props.logOut()
        this.props.history.push('/')
    }

    render () {
        // console.log(history.location)

        return (
            <div>
                <div>NavBar</div>
                {history.location.pathname === "/" ? <Login /> : null}
                {localStorage.token && <button onClick={this.handleLogOut}>Log out</button>}
            </div>
        )
    }
}

export default withRouter(connect(null, { logOut} ) (Navbar))
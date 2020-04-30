import  React  from "react";
import { connect } from 'react-redux'
import { handleChange, handleSignupLogin } from '../actions'
import history from '../history'


class Login extends React.Component {
// Need the onSubmit handle
// Properly Containerize

    handleSubmit = (e) => {
        e.preventDefault()

        const obj = {
            method: 'POST',
            headers: {
                'content-type': 'application/json',
                accept: 'application/json'
            },
            body: JSON.stringify({
                email: this.props.email,
                password: this.props.password,
            })
        }

        fetch('http://127.0.0.1:3001/api/v1/login', obj).then(response => response.json()).then(response => {
            localStorage.token = response.token
            this.props.handleSignupLogin(response)
            history.push('/properties')
        })
    }

    render() {
        // console.log(this.props)
        return (
            <div>
                <form onSubmit={this.handleSubmit}>
                    <label>Email</label>
                    <input name="email" onChange={(e) => this.props.handleChange(e)} className="login" value={this.props.email}/>
                    
                    <label>Password</label>
                    <input name="password" onChange={(e) => this.props.handleChange(e)} className="login" type="password" value={this.props.password}/>

                    <button type="submit">Log In</button>
                </form>
            </div>
        )
    }
}

const mapStateToProps = (state) => {
    return {
        email: state.login.email, 
        password: state.login.password,
        currentUser: state.currentUser
    }
}

const mapDispatchToState = {
    handleChange, 
    handleSignupLogin
}

export default connect(mapStateToProps, mapDispatchToState) (Login)

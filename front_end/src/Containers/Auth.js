import React from 'react'
import Signup from "../Components/Signup";
import { useHistory } from 'react-router-dom'

const Auth = () => {
    const history = useHistory()
        return (
            <div>
                <div>Auth</div>
                <Signup history={history}/>
            </div>
        )
        
}

export default Auth
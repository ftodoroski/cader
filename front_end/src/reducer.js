const defualtState = {
    login: {
        email: "", 
        password: ""
    }, 
    signup: {
        name: "", 
        email: "", 
        password: "", 
        phone_number: "", 
    }, 
    currentUser: {}
}

export const reducer = (prevState = defualtState, action) => {
    switch(action.type) {
        case "HANDLE_CHANGE":
            return { ...prevState, [action.payload.target.className]: { ...prevState[action.payload.target.className], [action.payload.target.name]: action.payload.target.value }}
            break;
        case "SET_CURRENT_USER":
            return { ...prevState, currentUser: action.payload }
            break;
        case "AUTO_LOGIN":
            return { ...prevState, currentUser: action.payload }
            break;
        case "LOG_OUT":
            return { ...prevState, currentUser: '' }
            break;
        default:
            return prevState
    }
}


export const handleChange = (e) => {
    return { type: "HANDLE_CHANGE", payload: e}
}

export const handleSignupLogin = (response) => {
    return { type: "SET_CURRENT_USER", payload: response.owner }
}

export const autoLogin = (response) => {
    return { type: "AUTO_LOGIN", payload: response.owner }
}

export const logOut = () => {
    return { type: "LOG_OUT", payload: null }
}
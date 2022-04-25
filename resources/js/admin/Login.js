import axios from "axios";
import React from "react";

const Login = () => {
    const [username, setUserName] = React.useState();
    const [password, setPassword] = React.useState();
    const [err, setErr] = React.useState();

    if ("token_user_theanimals" in localStorage){
        window.location = "../admin/home"
    }

    const submitLogin = (e) => {
        e.preventDefault();

        var formData = new FormData($('#frmLogin')[0]);

        axios.post('../api/login', formData).then((res) => {
            if (res.data.status == 'success') {
                localStorage.setItem('token_user_theanimals', res.data.token)
                localStorage.setItem('fullname_user_theanimals', res.data.fullname)
                history.back()
            } else {
                setErr(res.data.status)
                console.log(res.data);
            }
        })
    }

    return (
        <div id="wrapper m-0 " style={{ background: '#28d9d6', height: '100vh', paddingTop: '15vh' }}>
            <div className="card card-authentication1 mx-auto py-auto" >
                <div className="card-body">
                    <div className="card-content p-2">
                        <div className="text-center">
                            <img src="../images/logo.png" className="img-fluid" width="200px" alt="logo icon" />
                        </div>
                        <div className="card-title text-uppercase text-dark text-center fs-3 py-3">L O G I N</div>
                        <p className="text-cetner text-danger">{err}</p>
                        <form id="frmLogin" onSubmit={submitLogin}>
                            <div className="form-group">
                                <label htmlFor="exampleInputPhone" className="text-dark"><i className="icon-user"></i> Username</label>
                                <div className="position-relative has-icon-right">
                                    <input type="text" id="exampleInputPhone" onChange={e => setUserName(e.target.value)}
                                        name="username" className="form-control input-shadow text-dark" placeholder="Enter Your Phone" />
                                </div>
                            </div>
                            <div className="form-group">
                                <label htmlFor="exampleInputPassword" className="text-dark"><i className="icon-lock"></i> Password</label>
                                <div className="position-relative has-icon-right">
                                    <input type="password" id="exampleInputPassword" onChange={e => setPassword(e.target.value)}
                                        name="password" className="form-control input-shadow text-dark" placeholder="Choose Password" />
                                </div>
                            </div>
                            <button type="submit" form="frmLogin" className="btn btn-light btn-block waves-effect waves-light">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    )
}


export default Login;
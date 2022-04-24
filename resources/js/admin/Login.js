import React from "react";

const Login = () => {
    return (
        <div id="wrapper">
            <div className="card card-authentication1 mx-auto my-4">
                <div className="card-body">
                    <div className="card-content p-2">
                        <div className="text-center">
                            <img src="./img/logo.png" width="300px" alt="logo icon" />
                        </div>
                        <div className="card-title text-uppercase text-center py-3">L O G I N</div>

                        <form action="" method="post">
                            <div className="form-group">
                                <label for="exampleInputName"><i className="icon-user"></i> Username</label>
                                <div className="position-relative has-icon-right">
                                    <input type="text" id="exampleInputPhone" name="username" className="form-control input-shadow" placeholder="Enter Your Phone" required />
                                    <div className="form-control-position">

                                    </div>
                                </div>
                            </div>
                            <div className="form-group">
                                <label for="exampleInputPassword"><i className="icon-lock"></i> Password</label>
                                <div className="position-relative has-icon-right">
                                    <input type="password" id="exampleInputPassword" name="password" className="form-control input-shadow" placeholder="Choose Password" required />
                                    <div className="form-control-position">

                                    </div>
                                </div>
                            </div>
                            <button type="submit" name="submit_login" value="true" className="btn btn-light btn-block waves-effect waves-light">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Login;
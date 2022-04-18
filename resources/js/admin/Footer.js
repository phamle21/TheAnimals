import React, { Fragment } from "react";
import { Helmet } from "react-helmet";

const Footer = () => {
    return (
        <Fragment>
            <footer className="footer">
                <div className="container">
                    <div className="text-center">
                        Copyright © 2022 The Animals
                    </div>
                </div>
            </footer>

            <div className="right-sidebar">
                <div className="switcher-icon">
                    <i className="zmdi zmdi-settings zmdi-hc-spin"></i>
                </div>
                <div className="right-sidebar-content">

                    <p className="mb-0">Gaussion Texture</p>
                    <hr />

                    <ul className="switcher">
                        <li id="theme1"></li>
                        <li id="theme2"></li>
                        <li id="theme3"></li>
                        <li id="theme4"></li>
                        <li id="theme5"></li>
                        <li id="theme6"></li>
                    </ul>

                    <p className="mb-0">Gradient Background</p>
                    <hr />

                    <ul className="switcher">
                        <li id="theme7"></li>
                        <li id="theme8"></li>
                        <li id="theme9"></li>
                        <li id="theme10"></li>
                        <li id="theme11"></li>
                        <li id="theme12"></li>
                        <li id="theme13"></li>
                        <li id="theme14"></li>
                        <li id="theme15"></li>
                    </ul>

                </div>
            </div>

            <Helmet>
                <script src="../assets_admin/js/jquery.min.js"></script>
                <script src="../assets_admin/js/popper.min.js"></script>
                <script src="../assets_admin/js/bootstrap.min.js"></script>
                <script src="../assets_admin/plugins/simplebar/js/simplebar.js"></script>
                <script src="../assets_admin/js/sidebar-menu.js"></script>
                <script src="../assets_admin/js/app-script.js"></script>
                <script src="../assets_admin/js/custom.js"></script>
            </Helmet>
        </Fragment>
    )
}

export default Footer;
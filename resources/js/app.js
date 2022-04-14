require('./bootstrap');

import React, { Fragment } from 'react';
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import * as ReactDOMClient from 'react-dom/client';
import '../css/App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { Helmet } from 'react-helmet';
import { Header, Footer, Home, About, Info, Search, Detail } from './client';
import { HeaderAdmin, FooterAdmin, HomeAdmin } from './admin';

const ClientRender = ({ component }) => {
    return (
        <Fragment>
            <Header />
            {component}
            <Footer />
        </Fragment>
    )
}

const AdminRender = ({ component }) => {
    $(document).ready(function () {
        $('body').addClass("bg-theme bg-theme1")
    })

    return (
        <Fragment>
            <Helmet>
                <link href="./assets_admin/css/pace.min.css" rel="stylesheet" />
                <script src="./assets_admin/js/pace.min.js"></script>

                <link href="./assets_admin/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />

                <link href="./assets_admin/plugins/simplebar/css/simplebar.css" rel="stylesheet" />

                <link href="./assets_admin/css/bootstrap.min.css" rel="stylesheet" />

                <link href="./assets_admin/css/animate.css" rel="stylesheet" type="text/css" />

                <link href="./assets_admin/css/icons.css" rel="stylesheet" type="text/css" />

                <link href="./assets_admin/css/sidebar-menu.css" rel="stylesheet" />

                <link href="./assets_admin/css/app-style.css" rel="stylesheet" />

                <link href="./assets_admin/css/my-style.css" rel="stylesheet" />
                <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
            </Helmet>
            <div id="wrapper" className="">
                <HeaderAdmin />

                <div className="clearfix"></div>

                <div className="content-wrapper">
                    <div className="container-fluid">
                        {component}
                    </div>
                </div>

                <FooterAdmin />
            </div>
        </Fragment>
    )
}
function App() {

    return (
        <div className="App">
            <Routes>
                {/* Client */}
                <Route path="/"
                    element={<ClientRender component={<Home />} />} />
                <Route path="/how_it_work"
                    element={<ClientRender component={<About />} />} />
                <Route path="/info/list"
                    element={<ClientRender component={<Info />} />} />
                <Route path="/info/search"
                    element={<ClientRender component={<Search />} />} />
                <Route path="/detail/:Id"
                    element={<ClientRender component={<Detail />} />} />

                {/* Admin */}
                <Route path="/admin"
                    element={<AdminRender component={<HomeAdmin />} />} />
            </Routes>
        </div>
    );
}

export default App;

const root = ReactDOMClient.createRoot(document.getElementById("root"));
root.render(
    <React.StrictMode>
        <BrowserRouter>
            <App />
        </BrowserRouter>
    </React.StrictMode>
);


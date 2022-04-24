require('./bootstrap');

import React, { Fragment } from 'react';
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import * as ReactDOMClient from 'react-dom/client';
import '../css/App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import * as Client from './client';
import * as Admin from './admin_link';
import swal from 'sweetalert';

const ClientRender = ({ component }) => {
    return (
        <Fragment>
            <Client.Header />
            {component}
            <Client.Footer />
        </Fragment>
    )
}

const AdminRender = ({ component }) => {

    React.useEffect(() => {
        $('.sidebar-link').removeClass('active_admin')

        $('.sidebar-link').each(function () {
            if (this.href == location.href) {
                this.classList.add('active_admin')
            }
        })
    });

    if ("token_user_theanimals" in localStorage) {

        return (
            <div id="wrapper" className="">
                <Admin.Head />
                <Admin.Header />
                <div className="clearfix"></div>

                <div className="content-wrapper">
                    <div className="container-fluid ">
                        {component}
                    </div>
                </div>
                <Admin.Footer />
                <Admin.FooterJs />
            </div>
        )

    } else {
        swal({
            title: "Login",
            text: "Bạn chưa đăng nhập, hãy đăng nhập để trải nghiệm trang web này!",
            icon: "warning",
        }).then(() => {
            window.location = "../admin/login"
        });

    }


}

function App() {

    return (
        <div className="App">
            <Routes>
                {/* Client */}
                <Route path="/"
                    element={<ClientRender component={<Client.Home />} />} />
                <Route path="/how_it_work"
                    element={<ClientRender component={<Client.About />} />} />
                <Route path="/info/list"
                    element={<ClientRender component={<Client.Info />} />} />
                <Route path="/info/search"
                    element={<ClientRender component={<Client.Search />} />} />
                <Route path="/detail/animal-:Id"
                    element={<ClientRender component={<Client.Detail />} />} />

                {/* Admin */}
                <Route path="/admin/login"
                    element={<Admin.Login />} />
                <Route path="/admin/home"
                    element={<AdminRender component={<Admin.Home />} />} />
                <Route path="/admin/animal-list"
                    element={<AdminRender component={<Admin.Animal />} />} />
                <Route path="/admin/animal-detail-:Id"
                    element={<AdminRender component={<Admin.Detail />} />} />
                <Route path="/admin/animal-add"
                    element={<AdminRender component={<Admin.AnimalAdd />} />} />

                <Route path="/admin/type-nganh"
                    element={<AdminRender component={<Admin.TypeNganh />} />} />
                <Route path="/admin/type-lop"
                    element={<AdminRender component={<Admin.TypeLop />} />} />
                <Route path="/admin/type-bo"
                    element={<AdminRender component={<Admin.TypeBo />} />} />
                <Route path="/admin/type-ho"
                    element={<AdminRender component={<Admin.TypeHo />} />} />
            </Routes>
        </div>
    );
}

export default App;

const root = ReactDOMClient.createRoot(document.getElementById("root"));
root.render(
    <React.StrictMode >
        <BrowserRouter>
            <App />
        </BrowserRouter>
    </React.StrictMode >
)



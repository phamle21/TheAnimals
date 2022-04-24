import Header from './admin/Header';
import Footer from './admin/Footer';
import Home from './admin/Home';
import Animal from './admin/Animal';
import Detail from './admin/AnimalDetail';
import TypeNganh from './admin/TypeNganh';
import TypeLop from './admin/TypeLop';
import TypeBo from './admin/TypeBo';
import TypeHo from './admin/TypeHo';
import AnimalAdd from './admin/AnimalAdd';
import Login from './admin/Login';

import { Fragment } from 'react';
import { Helmet } from 'react-helmet';

const Head = () => {
    return (
        <Fragment>
            <link href="../assets_admin/css/pace.min.css" rel="stylesheet" />
            <link href="../assets_admin/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
            <link href="../assets_admin/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
            <link href="../assets_admin/css/animate.css" rel="stylesheet" type="text/css" />
            <link href="../assets_admin/css/icons.css" rel="stylesheet" type="text/css" />
            <link href="../assets_admin/css/sidebar-menu.css" rel="stylesheet" />
            <link href="../assets_admin/css/app-style.css" rel="stylesheet" />
            <link href="../assets_admin/css/my-style.css" rel="stylesheet" />
            <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        </Fragment>
    )
}

const FooterJs = () => {
    return (
        <Helmet>
            <script src="../assets_admin/js/jquery.min.js"></script>
            <script src="../assets_admin/js/popper.min.js"></script>
            <script src="../assets_admin/js/bootstrap.min.js"></script>
            <script src="../assets_admin/plugins/simplebar/js/simplebar.js"></script>
            <script src="../assets_admin/js/sidebar-menu.js"></script>
            <script src="../assets_admin/js/app-script.js"></script>
            <script src="../assets_admin/js/custom.js"></script>
        </Helmet>
    )
}
export {
    Head, Header, Footer, Home, Login,
    Animal, Detail, FooterJs, TypeNganh,
    TypeLop, TypeBo, TypeHo, AnimalAdd
}
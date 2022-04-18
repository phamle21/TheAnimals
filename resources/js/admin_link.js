import Header from './admin/Header';
import Footer from './admin/Footer';
import Home from './admin/Home';
import Animal from './admin/Animal';
import Detail from './admin/AnimalDetail';
import { Fragment } from 'react';

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

export { Head, Header, Footer, Home, Animal, Detail }
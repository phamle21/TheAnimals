require('./bootstrap');

import React from 'react';
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import * as ReactDOMClient from 'react-dom/client';
import '../css/App.css';
import 'bootstrap/dist/css/bootstrap.min.css';

import Header from './component/Header';
import Home from './component/Home';
import About from './component/About';
import Info from './component/Info';
import Search from './component/Search';
import Footer from './component/Footer';
import Detail from './component/Detail';

const Client = () => {
    return (
        <div className="App">
            <Header />
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/how_it_work" element={<About />} />
                <Route path="/info/list" element={<Info />} />
                <Route path="/info/search" element={<Search />} />
                <Route path="/detail/:Id" element={<Detail />} />
            </Routes>
            <Footer />
        </div>
    );
}

export default Client;



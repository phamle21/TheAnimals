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
import Footer from './component/Footer';
import Detail from './component/Detail';

function App() {
    return (
        <div className="App">
            <Header />
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/how_it_work" element={<About />} />
                <Route path="/info/list" element={<Info />} />
                <Route path="/detail/:Id" element={<Detail />} />
            </Routes>
            <Footer />
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


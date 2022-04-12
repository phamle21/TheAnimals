require('./bootstrap');

import React, { Fragment } from 'react';
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import * as ReactDOMClient from 'react-dom/client';
import '../css/App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import {Header, Footer, Home, About, Info, Search, Detail} from './client';

const ClientRender = ({ component }) => {
    return (
        <Fragment>
            <Header />
            {component}
            <Footer />
        </Fragment>
    )
}

function App() {

    return (
        <div className="App">
            <Routes>
                <Route path="/"
                    element={<ClientRender
                        component={<Home />}
                    />}
                />
                <Route path="/how_it_work"
                    element={<ClientRender
                        component={<About />}
                    />}
                />
                <Route path="/info/list"
                    element={<ClientRender
                        component={<Info />}
                    />}
                />
                <Route path="/info/search"
                    element={<ClientRender
                        component={<Search />}
                    />}
                />
                <Route path="/detail/:Id"
                    element={<ClientRender
                        component={<Detail />}
                    />}
                />
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


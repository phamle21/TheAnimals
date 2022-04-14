import React from 'react';
import { Link } from 'react-router-dom';
import '../../css/Header.css';
import { Button, Navbar, Nav, Container } from 'react-bootstrap';

const Header = () => {
    return (
        <nav className="navbar navbar-expand-md navbar-light bg-transparent header" id="navbar">
            <div className="container">
                <Link to="/" className="navbar-brand logo">.theAnimals</Link>

                <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>

                <div className="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul className="navbar-nav me-0 mb-2 mb-lg-0 w-100 d-flex justify-content-end">
                        <li className="nav-item ">
                            <Link to="/" className="nav-link nav-list-item__link" aria-current="page">Trang chủ</Link>
                        </li>
                        <li className="nav-item ">
                            <Link to="/how_it_work" className="nav-link nav-list-item__link">Cách hoạt động</Link>
                        </li>
                        <li className="nav-item ">
                            <Link to="/info/list" className="nav-link nav-list-item__link">Tham quan</Link>
                        </li>
                        <li className="nav-item ">
                            <Link to="/info/search" className="nav-link nav-list-item__link">Tìm kiếm</Link>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    )
}

export default Header;

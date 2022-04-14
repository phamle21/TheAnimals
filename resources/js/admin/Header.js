import React, { Fragment } from "react";
import { Link } from 'react-router-dom';

const Header = () => {
    return (
        <Fragment>

            <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
                <div className="brand-logo">
                    <Link to="/admin/">
                        <img src="./images/logo.png" className="logo-icon"
                            style={{ borderRadius: '50px', backgroundColor: 'greenyellow' }} alt="" />
                        <h5 className="d-inline text-normal fw-bold">.theAnimals</h5>
                    </Link>
                </div>
                <ul className="sidebar-menu do-nicescrol">
                    <li className="sidebar-header fs-4 fw-bold">Quản lí</li>

                    <li className="sidebar-item">
                        <Link to="/admin/sanpham">
                            <i class="far fa-alicorn"></i> <span>Động vật</span>
                        </Link>
                    </li>

                    <li className="sidebar-item">
                        <Link to="/admin/loaihang">
                            <i class="far fa-paw"></i> <span>Phân loại</span>
                        </Link>
                    </li>
                </ul>
                <div className="go_shop"><Link to="/">Đến trang người dùng</Link></div>
            </div>

            <header className="topbar-nav">
                <nav className="navbar navbar-expand fixed-top">
                    <ul className="navbar-nav mr-auto align-items-center">
                        <li className="nav-item">
                            <a className="nav-link toggle-menu" >
                                <i className="icon-menu menu-icon"></i>
                            </a>
                        </li>
                    </ul>

                    <ul className="navbar-nav align-items-center right-nav-link">
                        <li className="nav-item dropdown-lg">
                            <a className="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" >
                                <i className="fa fa-bell-o"></i></a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                                <span className="user-profile"><img src="./assets_admin/images/avt_admin.png" className="img-circle" alt="amin_avatar" /></span>
                            </a>
                            <ul className="dropdown-menu dropdown-menu-right bg-light me-md-4">
                                <li className="dropdown-item user-details">
                                    <a >
                                        <div className="media">
                                            <div className="avatar">
                                                <img className="align-self-start mr-3" src="./assets_admin/images/avt_admin.png" alt="amin_avatar" />

                                            </div>
                                            <div className="media-body">
                                                <h6 className="mt-2 user-title">Phạm Lê</h6>
                                                <p className="user-subtitle">Adminstator</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li className="dropdown-divider"></li>
                                <li className="dropdown-item"><a data-toggle="modal" data-target="#modalEditProfile"><i className="fa fa-user-circle"></i> Profile</a></li>
                                <li className="dropdown-divider"></li>
                                <li className="dropdown-item"><a href="./xuly_admin/logout.php"><i className="icon-power mr-2"></i> Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </header>
        </Fragment >
    )
}


export default Header;
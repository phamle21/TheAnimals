import React, { Fragment } from "react";
import { Link } from 'react-router-dom';

const Header = () => {

    const logout = () => {
        localStorage.removeItem('token_user_theanimals')
        localStorage.removeItem('fullname_user_theanimals')
        window.location = "../admin/login"
    }

    var fullname_user = localStorage.getItem('fullname_user_theanimals')

    return (
        <Fragment>
            <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
                <div className="brand-logo">
                    <Link to="/admin/home">
                        <img src="../images/logo.png" className="logo-icon"
                            style={{ borderRadius: '50px', backgroundColor: 'greenyellow' }} alt="" />
                        <h5 className="d-inline text-normal fw-bold">.theAnimals</h5>
                    </Link>
                </div>
                <ul className="list-unstyled ps-0 sidebar-menu do-nicescrol">
                    <li className="sidebar-header fs-3 fw-bold">Quản lí</li>

                    <li className="mb-1 sidebar-item">
                        <button className="btn btn-toggle align-items-center rounded sidebar-link text-white fs-4" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
                            Động Vật <i className="fa fa-angle-down"></i>
                        </button>
                        <div className="collapse show" id="home-collapse">
                            <ul className="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li className="sidebar-item p-3 my-2">
                                    <Link to="/admin/animal-list" className="sidebar-link ms-5 pe-5 p-3 fs-5">
                                        <i className="far fa-alicorn m-0"></i> <span>Danh sách động vật</span>
                                    </Link>
                                </li>
                                <li className="sidebar-item p-3 my-2">
                                    <Link to="/admin/animal-add" className="sidebar-link ms-5 pe-5 p-3 fs-5">
                                        <i className="far fa-alicorn m-0"></i> <span>Thêm động vật</span>
                                    </Link>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li className="mb-1 sidebar-item">
                        <button className="btn btn-toggle align-items-center rounded sidebar-link text-white fs-4" data-bs-toggle="collapse" data-bs-target="#type-collapse" aria-expanded="true">
                            Phân loại <i className="fa fa-angle-down"></i>
                        </button>
                        <div className="collapse" id="type-collapse">
                            <ul className="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li className="sidebar-item my-3 p-3">
                                    <Link to="/admin/type-nganh" className="sidebar-link ms-5 pe-5 p-3 fs-5">
                                        <i className="far fa-alicorn m-0"></i> <span>Ngành</span>
                                    </Link>
                                </li>
                                <li className="sidebar-item my-3 p-3">
                                    <Link to="/admin/type-lop" className="sidebar-link ms-5 pe-5 p-3 fs-5">
                                        <i className="far fa-alicorn m-0"></i> <span>Lớp</span>
                                    </Link>
                                </li>
                                <li className="sidebar-item my-3 p-3">
                                    <Link to="/admin/type-bo" className="sidebar-link ms-5 pe-5 p-3 fs-5">
                                        <i className="far fa-alicorn m-0"></i> <span>Bộ</span>
                                    </Link>
                                </li>
                                <li className="sidebar-item my-3 p-3">
                                    <Link to="/admin/type-ho" className="sidebar-link ms-5 pe-5 p-3 fs-5">
                                        <i className="far fa-alicorn m-0"></i> <span>Họ</span>
                                    </Link>
                                </li>
                            </ul>
                        </div>
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
                        <li className="nav-item">
                            <a className="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                                <span className="user-profile"><img src="../assets_admin/images/avt_admin.png" className="img-circle" alt="amin_avatar" /></span>
                            </a>
                            <ul className="dropdown-menu dropdown-menu-right bg-light me-md-4">
                                <li className="dropdown-item user-details">
                                    <a >
                                        <div className="media">
                                            <div className="avatar">
                                                <img className="align-self-start mr-3" src="../assets_admin/images/avt_admin.png" alt="amin_avatar" />

                                            </div>
                                            <div className="media-body">
                                                <h6 className="mt-2 user-title">{fullname_user}</h6>
                                                <p className="user-subtitle">Adminstator</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li className="dropdown-divider"></li>
                                <li className="dropdown-divider"></li>
                                <li className="dropdown-item">
                                    <p onClick={logout} className="cursor-pointer">
                                        <i className="icon-power mr-2"></i> Logout
                                    </p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </header>
        </Fragment >
    )
}


export default Header;
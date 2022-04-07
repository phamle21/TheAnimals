import React from 'react';
import './Home.css';
import Img from "../../../public/assets/img/home_img.png";


const Home = () => {

    document.title = 'Trang chủ | The Animals'

    return (
        <div className='container-fluid home vh-100'>
            <div className="container">
                <div className='row'>
                    <div className='col-md home-content'>
                        <p className='title home-title'>Giúp Bạn</p>
                        <p className='home-description'>Dễ Dàng Tra Cứu Thông Tin <br></br> Về Những Con Vật Mà Bạn Yêu Thích</p>
                        <div className='home-search'>
                            <input className='search-input' type="search" placeholder="Nhập vào đây để bắt đầu tìm kiếm..."></input>
                            <i className="fas fa-search search-icon"></i>
                        </div>
                    </div>

                    <div className='col-md home-image'>
                        <img className='home-img' src={Img} alt='home-img'></img>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Home;

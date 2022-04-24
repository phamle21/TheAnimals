import React from 'react';
import '../../css/Home.css';
import Img from "../../../public/assets/img/home_img.png";
import { useNavigate } from 'react-router-dom';
import swal from 'sweetalert';

const Home = () => {

    document.title = 'Trang chủ | The Animals'
    const navigate = useNavigate();

    const goSearch = React.useCallback(() => {

        $('.nav-link').removeClass('active')
        $('.nav-link').eq(3).addClass("active")
        const temp = $('#search-home').val()
        $(document).ready(() => {
            $('#input-search-info').val(temp)
        })

        navigate('/info/search', { replace: true })
    }, [navigate]);

    return (
        <div className='container-fluid home vh-100'>
            <div className="container">
                <div className='row'>
                    <div className='col-md home-content'>
                        <p className='title home-title'>Giúp Bạn</p>
                        <p className='home-description'>Dễ Dàng Tra Cứu Thông Tin <br></br> Về Những Con Vật Mà Bạn Yêu Thích</p>
                        <div className='home-search mt-2'>
                            <form action="" id="frmHomeSearch" className="d-flex align-items-center" onSubmit={goSearch} >
                                <input className='search-input my-0' id="search-home" type="search" placeholder="Nhập vào đây để bắt đầu tìm kiếm..."></input>
                                <button className="fas fa-arrow-right search-icon h-100" form="frmHomeSearch" type="submit" ></button>
                            </form>
                        </div>
                    </div>

                    <div className='col-lg home-image'>
                        <img className='home-img' src={Img} alt='home-img'></img>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Home;

import React from 'react';
import { Link } from 'react-router-dom';
import { useParams } from 'react-router-dom';
import './Detail.css';
import Animal from './AnimalItem';
import axios from "axios"

const Detail = () => {

    let { Id } = useParams();

    const [animal, setAnimal] = React.useState({ ten_tieng_viet: 'Chi tiết động vật', id: Id });
    const [media, setMedia] = React.useState([{}]);
    const [baoton, setBaoTon] = React.useState([{}]);
    const [other, setOther] = React.useState([{}]);

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/' + Id
        })
            .then(result => {
                setAnimal(result.data)
            })
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/other/' + Id
        })
            .then(result => {
                setOther(result.data)
            })
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/baoton/' + Id
        })
            .then(result => {
                setBaoTon(result.data)
            })
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/media/' + Id
        })
            .then(result => {
                setMedia(result.data)
            })
    }, [Id])

    document.title = animal.ten_tieng_viet + " | The Animals"

    const selectImg = (name) => {
        $('.show_video').addClass('d-none')
        $('.show_video').get(0).pause();
        $('.show_img').removeClass('d-none')
        $('.show_img').attr("src", "../images/animal/" + name)
    }

    const selectVideo = (name) => {
        $('.show_img').addClass('d-none')
        $('.show_video').removeClass('d-none')
        $('.show_video').attr("src", "../video/animal/" + name)
    }


    if (media[0].media_type == "image") {
        $('.show_video').addClass('d-none')
        $('.show_img').removeClass('d-none')
    } else {
        $('.show_img').addClass('d-none')
        $('.show_video').removeClass('d-none')
    }

    return (
        <div className="container detail">
            <div className="animal-name">{animal.ten_tieng_viet}</div>

            <div className="row">
                <div className="col-md animal-images" >
                    <div className="animal-img-current border border-success rounded d-flex align-items-center">
                        <img src={'../images/animal/' + media[0].ten_media} alt="img-current" className='animal-img__current show_img' id="media_main" />
                        <video src={'../video/animal/' + media[0].ten_media} controls={true} autoPlay={true} className="show_video animal-img__current d-none" ></video>
                    </div>

                    <div className="animal-images__list d-flex">
                        {
                            media.map((media, index) => {
                                if (media.media_type == "image") {
                                    return <img key={'img-' + index} onClick={() => selectImg(media.ten_media)} src={'../images/animal/' + media.ten_media} alt="img-more" className='animal-img__more' />
                                } else {
                                    return <video key={'video-' + index} onClick={() => selectVideo(media.ten_media)} src={'../video/animal/' + media.ten_media} className='animal-video'></video>
                                }
                            })
                        }
                    </div>
                </div>
                <div className="col-md">
                    <div className="animal-taxonomy my-4">
                        <p className="taxonomy-title">Phân loại học</p>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Tên tiếng Việt: </p>
                            <p className="science-name taxonomy-values">{animal.ten_tieng_viet} </p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Tên khoa học: </p>
                            <p className="science-name taxonomy-values">{animal.ten_khoa_hoc} </p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Tên địa phương: </p>
                            <p className="science-name-local taxonomy-values">{animal.ten_dia_phuong}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Ngành: </p>
                            <p className="animal-phylum taxonomy-values">{animal.nganh}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Lớp: </p>
                            <p className="animal-class taxonomy-values">{animal.lop} </p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Bộ: </p>
                            <p className="animal-order taxonomy-values">{animal.bo}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Họ: </p>
                            <p className="animal-family taxonomy-values">{animal.ho}</p>
                        </div>
                    </div>

                    <div className="animal-taxonomy my-4">
                        <p className="taxonomy-title">Thông tin khác</p>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Sinh cảnh: </p>
                            <p className="animal-family taxonomy-values">{animal.sinh_canh}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Giá trị sử dụng: </p>
                            <p className="animal-family taxonomy-values">{animal.gia_tri_su_dung}</p>
                        </div>


                        {baoton.map((baoton) =>
                            <div className="taxonomy-wrap" key={'baoton-' + baoton.id}>
                                <p className="taxonomy-label">{baoton.loai_tt}:</p>
                                <p className="animal-family taxonomy-values">{baoton.tinh_trang}</p>
                            </div>
                        )}
                    </div>
                </div>
            </div>
            <div className="row">
                <div className="col-md animal-characteristics">
                    <div className="row">
                        <div className="col-md animal-morphological mx-3">
                            <p className="morphological-title">Đặc điểm hình thái</p>
                            <p className="morphological-des">{animal.mo_ta_hinh_thai}</p>
                        </div>

                        <div className="col-md animal-ecological mx-3">
                            <p className="ecological-title">Đặc điểm sinh thái</p>
                            <p className="ecological-des">{animal.mo_ta_sinh_thai}</p>
                        </div>
                    </div>

                    <div className="animal-ecological py-4">
                        <p className="ecological-title">Động vật liên quan</p>
                        <div className="row">
                            {other.map((other, index) => (
                                <Animal key={index} animal={other} />
                            ))}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Detail;

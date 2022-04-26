import React from 'react';
import { Link } from 'react-router-dom';
import { useParams } from 'react-router-dom';
import '../../css/Detail.css';
import Animal from './AnimalItem';
import axios from "axios";

const Detail = () => {

    let { Id } = useParams();

    const [animal, setAnimal] = React.useState({});
    const [title, setTitle] = React.useState('Chi tiết động vật');
    const [media, setMedia] = React.useState([{}]);
    const [baoton, setBaoTon] = React.useState([{}]);
    const [toado, setToaDo] = React.useState([{}]);
    const [other, setOther] = React.useState([{ id: Id }]);

    React.useEffect(() => {
        window.scrollTo(0, 0);

        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/animal-' + Id
        })
            .then(result => {
                setAnimal(result.data)
                setMedia(result.data.mediaList)
                setBaoTon(result.data.baotonList)
                setToaDo(result.data.toadoList)
                setTitle(result.data.ten_tieng_viet)
            })
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/other/' + Id
        })
            .then(result => {
                setOther(result.data)
            })
    }, [Id])

    document.title = title + " | The Animals"

    const selectImg = (name) => {
        $('.show_video').addClass('d-none')
        $('.show_video').get(0).pause();
        $('.show_img').removeClass('d-none')
        $('.show_img').attr("src", "../media/" + name)
    }

    const selectVideo = (name) => {
        $('.show_img').addClass('d-none')
        $('.show_video').removeClass('d-none')
        $('.show_video').attr("src", "../media/" + name)
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
                <div className="col-md mt-4" >
                    <div className="animal-img-current border border-4 border-success rounded d-flex justify-content-center align-items-center" >
                        <img src={'../media/' + media[0].ten_media} alt="img-current" className='animal-img__current show_img' id="media_main" />
                        <video src={'../media/' + media[0].ten_media} controls={true} autoPlay={true} className="show_video animal-img__current d-none" ></video>
                    </div>

                    <div className="animal-images__list d-flex flex-wrap my-1">
                        {
                            media.map((media, index) => {
                                if (media.media_type == "image") {
                                    return <img key={'img-' + index} onClick={() => selectImg(media.ten_media)} src={'../media/' + media.ten_media} alt="img-more" className='animal-img__more col-2 item_animal_more m-2' />
                                } else {
                                    return <video key={'video-' + index} onClick={() => selectVideo(media.ten_media)} src={'../media/' + media.ten_media} className='animal-video col-2 item_animal_more m-2'></video>
                                }
                            })
                        }
                    </div>
                </div>
                <div className="col-md mt-4">
                    <div className="animal-taxonomy my-4 mt-0">
                        <p className="taxonomy-title pb-4 mb-4" >Thông tin cơ bản</p>

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

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Sinh cảnh: </p>
                            <p className="animal-family taxonomy-values">{animal.sinh_canh}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Giá trị sử dụng: </p>
                            <p className="animal-family taxonomy-values">{animal.gia_tri_su_dung}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div className="animal-taxonomy my-4">
                <p className="taxonomy-title">Thông tin khác</p>
                {baoton.map((baoton) =>
                    <div className="taxonomy-wrap" key={'baoton-' + baoton.id}>
                        <p className="taxonomy-label">{baoton.loai_tt}:</p>
                        <p className="animal-family taxonomy-values">{baoton.tinh_trang}</p>
                    </div>
                )}
                {toado.map((toado) =>
                    <div className="taxonomy-wrap" key={'toado-' + toado.id}>
                        <p className="taxonomy-label">{toado.loai_toa_do}:</p>
                        <p className="animal-family taxonomy-values">{toado.toa_do}</p>
                    </div>
                )}
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

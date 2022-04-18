import React from 'react';
import { useParams } from 'react-router-dom';
import '../../css/Detail.css';
import axios from "axios";
import Input from './Input';

const Detail = () => {

    let { Id } = useParams();

    const [animal, setAnimal] = React.useState({});
    const [title, setTitle] = React.useState('Chi tiết động vật');
    const [media, setMedia] = React.useState([{}]);
    const [baoton, setBaoTon] = React.useState([{}]);
    const [toado, setToaDo] = React.useState([{}]);
    const [nganh, setNganh] = React.useState([]);
    const [lop, setLop] = React.useState([]);
    const [bo, setBo] = React.useState([]);
    const [ho, setHo] = React.useState([]);
    const [hoList, setHoList] = React.useState([]);

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/' + Id
        })
            .then(result => {
                setAnimal(result.data)
                setMedia(result.data.mediaList)
                setBaoTon(result.data.baotonList)
                setToaDo(result.data.toadoList)
                setTitle(result.data.ten_tieng_viet)
                setNganh(result.data.nganh)
                setLop(result.data.lop)
                setBo(result.data.bo)
            })
    }, [Id])

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/animal-type/ho'
        })
            .then(result => {
                setHoList(result.data)
            })
    }, [])

    document.title = title + " | The Animals"

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

    const editInfoBasic = (type) => {
        if (type == 'edit') {
            $('#frmEditInfoBasic').removeClass('d-none');
            $('.info-basic').addClass('d-none');
        } else if (type == 'cancel') {
            $('#frmEditInfoBasic').addClass('d-none');
            $('.info-basic').removeClass('d-none');
        }
    }

    // const selectHo = () => {
        // alert(1123)
        // alert($('#ho').val())
    // }

    return (
        <div className="container detail">
            <div className="animal-name bg-light ">{animal.ten_tieng_viet}</div>

            <div className="row mb-4">
                <div className="col-md mt-4" >
                    <div className="animal-img-current border border-4 border-success rounded d-flex align-items-center bg-light position-relative" >
                        <div className="position-absolute top-0 end-0 w-fitcontent">
                            <button className="fa fa-pen bg-transparent btn p-2 fs-2" />
                        </div>
                        <img src={'../images/animal/' + media[0].ten_media} alt="img-current" className='animal-img__current show_img' id="media_main" />
                        <video src={'../video/animal/' + media[0].ten_media} controls={true} autoPlay={true} className="show_video animal-img__current d-none" ></video>
                    </div>

                    <div className="animal-images__list d-flex flex-wrap my-1">
                        {
                            media.map((media, index) => {
                                if (media.media_type == "image") {
                                    return (
                                        <div className="col m-2" key={'img-' + index} >
                                            <img onClick={() => selectImg(media.ten_media)}
                                                src={'../images/animal/' + media.ten_media} alt="img-more"
                                                className='animal-img__more h-100 col m-0 p-0' />
                                        </div>
                                    )
                                } else {
                                    return (
                                        <div className="col m-2" key={'video-' + index} >
                                            <video onClick={() => selectVideo(media.ten_media)}
                                                src={'../video/animal/' + media.ten_media}
                                                className='animal-video h-100 col m-0 p-0'></video>
                                        </div>
                                    )
                                }
                            })
                        }
                    </div>
                </div>
                <div className="col-md mt-4 ">
                    <div className="animal-taxonomy mb-4 bg-light border border-success  text-dark">
                        <p className="taxonomy-title pb-4 mb-4 text-dark" >
                            Thông tin cơ bản <button className="fa fa-pen bg-transparent btn p-2 fs-2" onClick={() => editInfoBasic('edit')} />
                        </p>
                        <form className="d-none" id="frmEditInfoBasic">
                            <Input type="text" name="ten_tieng_viet" value={animal.ten_tieng_viet} label="Tên Tiếng Việt" />
                            <Input type="text" name="ten_khoa_hoc" value={animal.ten_khoa_hoc} label="Tên Khoa Học" />
                            <Input type="text" name="ten_dia_phuong" value={animal.ten_dia_phuong} label="Tên Địa Phương" />

                            <div className="form-group">
                                <label htmlFor="ho" className="form-label text-dark fs-6 ms-2" > Họ:</label>

                                <p className="text-normal fs-6 m-2">
                                    {nganh + " > " + lop + " > " + bo}
                                </p>

                                <select name="ho" className="form-control text-dark fs-4" id="ho" >
                                    {hoList.map((option) => {
                                        if (option.id == animal.ho_id) {
                                            return <option key={option.id + option.ten_ho} value={option.id} selected >{option.ten_ho}</option>
                                        } else {
                                            return <option key={option.id + option.ten_ho} value={option.id} >{option.ten_ho}</option>
                                        }
                                    })}
                                </select>
                            </div>

                            <Input type="text" name="sinh_canh" value={animal.sinh_canh} label="Sinh cảnh" />
                            <Input type="text" name="gia_tri_su_dung" value={animal.gia_tri_su_dung} label="Giá trị sử dụng" />

                            <div className="form-group text-right">
                                <button className="btn btn-success py-2 px-3 fs-5 m-2 mb-0" type="submit" form="frmEditInfoBasic">Lưu</button>
                                <button className="btn btn-danger py-2 px-3 fs-5 m-2 mb-0" type="reset" form="frmEditInfoBasic" onClick={() => editInfoBasic('cancel')}>Hủy</button>
                            </div>
                        </form>
                        <div className="info-basic">
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
            </div>

            <div className="animal-taxonomy mt-4 bg-light border border-success  text-dark">
                <p className="taxonomy-title text-dark">Thông tin khác <button className="fa fa-pen bg-transparent btn p-2 fs-2" /></p>
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
                <div className="col-md animal-characteristics  text-dark">
                    <div className="row">
                        <div className="col-md animal-morphological mx-3 bg-light border border-success">
                            <p className="morphological-title text-dark">Đặc điểm hình thái <button className="fa fa-pen bg-transparent btn p-2 fs-2" /></p>
                            <p className="morphological-des">{animal.mo_ta_hinh_thai}</p>
                        </div>

                        <div className="col-md animal-ecological mx-3 bg-light border border-success">
                            <p className="ecological-title text-dark">Đặc điểm sinh thái <button className="fa fa-pen bg-transparent btn p-2 fs-2" /></p>
                            <p className="ecological-des">{animal.mo_ta_sinh_thai}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Detail;

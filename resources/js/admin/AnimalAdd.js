import React, { Fragment } from 'react';
import '../../css/Detail.css';
import axios from "axios";
import Input from './Input';
import swal from 'sweetalert';

const Detail = () => {
    document.title = "Thêm động vật | Admin The Animals"

    const [hoList, setHoList] = React.useState([]);
    const [selectedFile, setSelectedFile] = React.useState([]);

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

    const submitAddAnimal = (e) => {
        e.preventDefault();

        if (selectedFile.length > 10) {
            swal({
                title: "Quá tải!",
                text: "Hãy chọn ít hơn hoặc bằng 10 file",
                icon: "warning",
                button: "Ok",
            });
        } else {

            var formData = new FormData($('#frmAddAnimal')[0]);

            for (var i = 0; i < selectedFile.length; i++) {
                formData.append('files[]', selectedFile[i])
            }

            axios({
                method: 'post',
                url: '../api/animal/add',
                data: formData,
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            }).then(result => {
                // console.log(result.data);
                if (result.data.status == 'success') {
                    swal({
                        title: "Thành công!",
                        text: "Thêm thành công động vật mới, bạn muốn chuyển đến trang chi tiết?",
                        icon: "success",
                        buttons: true,
                        dangerMode: true,
                    })
                        .then((confirm) => {
                            if (confirm) {
                                window.location = "./animal-detail-" + result.data.animal_id
                            }
                        });
                    $('#frmAddAnimal').reset();
                } else {
                    swal({
                        title: "Thất bại!",
                        text: result.data,
                        icon: "error",
                        button: "Ok",
                    });
                }
            });
        }
    }

    return (
        <div className="container detail">
            <div className="animal-name bg-light ">Thêm động vật mới</div>
            <form id="frmAddAnimal" onSubmit={submitAddAnimal} encType="multipart/form-data" >
                <div className="row mb-4">
                    <div className="col-md mt-4" >
                        <label htmlFor="input-media" className="animal-img-current border border-4 border-success rounded d-flex align-items-center justify-content-center hover-bg bg-light cursor-pointer" >
                            <input id="input-media" type="file" onChange={e => setSelectedFile(e.target.files)} name="media" multiple accept="image/*, video/*" className="fs-2" />
                        </label>
                    </div>
                    <div className="col-md mt-4 ">
                        <div className="animal-taxonomy mb-4 bg-light border border-success  text-white">
                            <p className="taxonomy-title pb-4 mb-4 text-white" >
                                Thông tin cơ bản
                            </p>
                            <Input type="text" value="" name="ten_tieng_viet" label="Tên Tiếng Việt" />
                            <Input type="text" value="" name="ten_khoa_hoc" label="Tên Khoa Học" />
                            <Input type="text" value="" name="ten_dia_phuong" label="Tên Địa Phương" />

                            <div className="form-group">
                                <label htmlFor="ho" className="form-label text-white fs-6 ms-2" > Họ:</label>

                                <select name="ho_id" className="form-control text-white fs-4" id="ho" >
                                    {hoList.map((option) => (
                                        <option key={option.id + option.ten_ho} value={option.id} >{option.ten_ho}</option>
                                    ))}
                                </select>
                            </div>

                            <Input type="text" value="" name="sinh_canh" label="Sinh cảnh" />
                            <Input type="text" value="" name="gia_tri_su_dung" label="Giá trị sử dụng" />
                        </div>
                    </div>
                </div>

                <div className="animal-taxonomy mt-4 bg-light border border-success text-white">
                    <p className="taxonomy-title text-white">Thông tin khác </p>
                    <div className="row justify-content-center">
                        <div className="col-6">
                            <Input type="text" value="" name="tinh_trang[]" label="Tình trạng bảo tồn theo IUCN" />
                            <Input type="text" value="" name="tinh_trang[]" label="Tình trạng bảo tồn theo sách đỏ Việt Nam" />
                            <Input type="text" value="" name="tinh_trang[]" label="Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP" />
                            <Input type="text" value="" name="tinh_trang[]" label="Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)" />
                            <Input type="text" value="" name="toa_do[]" label="Tọa độ 1" />
                            <Input type="text" value="" name="toa_do[]" label="Tọa độ 2" />
                            <Input type="text" value="" name="toa_do[]" label="Tọa độ 3" />
                            <Input type="text" value="" name="toa_do[]" label="Tọa độ 4" />
                            <Input type="text" value="" name="toa_do[]" label="Tọa độ 5" />
                        </div>
                    </div>
                </div>

                <div className="row">
                    <div className="col-md animal-characteristics  text-white">
                        <div className="row">
                            <div className="col-md animal-morphological mx-3 bg-light border border-success">
                                <p className="morphological-title text-white">Đặc điểm hình thái </p>
                                <textarea name="mo_ta_hinh_thai" value={'hinhthai'} id="mo_ta_hinh_thai"
                                    onChange={e => setHinhthai(e.target.value)} className="form-control fs-3 w-100" rows="10"></textarea>
                            </div>

                            <div className="col-md animal-ecological mx-3 bg-light border border-success">
                                <p className="ecological-title text-white">Đặc điểm sinh thái </p>
                                <textarea name="mo_ta_sinh_thai" value={'sinhthai'} id="mo_ta_sinh_thai"
                                    onChange={e => setSinhthai(e.target.value)} className="form-control fs-3 w-100" rows="10"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="form-group text-right">
                    <button className="btn btn-success py-2 px-3 fs-5 m-2 mb-0" type="submit" form="frmAddAnimal">Lưu</button>
                    <button className="btn btn-danger py-2 px-3 fs-5 m-2 mb-0" type="reset" form="frmAddAnimal" >Hủy</button>
                </div>
            </form>
        </div>
    );
}

export default Detail;

import axios from "axios";
import React, { Fragment } from "react";
import Input from "./Input";

const Type = () => {
    document.title = "Ngành | Admin The Animals"
    const [nganhList, setNganhList] = React.useState([]);
    const [toggle, setToggle] = React.useState('edit')

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/animal-type/nganh'
        })
            .then(result => {
                setNganhList(result.data)
            })
    }, [nganhList.length]);

    const submitAddNganh = (e) => {
        e.preventDefault();

        axios({
            method: "post",
            withCredentials: true,
            url: '../api/action-type/add',
            data: {
                type: 'nganh',
                ten_nganh: frmAddNganh.ten_nganh.value
            }
        })
            .then(result => {
                console.log(result.data);

                if (result.data.status = 'success') {
                    setNganhList(result.data)
                    swal({
                        title: "Thành công!",
                        text: "Đã thêm 1 bộ mới!",
                        icon: "success",
                    })
                } else {
                    swal({
                        title: "Thất bại!!!",
                        text: "Thêm bộ mới thất bại!",
                        icon: "error",
                    })
                }
            })
    }

    const btnEditNganh = (index) => {

        $('.ten_nganh').eq(index).addClass('d-none')
        $('.input_edit_nganh').eq(index).removeClass('d-none')

        setToggle('save')
    }

    const submitEditNganh = (e) => {
        e.preventDefault();

        var formData = $('#frmEditNganh').serialize();
        formData += "&type=nganh"
        axios({
            method: "post",
            withCredentials: true,
            url: '../api/action-type/edit',
            data: formData
        })
            .then(result => {
                console.log(result.data);
                if (!result.data.status) {
                    setNganhList(result.data)
                    swal({
                        title: "Thành công!",
                        text: "Chỉnh sửa thông tin thành công!",
                        icon: "success",
                    })
                } else {
                    swal({
                        title: "Thất bại!!!",
                        text: "Chỉnh sửa thông tin thất bại!",
                        icon: "error",
                    })
                }
                setToggle('edit')
                $('.ten_nganh').removeClass('d-none')
                $('.input_edit_nganh').addClass('d-none')
            })
    }

    return (
        <>
            <div className="container-fluid fs-3 text-white">
                <form id="frmAddNganh" onSubmit={submitAddNganh}>
                    <table className="table border border-secondary rounded table-striped">
                        <tbody>
                            <tr className="">
                                <td className="text-center text-white align-middle col-2">New | Tên ngành:</td>
                                <td className="text-center text-white align-middle">
                                    <Input name="ten_nganh" />
                                </td>
                                <td className="text-center text-white align-middle">
                                    <button className="btn btn-primary fs-3 fa fa-plus" type="submit" form="frmAddNganh"></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <div className="row">
                    <div className="col d-flex justify-content-end">
                        {toggle && toggle == 'save'
                            ? <button className="btn btn-primary rounded-lg fs-3 my-4" type="submit" form="frmEditNganh">Lưu</button>
                            : null
                        }
                    </div>
                    <form id="frmEditNganh" onSubmit={submitEditNganh}>
                        <table className="table border border-secondary rounded table-striped">
                            <thead className="">
                                <tr>
                                    <th className="fs-4 bg-light" colSpan={3}> Ngành</th>
                                </tr>
                                <tr >
                                    <th className="fs-4" scope="col">#</th>
                                    <th className="fs-4" scope="col">Tên Ngành</th>
                                    <th className="fs-4" scope="col">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                {
                                    nganhList.slice(0).reverse().map((nganh, index) => (
                                        <tr key={index}>
                                            <td className="text-center text-white">{index + 1}</td>
                                            <td className="text-center text-white">
                                                <div className="ten_nganh">
                                                    {nganh.ten_nganh}
                                                </div>
                                                <div className="input_edit_nganh d-none">
                                                    <input type="hidden" name="id[]" value={nganh.id} />
                                                    <Input name="ten_nganh[]" value={nganh.ten_nganh} />
                                                </div>
                                            </td>
                                            <td className="text-center text-white">
                                                <p className="btn btn-success fa fa-edit fs-5 text-normal" onClick={() => btnEditNganh(index)}> Sửa</p>
                                            </td>
                                        </tr>
                                    ))
                                }

                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </>
    )
}

export default Type;
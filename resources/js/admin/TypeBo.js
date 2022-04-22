import axios from "axios";
import React, { Fragment } from "react";
import Input from "./Input";

const Type = () => {
    document.title = "Bộ | Admin The Animals"
    const [typeList, setTypeList] = React.useState([]);
    const [toggle, setToggle] = React.useState('edit')
    const [parentType, setParentType] = React.useState([]);

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/animal-type/bo'
        })
            .then(result => {
                setTypeList(result.data)
            })
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/animal-type/lop'
        })
            .then(result => {
                setParentType(result.data)
            })
    }, [typeList.length]);

    const submitAddType = (e) => {
        e.preventDefault();

        axios({
            method: "post",
            withCredentials: true,
            url: '../api/action-type/add',
            data: {
                type: 'bo',
                ten_bo: frmAddType.ten_lop.value,
                lop_id: frmAddType.lop_id.value
            }
        })
            .then(result => {
                console.log(result.data);

                if (result.data.status = 'success') {
                    setTypeList(result.data)
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

    const btnEditType = (index) => {

        $('.type_name').eq(index).addClass('d-none')
        $('.input_edit_type').eq(index).removeClass('d-none')

        setToggle('save')
    }

    const submitEditType = (e) => {
        e.preventDefault();

        var formData = $('#frmEditType').serialize();
        formData += "&type=bo"
        axios({
            method: "post",
            withCredentials: true,
            url: '../api/action-type/edit',
            data: formData
        })
            .then(result => {
                console.log(result.data);
                if (!result.data.status) {
                    setTypeList(result.data)
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
                $('.type_name').removeClass('d-none')
                $('.input_edit_type').addClass('d-none')
            })
    }

    return (
        <>
            <div className="container-fluid fs-3 text-white">
                <form id="frmAddType" onSubmit={submitAddType}>
                    <table className="table border border-secondary rounded table-striped">
                        <tbody>
                            <tr className="">
                                <td className="text-center text-white align-middle col-2">
                                    <label htmlFor="parent_type" className="form-label">Lớp</label>
                                    <select name="lop_id" className="form-control text-white fs-4" id="parent_type" >
                                        {parentType.map((option) => (
                                            <option key={option.id + option.ten_lop} value={option.id} >{option.ten_lop}</option>
                                        ))}
                                    </select>
                                </td>
                                <td className="text-center text-white align-middle">
                                    <Input name="ten_lop" label="Bộ mới" />
                                </td>
                                <td className="text-center text-white align-middle">
                                    <button className="btn btn-primary fs-3 fa fa-plus" type="submit" form="frmAddType"></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <div className="row">
                    <div className="col d-flex justify-content-end">
                        {toggle && toggle == 'save'
                            ? <button className="btn btn-primary rounded-lg fs-3 my-4" type="submit" form="frmEditType">Lưu</button>
                            : null
                        }
                    </div>
                    <form id="frmEditType" onSubmit={submitEditType}>
                        <table className="table border border-secondary rounded table-striped">
                            <thead className="">
                                <tr>
                                    <th className="fs-4 bg-light" colSpan={3}> Bộ</th>
                                </tr>
                                <tr >
                                    <th className="fs-4" scope="col">#</th>
                                    <th className="fs-4" scope="col">Tên Bộ</th>
                                    <th className="fs-4" scope="col">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                {
                                    typeList.slice(0).reverse().map((type, index) => (
                                        <tr key={index}>
                                            <td className="text-center text-white">{index + 1}</td>
                                            <td className="text-center text-white">
                                                <div className="type_name">
                                                    {type.ten_bo}
                                                </div>
                                                <div className="input_edit_type d-none">
                                                    <input type="hidden" name="id[]" value={type.id} />
                                                    <Input name="ten_bo[]" value={type.ten_bo} />
                                                </div>
                                            </td>
                                            <td className="text-center text-white">
                                                <p className="btn btn-success fa fa-edit fs-5 text-normal" onClick={() => btnEditType(index)}> Sửa</p>
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
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
            url: '../api/animal-type/ho'
        })
            .then(result => {
                setTypeList(result.data)
            })
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/animal-type/bo'
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
                type: 'ho',
                ten_ho: frmAddType.ten_ho.value,
                bo_id: frmAddType.bo_id.value
            }
        })
            .then(result => {
                console.log(result.data);

                if (result.data.status = 'success') {
                    setTypeList(result.data)
                    alert('Đã thêm 1 họ mới')
                } else {
                    alert('Thêm họ mới thất bại!!!')
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
        formData += "&type=ho"
        axios({
            method: "post",
            withCredentials: true,
            url: '../api/action-type/edit',
            data: formData
        })
            .then(result => {
                console.log(result.data);
                if (!result.data.status) {
                    alert("Cập nhật thông tin thành công !")
                    setTypeList(result.data)
                } else {
                    alert("Cập nhật thông tin thất bại!")
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
                                    <label htmlFor="parent_type" className="form-label">Bộ</label>
                                    <select name="bo_id" className="form-control text-white fs-4" id="parent_type" >
                                        {parentType.map((option) => (
                                            <option key={option.id + option.ten_bo} value={option.id} >{option.ten_bo}</option>
                                        ))}
                                    </select>
                                </td>
                                <td className="text-center text-white align-middle">
                                    <Input name="ten_ho" label="Họ mới" />
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
                                    <th className="fs-4 bg-light" colSpan={3}> Họ</th>
                                </tr>
                                <tr >
                                    <th className="fs-4" scope="col">#</th>
                                    <th className="fs-4" scope="col">Tên Họ</th>
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
                                                    {type.ten_ho}
                                                </div>
                                                <div className="input_edit_type d-none">
                                                    <input type="hidden" name="id[]" value={type.id} />
                                                    <Input name="ten_ho[]" value={type.ten_ho} />
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
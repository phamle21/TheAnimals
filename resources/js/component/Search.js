import React from 'react';
import '../../css/Search.css';
import Animal from './AnimalItem';
import axios from "axios"

const Info = () => {
    document.title = "Thông tin các loài động vật | The Animals"

    const [animal, setAnimal] = React.useState([]);
    const [key, setKey] = React.useState(' ');

    const sortAZ = () => {

        const arr = [...animal]

        arr.sort(function (a, b) {
            return a.ten_tieng_viet.localeCompare(b.ten_tieng_viet)
        })

        setAnimal(arr)
    }

    const sortZA = () => {
        const arr = [...animal]

        arr.sort(function (a, b) {
            return a.ten_tieng_viet.localeCompare(b.ten_tieng_viet)
        })

        setAnimal(arr.reverse())
    }

    const searchAnimal = () => {
        const keyword = $('#input-search-info').val()
        setKey(keyword)
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/info/search?value=' + keyword
        })
            .then(result => {
                setAnimal(result.data)
            })
    }

    $(document).ready(() => {
        $('#key_search').html("Có " + animal.length + " kết quả với từ khóa: \"" + key + "\"")

    })

    return (
        <div className="container-fluid info">
            <div className="container ">

                <div className="row info-heading">
                    <p className="title info-title">Tìm kiếm động vật</p>
                    <p className="info-des" >Nhập từ khóa bạn muốn tìm kiếm.</p>
                    <div className='home-search d-flex justify-content-center align-items-center'>
                        <input className='search-input my-4 mx-5 p-5' id="input-search-info" type="search" placeholder="Nhập vào đây để bắt đầu tìm kiếm..."></input>
                        <i className="fas fa-search search-icon h-auto p-5 cursor-pointer" onClick={() => searchAnimal()}></i>
                    </div>
                    <p id="key_search" className="fw-bold fs-3 mt-2"></p>
                    <div className="info-filter w-fitcontent">
                        <p className="title-filter">Sắp xếp</p>

                        <button className="filter-btn filter-btn__a-z m-2 btn btn-light" onClick={sortAZ}>Từ A - Z</button>
                        <button className="filter-btn filter-btn__z-a m-2 btn btn-light" onClick={sortZA}>Từ Z - A</button>
                    </div>
                </div>

                <div className="row info-list" id="list_card">
                    {animal.length > 0 || (
                        <div className="d-flex justify-content-center text-danger fs-1">
                            <h1>Không có động vật nào được tìm thấy!</h1>
                        </div>
                    )}

                    {animal.map((animal) =>
                        <Animal key={animal.id} animal={animal} />
                    )}
                </div>
            </div>
        </div>
    );
}

export default Info;

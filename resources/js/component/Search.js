import React from 'react';
import '../../css/Search.css';
import Animal from './AnimalItem';
import axios from "axios"
import swal from 'sweetalert';

const Info = () => {
    document.title = "Thông tin các loài động vật | The Animals"

    const [animal, setAnimal] = React.useState([]);
    const [key, setKey] = React.useState('');
    const [limit, setLimit] = React.useState(12);

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/info/search?value=' + key
        })
            .then(result => {
                setAnimal(result.data)
            })
        setKey($('#input-search-info').val())

    }, [key]);

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

    const searchAnimal = (e) => {
        e.preventDefault()

        setKey($('#input-search-info').val())
    }

    const loadMore = () => {
        if (limit >= animal.length) {
            swal({
                title: "Hết rồi!!!",
                text: "Đã hiện hết danh sách động vật!",
                icon: "info",
            })
            return false
        }
        if ((limit + 6) >= animal.length) {
            $('#load_more').html("...Hết...");
        }
        setLimit(limit + 6)
    }

    $(document).ready(() => {
        console.log($('#input-search-info').val());
        $('#key_search').html("Có " + animal.length + " kết quả với từ khóa: \"" + key + "\"")

    })

    return (
        <div className="container-fluid info">
            <div className="container ">

                <div className="row info-heading">
                    <p className="title info-title">Tìm kiếm động vật</p>
                    <p className="info-des" >Nhập từ khóa bạn muốn tìm kiếm.</p>
                    <form action="" id="frmInfoSearch" className="ms-5" onSubmit={searchAnimal} >
                        <div className='home-search d-flex justify-content-start align-items-center'>
                            <input className='search-input my-4 m-0 me-5 p-3 ps-4 fs-2' id="input-search-info" type="search" placeholder="Nhập vào đây để bắt đầu tìm kiếm..."></input>
                            <button className="fas fa-search search-icon h-auto p-4 cursor-pointer" form='frmInfoSearch' type='submit'></button>
                        </div>
                        <div className="ms-5">
                            <p id="key_search" className="fw-bold fs-3 mt-2"></p>
                        </div>
                    </form>
                    <div className="info-filter w-fitcontent">
                        <p className="title-filter">Sắp xếp</p>

                        <button className="filter-btn filter-btn__a-z m-2 btn btn-light" onClick={sortAZ}>Từ A - Z</button>
                        <button className="filter-btn filter-btn__z-a m-2 btn btn-light" onClick={sortZA}>Từ Z - A</button>
                    </div>
                </div>

                <div className="row info-list" id="list_card">
                    {animal.length > 0 || (
                        <div className="d-flex justify-content-center text-danger fs-1">
                            <h1 className="text-dark" >Không có động vật nào được tìm thấy!</h1>
                        </div>
                    )}

                    {animal.slice(0, limit).map((animal) =>
                        <Animal key={animal.id} animal={animal} />
                    )}
                </div>

                <div className="row text-center my-3">
                    <div className="col">
                        <p className="info-load-more p-1" id="load_more" onClick={loadMore}>Tải thêm...</p>
                    </div>
                </div>

            </div>
        </div>
    );
}

export default Info;

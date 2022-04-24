import React from 'react';
import '../../css/Info.css';
import Animal from './AnimalItem';
import axios from "axios"
import swal from 'sweetalert';

const Info = () => {
    document.title = "Thông tin các loài động vật | The Animals"

    const [animal, setAnimal] = React.useState([]);
    const [limit, setLimit] = React.useState(12);

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/info/list'
        })
            .then(result => {
                setAnimal(result.data)
            })
    }, [])

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

    return (
        <div className="container-fluid info">
            <div className="container ">

                <div className="row info-heading">
                    <p className="title info-title">Danh sách tất cả Loài Động Vật</p>
                    <p className="info-des">Cập nhật thông tin các loài động vật từ khắp nơi trên thế giới.</p>

                    <div className="info-filter w-fitcontent">
                        <p className="title-filter">Sắp xếp</p>

                        <button className="filter-btn filter-btn__a-z m-2 btn btn-light" onClick={sortAZ}>Từ A - Z</button>
                        <button className="filter-btn filter-btn__z-a m-2 btn btn-light" onClick={sortZA}>Từ Z - A</button>
                    </div>
                </div>

                <div className="row info-list" id="list_card">
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

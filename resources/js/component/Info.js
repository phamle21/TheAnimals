import React from 'react';
import './Info.css';
import Animal from './AnimalItem';
import axios from "axios"


const Info = () => {
    document.title = "Thông tin các loài động vật | The Animals"

    const [animal, setAnimal] = React.useState([]);

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: 'api/info'
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
        console.log("hello");
        const limit = animal.length
        console.log(limit);
        axios({
            method: "post",
            withCredentials: true,
            url: 'api/info/' + limit
        })
            .then(result => {
                setAnimal(result.data)
            })
    }

    // console.log(animal)

    return (
        <div className="container-fluid info">
            <div className="container ">

                <div className="row info-heading">
                    <p className="title info-title">Thông Tin Các Loài Động Vật</p>
                    <p className="info-des">Cập nhật thông tin các loài động vật từ khắp nơi trên thế giới.</p>

                    <div className="info-filter w-fitcontent">
                        <p className="title-filter">Sắp xếp</p>

                        <button className="filter-btn filter-btn__a-z m-2 btn btn-light" onClick={sortAZ}>Từ A - Z</button>
                        <button className="filter-btn filter-btn__z-a m-2 btn btn-light" onClick={sortZA}>Từ Z - A</button>
                    </div>
                </div>

                <div className="row info-list" id="list_card">
                    {animal.map((animal) => {
                        return (
                            <Animal key={animal.id} animal={animal} />
                        )
                    })}
                </div>

                <p className="info-load-more w-100" onClick={loadMore}>Tải thêm...</p>
            </div>
        </div>
    );
}

export default Info;

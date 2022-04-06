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

    console.log(animal);

    const sortAZ = () => {
        const arr = [...animal]

        arr.sort(function (a, b) {
            var x = a.name.toUpperCase();
            var y = b.name.toUpperCase();
            if (x > y) {
                return 1;
            } else if (x < y) {
                return -1;
            }
        })

        setAnimal(arr)
    }

    const sortZA = () => {
        const arr = [...animal]

        arr.sort(function (a, b) {
            var x = a.name.toUpperCase();
            var y = b.name.toUpperCase();
            if (x > y) {
                return 1;
            } else if (x < y) {
                return -1;
            }
        })

        setAnimal(arr.reverse())
    }

    // console.log(animal)

    return (
        <div className="container info">

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
                    // console.log("a");
                    return (
                        <Animal key={animal.id} animal={animal} />
                    )
                })}
            </div>

            <div className="info-load-more">Tải thêm...</div>
        </div>
    );
}

export default Info;

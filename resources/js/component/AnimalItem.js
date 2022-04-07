import React from 'react';
import { Link } from 'react-router-dom';
import './AnimalItem.css';

const AnimalItem = ({ animal }) => {
    // console.log(animal);

    return (
        <div className="col-lg-2 col-md-3 col-sm-4 animal rounded">
            <Link to={"/detail/" + animal.id} className="animal-item">
                <div className="card text-center" style={{ borderRadius: '20px' }} >
                    <img src={ 'images/Kaloula_pulchra2.jpg' } className="card-img-top p-3 rounded" />
                    <div className="card-body">
                        <div className="card-title animal-item__name ">{animal.ten_tieng_viet}</div>
                        <div className="card-text animal-item__des mx-1 px-1">{animal.mo_ta_hinh_thai}</div>
                        <p className="animal-item__more">Tìm hiểu thêm</p>

                    </div>
                </div>
                {/* <div className="animal-item__img" style={{ backgroundImage: `url(${'images/Kaloula_pulchra2.jpg'})` }} alt="animal-img" />

                <p className="animal-item__name">{animal.ten_tieng_viet}</p>
                <p className="animal-item__des">{animal.mo_ta_hinh_thai}</p>

                <p className="animal-item__more">Tìm hiểu thêm</p> */}
            </Link>
        </div>
    )
}

export default AnimalItem;

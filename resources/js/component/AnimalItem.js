import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import '../../css/AnimalItem.css';

const AnimalItem = ({ animal }) => {
    return (
        <div className="col-lg-2 col-md-3 col-sm-4 animal" >
            <Link to={"/detail/animal-" + animal.id} className="animal-item">
                <div className="card text-center" style={{ borderRadius: '10px' }} >
                    <img src={'../media/' + animal.image} className="card-img-top p-3 rounded"
                        style={{minHeight: '120px', maxHeight: '120px'}} />
                    <div className="card-body">
                        <div className="card-title animal-item__name ">{animal.ten_tieng_viet}</div>
                        <div className="card-text animal-item__des mx-1 px-1">{animal.mo_ta_hinh_thai}</div>
                        <p className="animal-item__more">Tìm hiểu thêm</p>

                    </div>
                </div>
            </Link>
        </div>
    )
}

export default AnimalItem;

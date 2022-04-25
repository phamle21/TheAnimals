import React from 'react';
import { Link } from 'react-router-dom';

const AnimalItem = ({ animal }) => {

    return (
        <div className="col-lg-2 col-md-3 col-sm-4 animal animal-items" >
            <Link to={"/admin/animal-detail-" + animal.id} className="animal-item bg-transparent">
                <div className="card text-center" style={{ borderRadius: '10px' }} >
                    <img src={'../media/' + animal.image} className="card-img-top p-3 rounded"
                        style={{ minHeight: '120px', maxHeight: '120px' }} />
                    <div className="card-body pt-0">
                        <div className="card-title animal-item__name mx-0"
                            style={{ color: 'greenyellow' }}>
                            {animal.ten_tieng_viet}
                        </div>
                        <p className="animal-item__more text-white fs-5 fw-nomarl">Tìm hiểu thêm</p>

                    </div>
                </div>
            </Link>
        </div>
    )
}

export default AnimalItem;

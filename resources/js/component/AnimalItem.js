import React from 'react';
import { Link } from 'react-router-dom';
import './AnimalItem.css';

const AnimalItem = ({animal}) => {
    // console.log(animal);

    return (
        <div className="col-md-2 animal">
            <Link to={"/detail/"+animal.id} className="animal-item">
                <div className="animal-item__img" style={{ backgroundImage: `url(${'images/'+animal.img})` }} alt="animal-img" />

                <p className="animal-item__name">{animal.name}</p>
                <p className="animal-item__des">{animal.des}</p>

                <p className="animal-item__more">Tìm hiểu thêm</p>
            </Link>
        </div>
    )
}

export default AnimalItem;

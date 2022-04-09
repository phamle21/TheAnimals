import React from 'react';
import { useParams } from 'react-router-dom';
import './Detail.css';
import Img from '../../../public/images/Kaloula_pulchra2.jpg';
import Img2 from '../../../public/images/Kaloula_pulchra2.jpg';
import Animal from './AnimalItem';
import axios from "axios"

const Detail = () => {

    let { Id } = useParams();

    const [animal, setAnimal] = React.useState({});
    const [media, setMedia] = React.useState([]);
    const [other, setOther] = React.useState([]);

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/' + Id
        })
            .then(result => {
                setAnimal(result.data)
            })
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/detail/other/' + Id
        })
            .then(result => {
                setOther(result.data)
            })
    }, {})

    const goAnimalOther = () => {
        alert(123)
    }

    document.title = animal.ten_tieng_viet + " | The Animals"

    return (
        <div className="container detail">
            <div className="animal-name">{animal.ten_tieng_viet}</div>

            <div className="row">
                <div className="col-md animal-images">
                    <div className="animal-img-current">
                        <img src={Img} alt="img-current" className='animal-img__current' />
                    </div>

                    <div className="animal-images__list">
                        <img src={Img} alt="img-more" className='animal-img__more' />
                        <img src={Img2} alt="img-more" className='animal-img__more' />
                    </div>
                </div>
                <div className="col-md">
                    <div className="animal-taxonomy my-4">
                        <p className="taxonomy-title">Phân loại học</p>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Tên tiếng Việt: </p>
                            <p className="science-name taxonomy-values">{animal.ten_tieng_viet} </p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Tên khoa học: </p>
                            <p className="science-name taxonomy-values">{animal.ten_khoa_hoc} </p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Tên địa phương: </p>
                            <p className="science-name-local taxonomy-values">{animal.ten_dia_phuong}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Ngành: </p>
                            <p className="animal-phylum taxonomy-values">{animal.nganh}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Lớp: </p>
                            <p className="animal-class taxonomy-values">{animal.lop} </p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Bộ: </p>
                            <p className="animal-order taxonomy-values">{animal.bo}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Họ: </p>
                            <p className="animal-family taxonomy-values">{animal.ho}</p>
                        </div>
                    </div>

                    <div className="animal-taxonomy my-4">
                        <p className="taxonomy-title">Thông tin khác</p>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Sinh cảnh: </p>
                            <p className="animal-family taxonomy-values">{animal.sinh_canh}</p>
                        </div>

                        <div className="taxonomy-wrap">
                            <p className="taxonomy-label">Giá trị sử dụng: </p>
                            <p className="animal-family taxonomy-values">{animal.gia_tri_su_dung}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div className="row">
                <div className="col-md animal-characteristics">
                    <div className="animal-morphological">
                        <p className="morphological-title">Đặc điểm hình thái</p>
                        <p className="morphological-des">{animal.mo_ta_hinh_thai}</p>
                    </div>

                    <div className="animal-ecological">
                        <p className="ecological-title">Đặc điểm sinh thái</p>
                        <p className="ecological-des">{animal.mo_ta_sinh_thai}</p>
                    </div>
                </div>
            </div>

            <div className="animal-related">
                <div className="animal-related-title">Các động vật liên quan</div>
                <div className="row animal-related__list">
                    {other.map((other) =>
                        <Animal key={other.id} animal={other}/>
                    )}
                </div>
            </div>
        </div>
    );
}

export default Detail;

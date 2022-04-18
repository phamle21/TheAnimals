import React from "react";
import AnimalItem from "./AnimalItem";

const Animal = () => {
    const [animal, setAnimal] = React.useState([]);
    const [search, setSearch] = React.useState([]);
    const [limit, setLimit] = React.useState(12);

    React.useEffect(() => {
        axios({
            method: "get",
            withCredentials: true,
            url: '../api/info/list'
        })
            .then(result => {
                setAnimal(result.data)
                setSearch(result.data)
            })
    }, [])

    const loadMore = () => {
        if (limit >= search.length) {
            alert("Đã hiện hết danh sách động vật!")
            return false
        }
        if ((limit + 6) >= search.length) {
            $('#load_more').html("...Hết...");
        }
        setLimit(limit + 6)
    }

    const searchAnimal = () => {

        var keyword = $('#keyword-search-admin').val().toLowerCase();

        const arrTemp = animal.filter(animal => animal.ten_tieng_viet.toLowerCase().indexOf(keyword) > -1)

        if (arrTemp.length < 1) {
            $('#load_more').html("...Hết...");
        }else{
            $('#load_more').html("Tải thêm...");
        }

        setSearch(arrTemp)
    }

    return (
        <div className="container-fluid bg-transparent">
            <div className="row">
                <div className="col-12">
                    <div className="card">
                        <div className="card-header">
                            <p className="fs-1"> Danh sách động vật </p>
                        </div>
                        <div className="card-body pt-0">
                            <div className="mt-0 ">
                                <form className="search-bar" onSubmit={(e) => e.preventDefault()} >
                                    <input type="text" className="form-control d-inline"
                                        id="keyword-search-admin"
                                        placeholder="Tìm kiếm động vật (theo tên)"
                                        onKeyUp={searchAnimal} />
                                    <button className="btn_search" type="submit">
                                        <i className="icon-magnifier"></i>
                                    </button>
                                </form>
                            </div>

                            <div className="row mt-3 list-animal" >
                                {
                                    search.slice(0, limit).map((animal) =>
                                        <AnimalItem key={animal.id} animal={animal} />
                                    )
                                }
                            </div>

                            <div className="row text-center my-3">
                                <div className="col">
                                    <p className="info-load-more p-1" id="load_more" onClick={loadMore}>Tải thêm...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Animal;
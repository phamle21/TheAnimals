import React from "react";

const Home = () => {
    document.title = "Home Admin | The Animal"
    return (
        <div className="index_admin_body ">
            <div className="row ">
                <div className="col position-relative">
                    <div className="position-absolute top-0 end-0 w-fitcontent">
                        <p className="hello_index m-0 w-fitcontent px-5 py-4 fs-2" >
                            Hello, I am Panda
                        </p>
                    </div>
                    <img src="../assets_admin/images/logo-bg.png" className="mt-5" alt="" />
                </div>
                <div className="col">
                    <img src="../assets_admin/images/bambo-panda.png" id="bamboo_panda" alt="" />
                </div>
            </div>
        </div>
    )
}

export default Home;
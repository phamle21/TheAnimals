import React from "react";

const Home = () => {
    document.title = "Home Admin| The Animal"
    return (
        <div class="index_admin_body ">
            <div className="row ">
                <div className="col position-relative">
                    <div class="position-absolute top-0 start-100 w-fitcontent">
                        <p class="hello_index" >
                            Hello, I am Panda
                        </p>
                    </div>
                    <img src="./assets_admin/images/logo-bg.png" alt="" />
                </div>
                <div className="col">
                    <img src="./assets_admin/images/bambo-panda.png" id="bamboo_panda" alt="" />
                </div>
            </div>
        </div>
    )
}

export default Home;
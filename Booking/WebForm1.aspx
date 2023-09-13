<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Booking.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100vw; height: fit-content; margin-top: -7vh">
        <img style="width: 100%; height: 81.2vh; object-fit: cover" src="https://wallpapercave.com/wp/wp8872767.jpg" alt="sliderimage" />
    </div>
    <div style="width: 100vw; height: 100vh; margin-top: 0;">
        <span id="heading">
            <h4>Now Playing In Cinemas</h4>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="WebForm2.aspx">View all &#10095;&#10095;</asp:HyperLink>
        </span>
        <div id="n_movies">
            <div id="movie_poster">
                <div id="img-wrapper">
                    <img src="https://i.etsystatic.com/13367669/r/il/db21fd/2198543930/il_570xN.2198543930_4qne.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                    <div style="display: flex; align-items: center; justify-content: space-between; flex-direction: row; margin-left: 1rem; width: max-content">
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <p>105k Reviews</p>
                    </div>
                </div>
                <div id="img-wrapper">
                    <img src="https://hippy.in/wp-content/uploads/2014/06/lagaan-bollywood-movie-poster.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                    <div style="display: flex; align-items: center; justify-content: space-between; flex-direction: row; margin-left: 1rem; width: max-content">
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star-half-stroke" style="color: #ffbb00;"></i>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <p>95k Reviews</p>
                    </div>
                </div>
                <div id="img-wrapper">
                    <img src="https://www.tallengestore.com/cdn/shop/products/Pathan-ShahRukhKhan-BollywoodHindiMoviePoster_7604af0e-9691-4b4d-83b5-5ac53eb3c8e1.jpg?v=1675251729" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                    <div style="display: flex; align-items: center; justify-content: space-between; flex-direction: row; margin-left: 1rem; width: max-content">
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star" style="color: #ffbb00;"></i>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <p>95k Reviews</p>
                    </div>
                </div>
                <div id="img-wrapper">
                    <img src="https://www.washingtonpost.com/graphics/2019/entertainment/oscar-nominees-movie-poster-design/img/black-panther-web.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                    <div style="display: flex; align-items: center; justify-content: space-between; flex-direction: row; margin-left: 1rem; width: max-content">
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star" style="color: #ffbb00;"></i>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <p>95k Reviews</p>
                    </div>
                </div>
                <div id="img-wrapper">
                    <img src="https://i3.wp.com/raisingwhasians.com/wp-content/uploads/2017/07/Ant-Man-Avengers-movie-poster.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                    <div style="display: flex; align-items: center; justify-content: space-between; flex-direction: row; margin-left: 1rem; width: max-content">
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star-half-stroke" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star" style="color: #ffbb00;"></i>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <p>95k Reviews</p>
                    </div>
                </div>
                <div id="img-wrapper">
                    <img src="https://i.ebayimg.com/images/g/ujkAAOSwYEhjyt9a/s-l1600.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                    <div style="display: flex; align-items: center; justify-content: space-between; flex-direction: row; margin-left: 1rem; width: max-content">
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star-half-stroke" style="color: #ffbb00;"></i>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <p>95k Reviews</p>
                    </div>
                </div>
                <div id="img-wrapper">
                    <img src="https://static.toiimg.com/thumb/msid-94859575,width-400,resizemode-4/94859575.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                    <div style="display: flex; align-items: center; justify-content: space-between; flex-direction: row; margin-left: 1rem; width: max-content">
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star-half-stroke" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star" style="color: #ffd500;"></i>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <p>95k Reviews</p>
                    </div>
                </div>
                <div id="img-wrapper">
                    <img src="https://i.pinimg.com/1200x/6d/0a/f1/6d0af17994ef300bb76ddbfc758b2bff.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                    <div style="display: flex; align-items: center; justify-content: space-between; flex-direction: row; margin-left: 1rem; width: max-content">
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-solid fa-star" style="color: #ffbb00;"></i>
                        <i class="fa-regular fa-star-half-stroke" style="color: #ffbb00;"></i>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <p>95k Reviews</p>
                    </div>
                </div>
            </div>
        </div>
<%-- /********/ --%>
        <span id="heading2">
            <h2>Upcoming Movies</h2>
        </span>
        <div id="n_movies">
            <div id="movie_poster">
                <div id="img-wrapper">
                    <asp:Image ID="Image1" runat="server" ImageUrl="https://c1.staticflickr.com/1/303/31960745453_7aefc29722_c.jpg" />
                    <span id="btn_span">
                        <span id="card_btns">
                            <asp:Label ID="moviename" runat="server" Text="Kong"></asp:Label>
                            <button class="dtbtn" style="font-weight: 700">View Details</button>
                            
                        </span>
                    </span>

                </div>
                <div id="img-wrapper">
                    <img src="https://images.thedirect.com/media/photos/posd1_1.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>

                </div>
                <div id="img-wrapper">
                    <img src="https://m.media-amazon.com/images/I/61Oh3-ASJZL._AC_UF1000,1000_QL80_.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>

                </div>
                <div id="img-wrapper">
                    <img src="https://topmovierankings.com/wp-content/uploads/2023/04/Tiger-3.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>

                </div>
                <div id="img-wrapper">
                    <img src="https://pbs.twimg.com/media/EeKK5-LU8AEYXFE.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>

                </div>
                <div id="img-wrapper">
                    <img src="https://preview.redd.it/poster-of-welcome-3-aka-welcome-to-the-jungle-thoughts-v0-bsnxv7zw49nb1.jpg?width=640&crop=smart&auto=webp&s=1fe45d13ad8b261e82fb78da89f6890cf5d47c97" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>

                </div>
                <div id="img-wrapper">
                    <img src="https://i.pinimg.com/originals/9a/3a/cd/9a3acde37ec5c00436cca6cc1a0c83ad.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                    </span>
                </div>
                <div id="img-wrapper">
                    <img src="https://1.bp.blogspot.com/-J3U0TsEK4lc/YOgVx-JVvRI/AAAAAAAAOp4/AAeOqoLdsT4tc3XG6vMNYB1QLalV8W-owCLcBGAsYHQ/s1015/Upcoming%2BHindi%2Bfilm%252C%2B%2523BhootPolice%2BMovie%2BPosters%2B%25284%2529.jpg" />
                    <span>
                        <span>
                            <p style="font-weight: 700">Avengers Endgame</p>
                            <p>The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take ...</p>
                        </span>
                        <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
                    </span>

                </div>
            </div>
        </div>

    </div>
</asp:Content>

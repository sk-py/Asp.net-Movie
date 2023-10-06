<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Backend.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title></title>
    <link rel="stylesheet" href="style.css" />
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style type="text/css" media="screen and (max-width:800px)">
        
            #movie_poster{
                overflow-y:hidden;
            }

            #img-wrapper{
                width:10rem;
                height:15rem;
            }

            #movieContainer {
                width:99%;
                height:32rem;
            display: flex;
            align-items:center;
            align-items:center;
            justify-content:center;
            flex-direction: row;
            padding:1rem;
            overflow-y:scroll;
            position:relative;
            }
            #flBtn{
                position:absolute;
                bottom:5px;
                left:50%;
                display:block;
            }
        </style>

</head>
<body>
    <form id="form1" runat="server">
        
           
    <div style="width: 100vw; height: 100vh; margin-top: 0;">
        <span id="heading">
            <h4>Now Playing In Cinemas</h4>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="WebForm2.aspx">View all &#10095;&#10095;</asp:HyperLink>
        </span>
        <div id="n_movies">
            <div id="movie_poster">
                 <div id="movieContainer" runat="server" class="media-mobile">
                    <!-- Movie cards will be dynamically generated here -->
                </div>
                <section style="width:100vw;height:100vh;background-color:white;">

                </section>
            </div>
        </div>
        </div>
    </form>
</body>
</html>

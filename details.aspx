<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Backend.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Details</title>
    <style>
        body{
            padding:0;
            margin:0;
            width:100vw;
        }
        #Image1{
            width:100%;
            height:100%;
            object-fit:cover;
            filter:opacity(0.7);
        }
        #bgImg{
            width:70%;
            height:50vh;
            margin-inline:auto;
            background-color:black;
        }
        #main{
            width:70%;
            margin-inline:auto
        }

    </style>
    <style type="text/css" media="screen and (max-width:800px)">
        #bgImg{
            width:100%;
            height:50vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section id="bgImg">
            <asp:Image ID="Image1" runat="server" />
            </section>
            <section id="main">
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
            </section>
        </div>
    </form>
</body>
</html>

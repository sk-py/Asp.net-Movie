<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieAdd.aspx.cs" Inherits="Backend.MovieAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height:100vh;width:100vw;display:grid;place-items:center;">
    <form id="form1" runat="server">
        <div style="display:grid;place-items:center;row-gap:1rem;">
            <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter Movie Name" style="padding:1rem;border-radius:2rem;text-align:center"></asp:TextBox><br />
            <asp:Label runat="server" ID="lblImg" Text="Movie Poster : "></asp:Label>
            <asp:FileUpload ID="fileUploadControl" runat="server" style="" /><br />
            <asp:Button ID="Button1" runat="server" Text="Upload Movie" OnClick="UploadButton_Click" style="padding:0.5rem;border-radius:0.5rem;font-size:1.1rem;cursor:pointer;color:white;background-color:black"/><br />
            <asp:Label ID="lblError" runat="server" Text="" style="color:red"></asp:Label>
        </div>
    </form>
</body>
</html>

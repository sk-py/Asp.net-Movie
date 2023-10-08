<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Seats.aspx.cs" Inherits="Backend.Seats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       
  @import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&family=Fira+Sans:wght@200;400&family=Jost:wght@300;400;600&family=Manrope:wght@200;300;400;500;600;700;800&family=Montserrat:wght@200;300;400;800&family=Open+Sans:wght@500;600;700&family=Poppins:wght@300;400;500&display=swap');

        body{
            margin:0;
            padding:0;
            width:100vw;
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background-color:#032055;
            font-family:'Open Sans', sans-serif;
        }
        #main{
            width:100%;
            height:100%;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
            /*row-gap:1rem;*/
            /*background-color:#0c8ed0;*/
            background-color:#001232;
            overflow:hidden;
            border-radius:1rem;
            
        }
        #checkboxContainer{
            width:100%;
            height:100%;
            display:grid;
            /*align-items:center;
            justify-content:center;*/
            grid-template-rows:repeat(2,30px);
            grid-template-columns:repeat(4,80px);
            margin-inline:auto;
            place-content:center;
            gap:1rem;
            background-color:#001232;
            padding:1rem;
            border-radius:1rem;
        }

        #screen{
         /*width: 400px;*/ /* Adjust the width as needed */
          /*height: 6rem;*/ /* Adjust the height as needed */
          /*background-color: lightblue;*/ /* Set the background color to black for a typical cinema screen */
          /*clip-path: polygon(0% 0%, 100% 0%, 75% 100%, 25% 100%);*/
          /*clip-path: polygon(25% 150%, 85% 100%, 100% 0%, 0% 0%);
          transform:rotate(-180deg);
         box-shadow:8px 8px 20px 1px lightcyan ;*/
         margin-left:1rem;
            width:100%;
        }

        .seat{
            position:relative;

        }
      /*  .bookedSeats{
            accent-color:yellow;
        }*/

        input[type=checkbox]{
        }

        input:checked{
            background-color:black;
            animation: show-off 0.5s;
            accent-color:greenyellow;
        }

        @keyframes show-off {
            0% {
            transform: scale(1);
            opacity: 1;
            visibility: visible;
            }

            100% {
            transform: scale(3);
            opacity: 0;
            }
         }
        
        .Menu{
            width:100%;
            display:flex;
            align-items:center;
            justify-content:center;
            color:white;
            gap:0.5rem;
            margin-left:3rem;
        }
        .Menu span{
            display:flex;
        }
        .Menu span h5{
            margin-right:1rem;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <div class="Menu">

                <span>
                    <input type="checkbox" class="smallBox" style="pointer-events:none" />
                    <h5>Premium</h5>
                </span>
                <span>
                    <input type="checkbox" class="smallBox" style="width:1.4rem;pointer-events:none"/>
                    <h5>Executive</h5>
                </span> 
                <span>
                    <input type="checkbox" class="smallBox" disabled="disabled" checked="checked" />
                    <h5>Booked</h5>
                </span>
                <span>
                    <input type="checkbox" class="smallBox"style="pointer-events:none"/>
                    <h5>Available</h5>
                </span>
            </div>
            <div id="checkboxContainer" runat="server">
                
            </div>
            <span style="width:100%;text-align:center;display:flex;align-items:center;flex-direction:column">
                <img src="Screenshot 2023-10-08 200537.png" id="screen"/>
                <p style="width:100%;color:white">All Eyes This Way Please</p>
            </span>
            <asp:Label ID="lblSelectedSeatCount" runat="server" Text=" " style="color:white"></asp:Label>
        </div>
        <script type="text/javascript">
                var maxSeats = 8; 
                var selectedSeats = 0;

                function handleCheckboxChange() {
                    var checkboxes = document.querySelectorAll('.seats');
                    selectedSeats = 0;

                    checkboxes.forEach(function (checkbox) {
                        if (checkbox.checked) {
                            selectedSeats++;
                        }
                    });

                    if (selectedSeats >= maxSeats) {
                        // Disable further selections when the limit is reached
                        checkboxes.forEach(function (checkbox) {
                            if (!checkbox.checked) {
                                checkbox.disabled = true;
                            }
                        });
                    } else {
                        // Enable all checkboxes if below the limit
                        checkboxes.forEach(function (checkbox) {
                            checkbox.disabled = false;
                        });
                    }
            }

            var label = document.getElementById(lblSelectedSeatCount);
            label.innerText = selectedSeats;

                //// Attach the handleCheckboxChange function to the change event of checkboxes
                //var checkboxes = document.querySelectorAll('.seat-checkbox');
                //checkboxes.forEach(function (checkbox) {
                //    checkbox.addEventListener('change', handleCheckboxChange);
                //});
        </script>
    </form>
</body>
</html>

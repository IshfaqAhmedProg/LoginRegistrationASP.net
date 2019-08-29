<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_finalV2.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 134px;
            height: 104px;
        }
        .auto-style2 {
            height: 104px;
            width: 309px;
        }
        table {
    border-collapse:separate;
    border:outset 1px;
    border-radius:6px;
    -moz-border-radius:6px;
}
    </style>
  </head>
  <body>
      <form id="form1" runat="server">
          
              <nav class="navbar navbar-expand-lg navbar-light bg-light" align="center">
                  <div align="center"><a class="navbar-brand" href="#">Login</a></div>
      </nav>
    <div align="center" style="padding:20px 20px 20px 20px; background-color:#778899;min-height:80vh;">
        <table style="padding:40px 20px 20px 20px; height: 243px;  margin-top: 29px;background-color:#DCDCDC; width: 453px;">
            <tr>
                <td class="auto-style1" align="center" rowspan="2">
                    <asp:Label ID="ulbl" runat="server" Text="Username"></asp:Label>:
                </td>
                <td class="auto-style2" align="center">
                    <asp:TextBox ID="unbox" runat="server" Height="38px" Width="250px"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="errlbl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="remlbl" runat="server" Text="Remember me?"></asp:Label><asp:CheckBox ID="rem" runat="server" />
                    </td>
                    <br />
                </tr>
                    <tr>
                        <td align="center" colspan="2">
                    <asp:Button class="btn btn-secondary" ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
                             <asp:Button class="btn btn-secondary" ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" Visible="False" />
                     </td>
                            </tr>
                       
            
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
             
      </form>
      <div align="center">
          Not Registered?Register <a href="Registration.aspx">here</a>.
      </div>
    </body>
</html>

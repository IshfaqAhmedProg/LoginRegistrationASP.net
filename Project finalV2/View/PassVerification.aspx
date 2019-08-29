<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassVerification.aspx.cs" Inherits="Project_finalV2.View.PassVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Login</title>
  </head>
  <body>
      <form id="form1" runat="server">
          
              <nav class="navbar navbar-expand-lg navbar-light bg-light">
                  <div align="center"><a class="navbar-brand" href="#">Login</a></div>
      </nav>
    <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="ulbl" runat="server" Text="Password"></asp:Label>:
                </td>
                <td>
                    <asp:TextBox ID="unbox" runat="server"></asp:TextBox>
                    <asp:Label ID="errlbl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
                    <br />
                    <tr>
                        <td align="center" colspan="2">
                    <asp:Button class="btn btn-secondary" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                             
                     </td>
                            </tr>
                        
            
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
             
      </form>
      <div align="center">
          Not Registered?Register <a href="Registration.aspx">here</a>.
      </div>
    </body>
</html>

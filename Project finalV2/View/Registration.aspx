<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project_finalV2.View.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        td {
            text-align:center;
            padding-top:10px;
        }
        table {
    border-collapse:separate;
    border:outset 1px;
    border-radius:6px;
    -moz-border-radius:6px;
}
       
    </style>
    <title>Registration</title>
  </head>
  <body>
      
      <form id="form1" runat="server">
          <div align="center">
   <a class="navbar-brand" href="#">Registration</a>
              </div>
  <div align="center" style="padding:20px 20px 20px 20px; background-color:#778899;min-height:80vh;">
        <table style="padding:40px 40px 20px 20px; height: 522px; margin-top: 29px;background-color:#DCDCDC; width: 453px;">
            <tr>
                <td colspan="2">
                    <span></span>
                </td>
            </tr>  
            <tr>
                  <td align="center">
                      User Name:
                  </td>
                  <td align="center">
                      <asp:TextBox ID="unbox" runat="server"></asp:TextBox>
                  </td>
              </tr>
            <tr>
                <td colspan="2" style="color: #FF0000">
                    <span><asp:Label ID="unerr" runat="server" Text=""></asp:Label></span>
                </td>
            </tr>  
              <tr>
                  <td >
                      First Name:
                  </td>
                  <td>
                      <asp:TextBox ID="fnbox" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td colspan="2"style="color: #FF0000">
                    <asp:Label ID="fnerr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
              <tr>
                  <td>
                      Last Name:
                  </td>
                  <td>
                      <asp:TextBox ID="lnbox" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td colspan="2" style="color: #FF0000">
                    <asp:Label ID="lnerr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                  <td>
                      Gender:
                  </td>
                  <td>
                      <asp:RadioButtonList ID="gender" runat="server" RepeatDirection ="Horizontal">
                          <asp:ListItem Value="male">Male</asp:ListItem>
                          <asp:ListItem Value="female">Female</asp:ListItem>
                      </asp:RadioButtonList>
                  </td>
              </tr>
              
              <tr>
                  <td>
                      Date of Birth:
                  </td>
                  <td>
                      <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                  </td>
              </tr>
              <tr>
                <td colspan="2" style="color: #FF0000">
                    <asp:Label ID="doberr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
              <tr>
                  <td>
                      Email:
                  </td>
                  <td>
                      <asp:TextBox ID="ebox" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td colspan="2" style="color: #FF0000">
                    <asp:Label ID="eerr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
              <tr>
                  <td>
                      Password:
                  </td>
                  <td>
                      <asp:TextBox ID="pbox" runat="server" TextMode="Password"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td colspan="2" style="color: #FF0000">
                    <asp:Label ID="perr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
              <tr>
                  <td>
                      Confirm Password:
                  </td>
                  <td>
                      <asp:TextBox ID="cpbox" runat="server" TextMode="Password"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td colspan="2" style="color: #FF0000">
                    <asp:Label ID="cperr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
              
          
              <tr>
                  <td colspan="2">
                      I Agree To All The <a href="TNC.aspx">Terms And Conditions</a><asp:CheckBox ID="tncbox" runat="server" />
                  </td>
              </tr>
            <tr>
                <td colspan="2" style="color: #FF0000">
                    <asp:Label ID="tncerr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
              <tr>
                  <td colspan="2">
                      <asp:Button class="btn btn-secondary" ID="Submit" runat="server" Text="Register" OnClick="Submit_Click" />
                  </td>
              </tr>
          </table>
      </div>
       
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      </form>
  </body>
</html>

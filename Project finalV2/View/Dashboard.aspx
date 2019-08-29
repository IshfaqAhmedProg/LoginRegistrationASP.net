<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project_finalV2.View.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Dashboard</title>
  </head>
  <body>
      <form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Dashboard</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <asp:Button ID="dbbtn" runat="server" Text="Database" style="background-color: transparent;" BorderStyle="None" OnClick="dbbtn_Click"/>
          </li>
          <li class="nav-item">
              <asp:Button ID="lg" runat="server" Text="Logout" style="background-color: transparent;" BorderStyle="None" OnClick="lg_Click"/>
           </li>
       </ul>
    </div>
</nav>
     <div align="center" style="padding:20px 20px 20px 20px; background-color:#778899;min-height:80vh;">
        
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT [Id], [username], [firstname], [lastname], [email], [gender], [dob] FROM [accounts]"></asp:SqlDataSource>
          <asp:Label ID="Label1" runat="server" class="display-3" Text=""></asp:Label>
      
          <br />
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                  <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                  <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                  <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                  <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                  <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                  <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
              </Columns>
          </asp:GridView>
          </div>
      </form>
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
  </body>
</html>

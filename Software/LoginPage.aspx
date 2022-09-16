<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ERecs.WebForm1" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="form-group ">
        <asp:DropDownList ID="dpUnit" runat="server" AutoPostBack="true" class="form-control" Height="30px" OnSelectedIndexChanged="dpUnit_SelectedIndexChanged">
 </asp:DropDownList>
    </div>


    <div class="form-group ">

        <asp:DropDownList ID="dpUserTypes" runat="server" AutoPostBack="true" class="form-control" Height="30px" OnSelectedIndexChanged="dpUserTypes_SelectedIndexChanged">
            <asp:ListItem Value="0">Select User Type---></asp:ListItem>

        </asp:DropDownList>
    </div>

    <div class="form-group ">
        <asp:Label ID="email" runat="server" class="sr-only" Text="Email "></asp:Label>
    </div>
    <div class="form-group ">
        <asp:TextBox ID="txtUsername" runat="server" TextMode="SingleLine" placeholder="SLN Email address" MaxLength="70" class="form-control"></asp:TextBox>

    </div>
    <div class="form-group ">
        <label for="password" class="sr-only">Password</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" MaxLength="20" class="form-control"></asp:TextBox>
    </div>

    <div class="form-group mb-4">
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" class="btn btn-block login-btn mb-4" />
    </div>
    <asp:Label ID="lblinfo" runat="server" Class="text-danger" Text=""></asp:Label>
    <br />
    <br />
    <div class="form-group row  ">
        <div class="col-2"></div>
        <div class="col-10">
          <footer class="footer text-muted">- Director Naval  Pay and Pension -</footer>
        </div>
        
    </div>
</asp:Content>


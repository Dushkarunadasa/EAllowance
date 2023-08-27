<%@ Page Title="User Details" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="UserUtilities.aspx.cs" Inherits="ERecs.UserUtilities" EnableEventValidation="false" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>User Base/Ship Change...</h5>


    <div class="form-group row">
        <label for="SysCode" class="col-sm-6 col-form-label">SysCode</label>
        <div class="col-6">
            <select class="form-control" id="cmbSysCode" runat="server">
                <option>RNF</option>
                <option>VNF</option>
            </select>
        </div>
    </div>
    <div class="form-group row">
        <label for="CatCode" class="col-sm-6 col-form-label">CatCode</label>
        <div class="col-6">
            <select class="form-control" id="cmbCatCode" runat="server">
                <option>O</option>
                <option>S</option>
            </select>
        </div>
    </div>
    <div class="form-group row">
        <label for="SysCode" class="col-sm-4 col-form-label">Official No</label>
        <div class="col-5">
            <asp:TextBox ID="txtOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
        </div>
        <div class="col-3">
            <asp:Button ID="btnSearchOfficer" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnSearchOfficer_Click" />
        </div>
    </div>


    <div class="row alert-primary">
        <asp:Label ID="Label4" runat="server" Text="Base :" Visible="true" class="col-5 col-form-label"></asp:Label>

        <asp:Label ID="lbloBase" runat="server" Text="" Visible="true" class="col-7 col-form-label">..........</asp:Label>
    </div>

    <%--     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="67px" Width="1285px" --%>
    <label for="cmbBase" class="col-form-label">Select your Base/Ship :</label>
    <div class="form-group row">


        <asp:DropDownList ID="cmbBase" runat="server" CssClass="form-control " AutoPostBack="true" OnSelectedIndexChanged="cmbBase_SelectedIndexChanged">
        </asp:DropDownList>


    </div>
    <asp:Label ID="lblMBaseCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>

    <div class="form-group row">



        <div class="col-sm-6">
            <asp:Button ID="btnForward" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnForward_Click" />
        </div>
        <div class="col-sm-6">
            <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-secondary" OnClick="btnBack_Click" />
        </div>

    </div>



    </div>
</asp:Content>




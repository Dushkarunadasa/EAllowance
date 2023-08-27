<%@ Page Title="BaseChange" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="IncentiveBaseChange.aspx.cs" Inherits="ERecs.IncentiveBaseChange" EnableEventValidation="false" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>Data Entry Form...</h5>
    <div class="p-3 mb-2 bg-primary text-white">
        <asp:UpdatePanel ID="updatePanel5" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="lblOfficialNo" class="col-md-2 mb-5 col-form-label text-white ">Applicant Official No :</label>
                    <asp:Label ID="lblOfficialNo" class="col-md-1 mb-5 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="lblUnitId" class="col-md-2 mb-5 col-form-label text-white ">Name and Rank :</label>
                    <asp:Label ID="lblname" class="col-md-3 mb-5 col-form-label" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblUnitId" class="col-md-1 mb-5 col-form-label" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="lblUnitName" class="col-md-1 mb-7 col-form-label text-white ">Unit :</label>
                    <asp:Label ID="lblUnitName" class="col-md-1 mb-7 col-form-label " runat="server" Text=""></asp:Label>
                    <label for="lblUserType" class="col-md-1 mb-7 col-form-label text-white ">User Type :</label>
                    <asp:Label ID="lblUserType" class="col-md-1 mb-7 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="lblBaseName" class="col-md-1 mb-7 col-form-label text-white ">Base/Ship :</label>
                    <asp:Label ID="lblBaseName" class="col-md-3 mb-7 col-form-label " runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblBaseCode" class="col-md-3 mb-7 col-form-label" runat="server" Text="" Visible="false"></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <%-- set 01 --%>
    <div>
        <asp:UpdatePanel ID="updatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>

                <div class="form-group row">
                    <label for="cmbBase" class="col-sm-2 col-form-label">Incentive ID :</label>
                    <div class="col-sm-4">
                        <asp:Label ID="lblIncentive" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="cmbBase" class="col-sm-2 col-form-label">Select Your Mother Base :</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="cmbBase" runat="server" CssClass="form-control " AutoPostBack="true" OnSelectedIndexChanged="cmbBase_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4">
                    </div>
                    <asp:Label ID="lblMBaseCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group row">
                    <div class="col-sm-3"></div>
                    <div class="form-group ">
                        <asp:Button ID="btnUpdate" runat="server" Text="update Base" class="btn btn-danger alert-primary " OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete Incentive" class="btn btn-danger alert-primary " OnClick="btnDelete_Click" />
                    </div>
                    
                </div>

                <div class="row">
                    <asp:Label ID="lblnote" class="col-sm-2 col-form-label alert-warning" runat="server" Text=""></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>





</asp:Content>




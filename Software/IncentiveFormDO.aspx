<%@ Page Title="DataEntry" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="IncentiveFormDO.aspx.cs" Inherits="ERecs.IncentiveFormDO" EnableEventValidation="false" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>Data Entry Form...</h5>
    <div class="p-3 mb-2 bg-primary text-white">
        <asp:UpdatePanel ID="updatePanel5" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="lblOfficialNo" class="col-md-2 mb-5 col-form-label text-white ">Division Officer's Official No :</label>
                    <asp:Label ID="lblOfficialNo" class="col-md-4 mb-3 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="lblUnitId" class="col-md-2 mb-5 col-form-label text-white ">Mail Address:</label>
                    <asp:Label ID="lblname" class="col-md-3 mb-5 col-form-label" runat="server" Text="" ></asp:Label>
                    <asp:Label ID="lblUnitId" class="col-md-1 mb-5 col-form-label" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="lblUnitName" class="col-md-1 mb-7 col-form-label text-white ">Unit :</label>
                    <asp:Label ID="lblUnitName" class="col-md-1 mb-7 col-form-label " runat="server" Text=""></asp:Label>
                    <label for="lblUserType" class="col-md-1 mb-7 col-form-label text-white ">User Type :</label>
                    <asp:Label ID="lblUserType" class="col-md-3 mb-7 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="lblBaseName" class="col-md-1 mb-7 col-form-label text-white ">Base/Ship :</label>
                    <asp:Label ID="lblBaseName" class="col-md-3 mb-7 col-form-label " runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblBaseCode" class="col-md-1 mb-7 col-form-label" runat="server" Text="" Visible="false"></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <%-- set 01 --%>
    <div>
        <asp:UpdatePanel ID="updatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="txtUSysCode" class="col-sm-2 col-form-label">
                        SysCode :
                    </label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtUSysCode" placeholder="SysCode" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <label for="txtUCatCode" class="col-sm-2 col-form-label">
                        CatCode :
                    </label>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtUCatCode" placeholder="CatCode" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>

                    <label for="txtUOfficialNo" class="col-sm-2 col-form-label">
                        Official No :
                    </label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtUOfficialNo" placeholder="OfficialNo" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>

                </div>
                <div class="form-group row">
                    <label for="txtDateOfEnlistment" class="col-sm-2 col-form-label">
                        Date of Enlistment :
                    </label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtDateOfEnlistment" placeholder="Date Of Enlistment" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>

                </div>

                <div class="form-group row">
                    <label for="txtService" class="col-md-2 mb-3 col-form-label">
                        Naval Service :
                    </label>
                    <div class="col-md-6 mb-3">
                        <asp:TextBox ID="txtService" placeholder="Service Period" runat="server" CssClass="form-control correct value" Text=""></asp:TextBox>
                    </div>

                </div>
                <div class="form-group row">
                    <p style="color:red;">අංශභාර නිලධාරි විසින් සේවා සහතිකය පරික්‍ෂා කිරිමෙන් අනතුරුව දඩුවම් හා සේවය කඩවීම් විස්තර සම්පුර්ණ කළ යුතුය. නිවැරදි නොවන දත්ත ඇතුලත් කිරිම තුලින් මුල්‍ය වංචාවක් සිදු වන බව අවධාරනය කෙරේ. </p>
                    </div>
                <div class="form-group row">

                    <label for="cmbRun" class="col-md-2 mb-3 col-form-label">Service Break Details :</label>
                    <div class="col-md-2 mb-3">
                        <asp:DropDownList ID="cmbRun" runat="server" CssClass="form-control " AutoPostBack="true">
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                            <asp:ListItem Value="0">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-8 mb-3">

                        <asp:GridView ID="dgvRun" class="table table-info table-striped" runat="server">
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Purple" />
                        </asp:GridView>
                    </div>
                </div>
                <div class="form-group row">

                    <label for="cmbRun" class="col-md-2 mb-3 col-form-label">Punishment Details :</label>
                    <div class="col-md-2 mb-3">
                        <asp:DropDownList ID="cmbPunishment" runat="server" CssClass="form-control " AutoPostBack="true">
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                            <asp:ListItem Value="0">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-8 mb-3">
                        <asp:GridView ID="dgvPunishment" class="table table-info table-striped" runat="server">
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Purple" />
                        </asp:GridView>

                    </div>

                </div>
                <div class="form-group row">
                    <label for="txtCurrentIncentive" class="col-sm-2 col-form-label">Current Incentive</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCurrentIncentive" placeholder="Existing Incentive" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <asp:Label ID="lblCurrIncentiveName" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="txtAppliedIncentive" class="col-sm-2 col-form-label">Elagible Incentives :</label>
                    <div class="col-sm-4">
                          <asp:TextBox ID="txtAppliedIncentive" placeholder="Elagible Incentive" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <asp:Label ID="lblItemCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="txtEffectDt" class="col-sm-2 col-form-label">Effect Date :</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEffectDt" placeholder="Effect Date" runat="server" CssClass="form-control correct value" Text=""></asp:TextBox>
                    </div>
                    <asp:Label ID="Label2" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="cmbBase" class="col-sm-2 col-form-label">Mother Base :</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="cmbBase" runat="server" CssClass="form-control " AutoPostBack="true" OnSelectedIndexChanged="cmbBase_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <asp:Label ID="lblMBaseCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div class="col-sm-1">
        <asp:Button ID="btnForward" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnForward_Click" />
    </div>
    <br />
    <br />
    <div class="card-body p-3 mb-2 bg-secondary text-white">

        <br />
        <asp:UpdatePanel ID="updatePanel6" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">

                    <asp:GridView ID="GVTransDetails" class="table table-info table-striped" runat="server" Width="1105px" OnRowCommand="GVTransDetails_RowCommand">
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                        </Columns>
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
</asp:Content>




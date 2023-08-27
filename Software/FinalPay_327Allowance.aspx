<%@ Page Title="327 Allowances for Final Pay" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="FinalPay_327Allowance.aspx.cs" Inherits="ERecs.FinalPay_327Allowance" EnableEventValidation="false" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>Data Entry Form...</h5>
    <div class="p-3 mb-2 bg-primary text-white">
        <asp:UpdatePanel ID="updatePanel5" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="PayMonth" class="col-sm-2 col-form-label">Process Month :</label>
                    <asp:Label ID="lblMonth" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="PayMonth" class="col-sm-2 col-form-label">YYYYMM</label>
                    <asp:Label ID="lblUnitId" class="col-sm-2 col-form-label" runat="server" Text="" Visible="false"></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="SysCode" class="col-sm-1 col-form-label">Unit :</label>
                    <asp:Label ID="lblUnitName" class="col-sm-1 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="bCode" class="col-sm-2 col-form-label">User Type :</label>
                    <asp:Label ID="lblUserType" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="bxdr" class="col-sm-2 col-form-label">Base/Ship :</label>
                    <asp:Label ID="lblBaseName" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblBaseCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>

                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>


    <%-- set 04 --%>
    <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

        <!-- Accordion card -->
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingOne1">
                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="false"
                    aria-controls="collapseOne1">
                    <h5 class="mb-0 ">Pending List <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
                    <fieldset>
                    </fieldset>



                </div>
            </div>

        </div>

        <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo2">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Correct 327 Allowances List  <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>
            <!-- Card body -->
            <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
                    <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">
                                    <label for="cmbPayMonth" class="col-sm-2 col-form-label">Relevant Month</label>
                                    <div class="col-sm-2">
                                        <asp:DropDownList ID="cmbPayMonth" runat="server" CssClass="form-control" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">SysCode</label>
                                    <div class="col-sm-2">
                                        <asp:Label ID="lblSysCode" runat="server" CssClass="form-control "></asp:Label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">CatCode</label>
                                    <div class="col-sm-2">
                                        <asp:Label ID="lblCatCode" runat="server" CssClass="form-control "></asp:Label>

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Official No</label>
                                    <div class="col-sm-2">
                                        <asp:Label ID="lblOfficialNo" runat="server" CssClass="form-control "></asp:Label>
                                    </div>

                                </div>

                                <div class="form-group row border-top my-5 alert-primary ">
                                    <asp:Label ID="Label1" runat="server" Text="TransId :" Visible="true" class="col-sm-1 col-form-label"></asp:Label>
                                    <asp:Label ID="lblTransId" runat="server" Text="" Visible="true" class="col-sm-1 col-form-label"></asp:Label>
                                    <asp:Label ID="lRank" runat="server" Text="Rank :" Visible="true" class="col-sm-1 col-form-label"></asp:Label>
                                    <asp:Label ID="lbloRank" runat="server" Text="Rank" Visible="true" class="col-sm-2 col-form-label"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="Name :" Visible="true" class="col-sm-1 col-form-label"></asp:Label>
                                    <asp:Label ID="lbloName" runat="server" Text="Name with initial" Visible="true" class=" col-sm-3 col-form-label"></asp:Label>

                                </div>
                                <%--     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="67px" Width="1285px" --%>
                                <asp:Label ID="lblerror" runat="server" class=" col-sm-1 col-form-label" BackColor="Yellow" ForeColor="Red"></asp:Label>
                                <div class="form-group row">
                                    <div class="table-responsive-xl " style="overflow: scroll">
                                        <asp:GridView ID="GvSubjectItems" runat="server" class="table table-dark table-striped" OnRowDeleting="GvSubjectItems_RowDeleting" Width="1250px" OnPageIndexChanging="GvSubjectItems_PageIndexChanging" OnRowEditing="GvSubjectItems_RowEditing" OnRowUpdating="GvSubjectItems_RowUpdating" OnRowCancelingEdit="GvSubjectItems_RowCancelingEdit" PageSize="50">
                                            <Columns>
                                                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                                                <asp:CommandField ShowEditButton="True" />
                                            </Columns>
                                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        </asp:GridView>
                                    </div>
                                </div>

                                <div class="form-group row">

                                    <%--   <div class="col-sm-2">
                                        <asp:Button ID="btnCheckValidity" OnClientClick="Confirm()" runat="server" Text="Validity Check" CssClass="btn btn-primary " OnClick="btnValidity_Click" />
                                    </div>--%>
                                    <div class="col-2">
                                        <asp:Button ID="btnShort" runat="server" Text="Short" CssClass="btn btn-info" OnClick="btnShort_Click" />
                                    </div>
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Button ID="btnForward" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnForward_Click" />
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Button ID="btnClear" runat="server" Text="New" CssClass="btn btn-primary" OnClick="btnClear_Click" />
                                    </div>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="form-group row">
                        <div class="col-2 ">
                            <asp:Button ID="BtnGrid_to_Excel" runat="server" Text="Grid To Excel" class="btn btn-info" OnClick="BtnGrid_to_Excel_Click" />
                        </div>
                    </div>


                </div>

            </div>
        </div>

    </div>




    <div class="card">
        <!-- Card header -->
        <div class="card-header" role="tab" id="headingTwo4">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo4"
                aria-expanded="false" aria-controls="collapseTwo3">
                <h5 class="mb-0">327 Adjustment Lists <i class="fas fa-angle-double-right  rotate-icon"></i>
                </h5>
            </a>
        </div>
        <!-- Card body -->
        <div id="collapseTwo4" class="collapse" role="tabpanel" aria-labelledby="headingTwo4"
            data-parent="#accordionEx">
            <div class="card-body p-3 mb-2 bg-secondary text-white">

                <br />
                <asp:UpdatePanel ID="updatePanel6" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="True">
                    <ContentTemplate>
                        <div class="form-group row">

                            <asp:GridView ID="GVTransDetails" class="table table-info table-striped" runat="server" Width="1105px" OnLoad="GVTransDetails_Load" OnRowCommand="GVTransDetails_RowCommand">
                                <Columns>
                                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                                </Columns>
                                <Columns>
                                    <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-success" CommandName="ScannedDocs" HeaderText="Download" ShowHeader="True" Text="Docs" />
                                </Columns>
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:PostBackTrigger ControlID="GVTransDetails" />
                    </Triggers>
                </asp:UpdatePanel>

            </div>
        </div>
    </div>

</asp:Content>




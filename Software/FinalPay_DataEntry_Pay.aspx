<%@ Page Title="FinalPay DataEntry Pay" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="FinalPay_DataEntry_Pay.aspx.cs" Inherits="ERecs.FinalPay_DataEntry_Pay" EnableEventValidation="false" %>

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
    <%-- set 01 --%>
    <div>
        <asp:UpdatePanel ID="updatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <div class="form-group col-1">

                        <div class="form-group row ">
                            <asp:Label ID="Label1" class="col-form-label" runat="server" Text="SysCode"></asp:Label>

                        </div>
                        <div class="form-group row ">
                            <asp:Label ID="Label2" class="col-form-label" runat="server" Text="CatCode"></asp:Label>

                        </div>

                        <div class="form-group row ">
                            <asp:Label ID="Label7" class="col-form-label" runat="server" Text="Official No"></asp:Label>

                        </div>


                    </div>
                    <div class="form-group col-4">
                        <div class="form-group row">

                          
                                <select class="form-control" id="LSysCode" runat="server">
                                    <option value="RNF">RNF</option>
                                    <option value="VNF">VNF</option>
                                </select>
                            
                        </div>
                        <div class="form-group row">

                           
                                <select class="form-control" id="LCatCode" runat="server">
                                    <option value="O">O</option>
                                    <option value="S">S</option>

                                </select>
                        
                        </div>
                        <div class="form-group row">
                            <asp:DropDownList ID="dpOfficialNo" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dpOfficialNo_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group col-2">
                        <div class="form-group row">
                            <asp:Label ID="Label6" class="col-form-label" runat="server" Text="Transaction Id"></asp:Label>

                        </div>
                    </div>
                    <div class="form-group col-3">
                        <div class="form-group row">
                            <asp:TextBox ID="txtTransId" placeholder="Transaction ID" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="form-group row border-top my-5 alert-primary ">
                    <asp:Label ID="lRank" runat="server" Text="Rank :" Visible="true" class="col-sm-1 col-form-label"></asp:Label>

                    <asp:Label ID="lbloRank" runat="server" Text="Rank" Visible="true" class="col-sm-2 col-form-label"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Name :" Visible="true" class="col-sm-1 col-form-label"></asp:Label>

                    <asp:Label ID="lbloName" runat="server" Text="Name with initial" Visible="true" class=" col-sm-3 col-form-label"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Base :" Visible="true" class=" col-sm-1 col-form-label"></asp:Label>
                    <asp:Label ID="lbloBase" runat="server" Text="Base Name" Visible="true" class="col-sm-3 col-form-label"></asp:Label>

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
                    <h5 class="mb-0 ">Load from Last Pay <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
                    <fieldset>
                        <div class="form-group row">
                            <div class="col-sm-2">
                                <label for="NOFDays" class="form-label">NOF Days </label>
                            </div>

                            <div class="col-sm-2">
                                <asp:TextBox ID="NOFDays" class="form-control" runat="server" Text=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-2">
                            </div>
                            <div class="col-sm-2">
                                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" class="btn btn-primary" CausesValidation="False" />
                                <asp:Button ID="btnAddA" runat="server" Text="Add" class="btn btn-primary" CausesValidation="False" />
                                <asp:Button ID="btnClearLP" runat="server" Text="Clear" class="btn btn-primary" CausesValidation="False" />
                            </div>
                        </div>



                        <div class="form-group row">
                            <div class="table-responsive-xl">
                                <asp:GridView ID="gvLastPayList" runat="server" class="table table-dark table-striped" OnRowDeleting="GvSubjectItems_RowDeleting" Width="1250px" OnSelectedIndexChanged="gvLastPayList_SelectedIndexChanged">
                                    <Columns>
                                        <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                                    </Columns>
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                            </div>

                        </div>
                    </fieldset>



                </div>
            </div>

        </div>

        <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo2">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Other  <i class="fas fa-angle-double-right  rotate-icon"></i>
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
                                    <label for="ItemCat" class="col-sm-2 col-form-label">Item Cat </label>
                                    <select class="form-control col-sm-2" id="Select1" runat="server">
                                        <option>A</option>
                                        <option>D</option>
                                    </select>

                                </div>

                                <div class="form-group row">
                                    <label for="ItemCat" class="col-sm-2 col-form-label">Item Code </label>
                                    <asp:DropDownList ID="DPItem" runat="server" CssClass="form-control col-sm-2" AutoPostBack="true">
                                    </asp:DropDownList>
                                    <label for="amt" class="col-sm-2 col-form-label">NOF Days</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtNOFDays" runat="server"  CssClass="form-control" MaxLength="10"></asp:TextBox>
                                    </div>
                              
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-2">
                                        <label for="ItemCat" class="form-label">Amount </label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                    </div>
                                </div>


                                <%--     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="67px" Width="1285px" --%>



                                <div class="form-group row">

                                    <%--   <div class="col-sm-2">
                                        <asp:Button ID="btnCheckValidity" OnClientClick="Confirm()" runat="server" Text="Validity Check" CssClass="btn btn-primary " OnClick="btnValidity_Click" />
                                    </div>--%>

                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Button ID="Button1" runat="server" Text="Calculate" class="btn btn-primary" CausesValidation="False" />
                                        <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-primary" CausesValidation="False" />
                                        <asp:Button ID="Button3" runat="server" Text="Clear" class="btn btn-primary" CausesValidation="False" />

                                    </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>





                </div>

            </div>
        </div>

    </div>
    <div class="form-group row">
        <div class="table-responsive-xl">
            <asp:GridView ID="GvSubjectItems" runat="server" class="table table-dark table-striped" OnRowDeleting="GvSubjectItems_RowDeleting" Width="1250px" OnPageIndexChanging="GvSubjectItems_PageIndexChanging">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                </Columns>
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-2 ">
            <asp:Button ID="BtnGrid_to_Excel" runat="server" Text="Grid To Excel" class="btn btn-info" OnClick="BtnGrid_to_Excel_Click" />
        </div>
    </div>



    <asp:UpdatePanel ID="updatePanel6" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-group row">

                <asp:GridView ID="GVTransDetails" class="table table-info table-striped" runat="server" Width="1105px" OnLoad="GVTransDetails_Load" OnRowCommand="GVTransDetails_RowCommand">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                    </Columns>
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>




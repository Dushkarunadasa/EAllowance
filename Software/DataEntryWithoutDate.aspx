<%@ Page Title="DataEntry" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DataEntryWithoutDate.aspx.cs" Inherits="ERecs.DataEntryWithoutDate" EnableEventValidation="false" %>

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
                    <div class="form-group col-2">

                        <div class="form-group row">
                            <asp:Label ID="Label6" class="col-form-label" runat="server" Text="Transaction Id"></asp:Label>

                        </div>
                        <div class="form-group row ">
                            <asp:Label ID="Label7" class="col-form-label" runat="server" Text="Allowance Item"></asp:Label>

                        </div>
                        <div class="form-group row">
                            <asp:Label ID="Label8" class="col-form-label" runat="server" Text="Allowance Item Code"></asp:Label>

                        </div>
                    </div>
                    <div class="form-group col-4">
                        <div class="form-group row">
                            <asp:TextBox ID="txtTransId" placeholder="Transaction ID" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="form-group row">
                            <asp:DropDownList ID="cmbItem" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="cmbItem_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group row">
                            <asp:Label ID="lblItemCode" class="col-form-label" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     <div class="form-group col-3">
                         </div>
                    <div class="form-group col-3">
                        <h5><strong>Unit - Registered Users</strong></h5>
                        <asp:GridView ID="GVUsers" runat="server" class="table table-dark table-striped" Font-Size="Smaller" ShowHeader="False">

                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>


                    </div>
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
                    <h5 class="mb-0 ">Load from external Source <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
                    <fieldset>


                        <div class="form-group row">
                            <label for="lblexcel" class="col-sm-3 col-form-label">Load from Excel Sheet </label>
                            <div class="col-4 ">
                                <asp:UpdatePanel ID="updatePanel2" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control " />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="col-2 ">
                                <asp:Button ID="Button1" runat="server" Text="Load Excel" OnClick="Button1_Click" class="btn btn-primary" CausesValidation="False" />

                            </div>
                            <div class="col-2">
                                <asp:Button ID="btnSample" runat="server" Text="Download Excel Format" class="btn btn-primary" CausesValidation="False" OnClick="btnSample_Click" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <asp:Label ID="lblpath" runat="server" Text="" Visible="true"></asp:Label>
                        </div>
                        <div class="form-group row">
                            <label for="lblfexcel" class="col-sm-3 col-form-label">Upload Scanned Documents : </label>
                            <div class="col-4 ">
                                <asp:UpdatePanel ID="updatePanel4" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:FileUpload ID="FileUpload2" runat="server" class="form-control " />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="col-2 ">
                                <asp:Button ID="btnUploadScanned" runat="server" Text="Upload Docs" OnClick="btnUploadScanned_Click" class="btn btn-primary" CausesValidation="False" />

                            </div>
                        </div>
                        <div class="form-group row">
                            <asp:Label ID="lblPathScanned" class="col-form-label" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="form-group row">
                            <p style="color: red;">
                                ‍මෙම පද්ධතියට එකකට වඩා ස්කෑන් ‍‍ලිපිගොණු උඩුගත කිරීම සදහා අදාළ ලිපිගොණු සියල්ල Zip ලිපිගොණුවක් ලෙස සකස් කර උඩුගත කිරීම තුළින් 
                                ලිපි‍ගොණු රහිත තොරතුරු ප්‍රතික්ෂේප වීම වලකාගත හැකිය.
                            </p>
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
                    <h5 class="mb-0">Allowance List  <i class="fas fa-angle-double-right  rotate-icon"></i>
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
                                    <label for="SysCode" class="col-sm-2 col-form-label">SysCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="cmbSysCode" runat="server">
                                            <option>RNF</option>
                                            <option>VNF</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">CatCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="cmbCatCode" runat="server">
                                            <option>O</option>
                                            <option>S</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Official No</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnSearchOfficer" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnSearchOfficer_Click" />


                                    </div>
                                    <label for="amt" class="col-sm-2 col-form-label">Amount</label>
                                    <div class="col-sm-2">

                                        <asp:TextBox ID="txtAmount" runat="server" TextMode="Number" CssClass="form-control" MaxLength="10"></asp:TextBox>




                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnOfficerLoad" runat="server" Text="Add to List" CssClass="btn btn-primary " OnClick="btnOfficerLoad_Click" />

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
                                <%--     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="67px" Width="1285px" --%>

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
                    <asp:UpdateProgress ID="UpdateProgressbar1" runat="server" AssociatedUpdatePanelID="updatePanel1" ClientIDMode="Predictable" ViewStateMode="Inherit">
                        <ProgressTemplate>
                            <div class="div1" style="margin-left: 40px">
                                <img alt="" src="Images/Processing.gif" />
                            </div>

                        </ProgressTemplate>
                    </asp:UpdateProgress>

                </div>

            </div>
        </div>

    </div>




    <div class="card">
        <!-- Card header -->
        <div class="card-header" role="tab" id="headingTwo4">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo4"
                aria-expanded="false" aria-controls="collapseTwo3">
                <h5 class="mb-0">Transaction Lists <i class="fas fa-angle-double-right  rotate-icon"></i>
                </h5>
            </a>
        </div>
        <!-- Card body -->
        <div id="collapseTwo4" class="collapse" role="tabpanel" aria-labelledby="headingTwo4"
            data-parent="#accordionEx">
            <div class="card-body p-3 mb-2 bg-secondary text-white">

                <br />
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

            </div>
        </div>
    </div>

</asp:Content>




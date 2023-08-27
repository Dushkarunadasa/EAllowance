<%@ Page Title="Allowance Transactions" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Process.aspx.cs" Inherits="ERecs.Process" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>Recovery/Allowances - Forward...</h5>

    <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

        <!-- Accordion card -->
        <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingOne1">
                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="false"
                    aria-controls="collapseOne1">
                    <h5 class="mb-0 ">Pending Action <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">

                    <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="True">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">
                                    <asp:GridView ID="GvTransPending" runat="server" class="table table-dark table-striped" Width="1285px" OnRowCommand="GvTransPending_RowCommand">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Select" ControlStyle-CssClass="btn btn-info " HeaderText="Select" ShowHeader="True" Text="Select" />
                                        </Columns>
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-success" CommandName="ScannedDocs" HeaderText="Download" ShowHeader="True" Text="Docs" />
                                        </Columns>
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-secondary  " CommandName="Process" HeaderText="Process" ShowHeader="True" Text="Process" />
                                        </Columns>
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-success" CommandName="Forward" HeaderText="Forward" ShowHeader="True" Text="Forward" />
                                        </Columns>
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="GvTransPending" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>

        </div>

        <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo2">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Action Taken  <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">

                    <asp:UpdatePanel ID="updatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">

                                    <asp:GridView ID="GVTransConfirmed" runat="server" class="table table-dark table-striped" Width="1105px" OnRowCommand="GVTransConfirmed_RowCommand">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                                        </Columns>

                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                                    </asp:GridView>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>


                </div>
            </div>
        </div>
        <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo4">
               <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne4" aria-expanded="false"
                    aria-controls="collapseOne4">
                    <h5 class="mb-0">Advance Search  <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseOne4" class="collapse" role="tabpanel" aria-labelledby="headingTwo4"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">

                    <asp:UpdatePanel ID="updatePanel3" runat="server" UpdateMode="Conditional">
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
                                     <label for="CatCode" class="col-sm-2 col-form-label">CatCode</label>
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
                                    <label for="ListType" class="col-sm-2 col-form-label">List Option</label>
                                      <div class="col-sm-3">
                                        <select class="form-control" id="ListType" runat="server">
                                            <option>1.  Individual Pay Details-History</option>
                                                                          
                                            <option>2.  Individual Pay Details-Current</option>
                                     
                                            <option>3.  All Pay Details-Current</option>
                                            <option>4.  All Reject Details-Current</option>
                                            <option>5.  All Pending Details-Current</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnSearchOfficer" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnSearchOfficer_Click" />


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

                                <div class="form-group row">

                                    <asp:GridView ID="GVTResultList" runat="server" class="table table-dark table-striped" Width="1105px">


                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                                    </asp:GridView>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>


                </div>
            </div>
        </div>
        <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo5">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo5"
                    aria-expanded="true" aria-controls="collapseTwo5">
                    <h5 class="mb-0">Pay Action  <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseTwo5" class="collapse" role="tabpanel" aria-labelledby="headingTwo5"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">


                    <contenttemplate>
                        <fieldset>
                            <div class="form-group row">

                                <div class="col-sm-2">
                                    <asp:Button ID="btnxml" runat="server" Text="XML Download" class="btn-primary " OnClick="btnxml_Click" />
                                </div>
                                <div class="col-sm-2">
                                    <asp:Button ID="BtnMonthEnd" runat="server" Text="Month End" class="btn-primary" OnClick="BtnMonthEnd_Click" />
                                </div>
                                <div class="col-sm-2">
                                    <asp:Button ID="btnBaseComplementary" runat="server" Text="Base Changes XML" class="btn-primary" OnClick="btnBaseComplementary_Click" />
                                </div>
                                <div class="col-sm-2">
                                    <asp:Label ID="LabelMessage" runat="server" Text="" />
                                </div>
                            </div>
                        </fieldset>
                    </contenttemplate>



                </div>
            </div>
        </div>
    </div>


    <br />
    <br />
    <div class="form-group row">
        <asp:UpdatePanel ID="updatePanel4" runat="server" UpdateMode="Conditional">
            <ContentTemplate>

                <asp:GridView ID="GvSubjectItemsList" runat="server" AutoPostBack="true" class="table table-dark table-striped" Width="1285px">
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:GridView>

                <asp:GridView ID="GvSubjectItems" runat="server" AutoPostBack="true" class="table table-dark table-striped" OnRowCommand="GvSubjectItems_RowCommand" Width="1285px" OnRowDataBound="GvSubjectItems_RowDataBound">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Reject" ControlStyle-CssClass="btn btn-danger" HeaderText="Reject" ShowHeader="True" Text="Reject" />
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Reject Reason">
                            <ItemTemplate>
                                <asp:TextBox ID="Reason" runat="server" Font-Size="Small" Width="150px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>




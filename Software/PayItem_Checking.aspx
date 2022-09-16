<%@ Page Title="Allowance Transactions" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PayItem_Checking.aspx.cs" Inherits="ERecs.PayItem_Checking" %>

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

    </div>
    <br />
    <br />
    <div class="form-group row">
        <asp:UpdatePanel ID="updatePanel4" runat="server" UpdateMode="Conditional">
            <ContentTemplate>

                <asp:GridView ID="GvSubjectItemsList" runat="server" AutoPostBack="true" class="table table-dark table-striped" Width="1285px">
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:GridView>

                <asp:GridView ID="GvSubjectItems" runat="server" AutoPostBack="true" class="table table-dark table-striped" OnRowCommand="GvSubjectItems_RowCommand" Width="1285px">
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
    <div class="form-group row">
        <div class="col-2 ">
            <asp:Button ID="BtnGrid_to_Excel" runat="server" Text="Grid To Excel" class="btn btn-primary" OnClick="BtnGrid_to_Excel_Click" />
        </div>
    </div>
</asp:Content>




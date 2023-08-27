<%@ Page Title="DataEntry" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="HRMSApprovedData.aspx.cs" Inherits="ERecs.HRMSApprovedData" EnableEventValidation="false" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>Data Entry Form...</h5>
    <div class="p-3 mb-2 bg-primary text-white">
        <asp:UpdatePanel ID="updatePanel5" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="lblOfficialNo" class="col-md-2 mb-5 col-form-label text-white ">User's Official No :</label>
                    <asp:Label ID="lblOfficialNo" class="col-md-4 mb-3 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="lblUnitId" class="col-md-2 mb-5 col-form-label text-white ">Mail Address:</label>
                    <asp:Label ID="lblname" class="col-md-3 mb-5 col-form-label" runat="server" Text=""></asp:Label>
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

                    <div class="form-Group row">
                        <div class="col-1">
                            <asp:Label ID="lblItem" class="form-label" Text="Item" runat="server"></asp:Label>
                        </div>

                        <div class="col-4">
                            <asp:DropDownList ID="dpHRMSItems" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dpHRMSItems_SelectedIndexChanged">
                                <asp:ListItem Selected="True">GCB</asp:ListItem>
                                <asp:ListItem>QPay</asp:ListItem>
                                <asp:ListItem>Rent_Ceiling</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-1">
                          
                                <asp:Button ID="btnForward" runat="server" Text="Approve All" CssClass="btn btn-primary" OnClick="btnForward_Click" />
                      
                        </div>
                    </div>
                    <br />
                    <br />




                    <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="True">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">

                                    <asp:GridView ID="GVTransDetails" class="table table-info table-striped" runat="server" Width="1105px">
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
                <asp:GridView ID="GvSubjectItems" runat="server" AutoPostBack="true" class="table table-dark table-striped" Width="1285px">


                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>




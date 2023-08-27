<%@ Page Title="DataEntry" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DataEntrySSOSM.aspx.cs" Inherits="ERecs.DataEntrySSOSM" EnableEventValidation="false" %>

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

                    </div>
                    <div class="form-group col-4">
                        <div class="form-group row">
                            <asp:TextBox ID="txtTransId" placeholder="Transaction ID" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                        </div>

                    </div>
                    <div class="form-group col-3">
                    </div>

                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <%-- set 04 --%>


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
                        <asp:TextBox ID="txtOfficialNo" runat="server" MaxLength="7"  CssClass="form-control "></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:Button ID="btnSearchOfficer" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnSearchOfficer_Click" />


                    </div>



                </div>

                <div class="form-group row border-top my-5  ">
                    <asp:Label ID="lRank" runat="server" Text="Rank :" Visible="true" ForeColor="DarkBlue" class="col-sm-1 col-form-label"></asp:Label>
                    <asp:Label ID="lbloRank" runat="server" Text="Rank" Visible="true" ForeColor="DarkRed"  class="col-sm-2 col-form-label"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Name :" Visible="true" ForeColor="DarkBlue" class="col-sm-1 col-form-label"></asp:Label>
                    <asp:Label ID="lbloName" runat="server" Text="Name with initial" ForeColor="DarkRed" Visible="true" class=" col-sm-3 col-form-label"></asp:Label>
                  

                </div>
                
                <div class="form-group row">
                    <div class="form-group col-2">


                        <div class="form-group row ">
                            <asp:Label ID="Label2" class="col-form-label" runat="server" Text="Allowance Item"></asp:Label>

                        </div>
                        <div class="form-group row">
                            <asp:Label ID="Label5" class="col-form-label" runat="server" Text="Amount"></asp:Label>

                        </div>
                    </div>
                    <div class="form-group col-4">

                        <div class="form-group row">
                            <asp:DropDownList ID="cmbItem" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="cmbItem_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group row">
                            <asp:TextBox ID="txtAmount" runat="server" MaxLength="10"  CssClass="form-control" ></asp:TextBox>
                        </div>

                    </div>
                    <div class="form-group col-3">
                        <div class="form-group row">
                            <asp:Label ID="lblItemCode" class="col-form-label" runat="server" Text="ItemCode"></asp:Label>
                        </div>
                    </div>

                </div>
                <div class="form-group row">
                    <div class="form-group col-2"></div>
                    <div class="col-sm-2">
                        <asp:Button ID="btnOfficerLoad" runat="server" Text="Add to List" CssClass="btn btn-primary " OnClick="btnOfficerLoad_Click" />

                    </div>
                      <div class="col-sm-1">
                        <asp:Button ID="BtnNew" runat="server" Text="New" CssClass="btn btn-primary" OnClick="BtnNew_Click" />
                    </div>
                      <div class="col-sm-1">
                        <asp:Button ID="btnForward" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnForward_Click" />
                    </div>
                      <div class="col-sm-1">
                        <asp:Button ID="btnApprove" runat="server" Text="Forward" CssClass="btn btn-primary" OnClick="btnApprove_Click"  />
                    </div>

                </div>
                <br />
                <br />
                <br />

                <div class="form-group row">
                    <div class="table-responsive-xl">
                        <asp:GridView ID="GvSubjectItems" runat="server" class="table table-dark table-striped" OnRowDeleting="GvSubjectItems_RowDeleting" Width="1250px">
                            <Columns>
                                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                            </Columns>
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </div>
                </div>

            
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>






    <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">
         <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo4">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo4"
                    aria-expanded="false" aria-controls="collapseTwo3">
                    <h5 class="mb-0">Transaction Pending Lists <i class="fas fa-angle-double-right  rotate-icon"></i>
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
            </div>
        </div>

         <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo5">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo5"
                    aria-expanded="false" aria-controls="collapseTwo3">
                    <h5 class="mb-0">Transaction Forward List <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>
            <!-- Card body -->
            <div id="collapseTwo5" class="collapse" role="tabpanel" aria-labelledby="headingTwo5"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">

                    <br />
                    <asp:UpdatePanel ID="updatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="form-group row">

                                <asp:GridView ID="GVTransConfirm" class="table table-info table-striped" runat="server" Width="1105px" OnRowCommand="GVTransDetails_RowCommand">
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
    </div>

</asp:Content>




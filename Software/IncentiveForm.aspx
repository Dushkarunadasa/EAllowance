<%@ Page Title="DataEntry" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="IncentiveForm.aspx.cs" Inherits="ERecs.IncentiveForm" EnableEventValidation="false" %>

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
                     <asp:Label ID="lblname" class="col-md-3 mb-5 col-form-label" runat="server" Text="" ></asp:Label>
                    <asp:Label ID="lblUnitId" class="col-md-1 mb-5 col-form-label" runat="server" Text="" ></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="lblUnitName" class="col-md-1 mb-7 col-form-label text-white ">Unit :</label>
                    <asp:Label ID="lblUnitName" class="col-md-1 mb-7 col-form-label " runat="server" Text=""></asp:Label>
                    <label for="lblUserType" class="col-md-1 mb-7 col-form-label text-white ">User Type :</label>
                    <asp:Label ID="lblUserType" class="col-md-1 mb-7 col-form-label"  runat="server" Text=""></asp:Label>
                    <label for="lblBaseName" class="col-md-1 mb-7 col-form-label text-white ">Base/Ship :</label>
                    <asp:Label ID="lblBaseName" class="col-md-3 mb-7 col-form-label " runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblBaseCode" class="col-md-3 mb-7 col-form-label" runat="server" Text="" Visible ="false" ></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <%-- set 01 --%>
    <div>
        <asp:UpdatePanel ID="updatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="Trans_Id" class="col-sm-2 col-form-label">
                        Date of Enlistment :
                    </label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtDateOfEnlistment" placeholder="Date Of Enlistment" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>

                </div>

                <div class="form-group row">
                    <label for="txtService" class="col-md-2 mb-3 col-form-label">
                        Naval Service  :
                    </label>
                    <div class="col-md-6 mb-3">
                        <asp:TextBox ID="txtService" placeholder="Service Period" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>

                </div>
                <div class="form-group row">
                    <label for="Trans_Id" class="col-md-2 mb-3 col-form-label">
                        Service Break Details :
                    </label>
                    <div class="col-md-2 mb-3">
                        <asp:TextBox ID="txtRun" placeholder="Yes/No" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class ="col-md-8 mb-3">

                           <asp:GridView ID="dgvRun" class="table table-info table-striped" runat="server"  >                                
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Purple"  />
                            </asp:GridView>

                    </div>

                </div>
                <div class="form-group row">
                    <label for="txtPunishment" class="col-md-2 mb-3 col-form-label">
                        Punishment Details :
                    </label>
                    <div class="col-md-2 mb-3">
                        <asp:TextBox ID="txtPunishment" placeholder="Yes/No" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class ="col-md-8 mb-3">

                           <asp:GridView ID="dgvPunishment" class="table table-info table-striped" runat="server"  >                                
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Purple"  />
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
                    <label for="cmbItem" class="col-sm-2 col-form-label">Elagible Incentives :</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="cmbItem" runat="server" CssClass="form-control " AutoPostBack="true" OnSelectedIndexChanged="cmbItem_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <asp:Label ID="lblItemCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="txtEffectDt" class="col-sm-2 col-form-label">Date of Effect :</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEffectDt" placeholder="Effect Date" runat="server" CssClass="form-control correct value" Text="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <asp:Label ID="Label2" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="cmbBase" class="col-sm-2 col-form-label">Select Your Mother Base :</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="cmbBase" runat="server" CssClass="form-control " AutoPostBack="true" OnSelectedIndexChanged="cmbBase_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <asp:Label ID="lblMBaseCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
   <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

        <!-- Accordion card -->
        <div class="card">


      
            <!-- Card header -->
          <!-- Card header -->
            <div class="card-header" role="tab" id="headingOne1">
                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="false"
                    aria-controls="collapseOne1">
                    <h5 class="mb-0 ">Divisional Officer<i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>          
              <!-- Card body -->
            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
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
                                    <label for="SysCode" class="col-sm-2 col-form-label">Official No</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
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
                                <%--     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="67px" Width="1285px" --%>

                         

                                <div class="form-group row">

                           
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Button ID="btnForward" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnForward_Click" />
                                    </div>
                
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>



                </div>

            </div>
        </div>

    </div>




    <div class="card">
        <!-- Card header -->
        <div class="card-header" role="tab" id="headingTwo4">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo4"
                aria-expanded="false" aria-controls="collapseTwo3">
                <h5 class="mb-0">Incentive Applications <i class="fas fa-angle-double-right  rotate-icon"></i>
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

                            <asp:GridView ID="GVTransDetails" class="table table-info table-striped" runat="server" Width="1105px" >
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




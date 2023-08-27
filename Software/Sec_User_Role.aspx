<%@ Page Title="DataEntry" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Sec_User_Role.aspx.cs" Inherits="ERecs.Sec_User_Role" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <h3 class="text-primary">Register Relavent User to the System:</h3>

    <h4>
        <asp:Label ID="SCode" runat="server" Text="Unit :" CssClass="col-sm-sm-1 col-form-label text-success"></asp:Label>
 
        <asp:Label ID="lblUnit" runat="server" Text="" CssClass="col-form-label col-sm-3"></asp:Label>
        <asp:Label ID="lblUnitId" Visible="false"  runat="server" Text="" ></asp:Label>
    </h4>
    <h4>
        <asp:Label ID="BCode" runat="server" Text="Base :" CssClass="col-sm-sm-1 col-form-label text-success"></asp:Label>
        <asp:Label ID="lblBase" runat="server" Text="" CssClass="col-form-label col-sm-3"></asp:Label>
        <asp:Label ID="lblBaseCode" runat="server" Text="" CssClass="col-form-label col-sm-3"></asp:Label>
    </h4>

    <asp:Wizard ID="Wizard1" runat="server" HeaderText="Initial Registration" HeaderStyle-Font-Size="Larger" HeaderStyle-ForeColor="Crimson" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" OnPreviousButtonClick="Wizard1_PreviousButtonClick" Width="630px" ActiveStepIndex="3">
        <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Subject Clerk 1 Details">

                <p class="text-info">subject clerk 1 details: </p>
                <div class="form-group row">

                    <label for="SCode" class="col-sm-4 col-form-label">SysCode</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="T1SysCode" runat="server">
                            <option>RNF</option>
                            <option>VNF</option>

                        </select>
                    </div>
                    
                </div>

                <div class="form-group row">

                    <label for="tSysCode" class="col-sm-4 col-form-label">CatCode</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="T1CatCode" runat="server">                            
                            <option>S</option>
                        </select>
                    </div>
               
                </div>
                <div class="form-group row">
                    <label for="Official No" class="col-sm-4 col-form-label">Official No</label>

                    <div class="col-sm-8">
                        <asp:TextBox ID="txtT1OfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
                    </div>
                   
                </div>
                <asp:Label ID="lbls1info" runat="server" Text="" CssClass ="col-form-label alert-danger "></asp:Label>
            </asp:WizardStep>
            <asp:WizardStep ID="WizadStep2" runat="server" Title="Subject Clerk 2 Details">

                <p class="text-info">subject clerk 2 details: </p>
                <div class="form-group row">

                    <label for="SCode" class="col-sm-4 col-form-label">SysCode</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="TsysCode" runat="server">
                            <option>RNF</option>
                            <option>VNF</option>

                        </select>
                    </div>
                    
                </div>

                <div class="form-group row">

                    <label for="tSysCode" class="col-sm-4 col-form-label">CatCode</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="tCatCode" runat="server">                            
                            <option>S</option>
                        </select>
                    </div>
               
                </div>
                <div class="form-group row">
                    <label for="Official No" class="col-sm-4 col-form-label">Official No</label>

                    <div class="col-sm-8">
                        <asp:TextBox ID="txtTOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
                    </div>
                   
                </div>
                <asp:Label ID="lblsinfo" runat="server" Text="" CssClass ="col-form-label alert-danger "></asp:Label>
            </asp:WizardStep>

            <asp:WizardStep ID="WizardStep3" runat="server" Title="Secretary Details">

                <p class="text-info">Relavent Secretary details:  </p>
                <div class="form-group row">
                    <label for="SaCode" class="col-sm-4 col-form-label">SysCode  :</label>

                    <div class="col-sm-8">
                        <select class="form-control" id="SSysCode" runat="server" aria-readonly="true" >
                            <option>RNF</option>
                            <option>VNF</option>

                        </select>
                    </div>
                   
                </div>
                <div class="form-group row">
                    <label for="SSysCode" class="col-sm-4 col-form-label">CatCode</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="SCatCode" runat="server" aria-readonly="true">
                            <option>O</option>
                            <option>S</option>
                        </select>
                    </div>
                   
                </div>
                <div class="form-group row">
                    <label for="sOfficial No" class="col-sm-4 col-form-label">Official No</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtsOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control " ReadOnly ="true" ></asp:TextBox>
                    </div>
                  
                </div>
                

            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep4" runat="server" Title="Authorized Officer">
                <p class="text-info">Relavent Authorized Officer details:    </p>
                <div class="form-group row">
                    <label for="ACode" class="col-sm-4 col-form-label">SysCode</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="ASysCode" runat="server">
                            <option>RNF</option>
                            <option>VNF</option>

                        </select>
                    </div>
                  
                </div>
                <div class="form-group row">
                    <label for="ASysCode" class="col-sm-4 col-form-label">CatCode</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="ACatCode" runat="server">
                            <option>O</option>                       
                        </select>
                    </div>
                   
                </div>
                <div class="form-group row">
                    <label for="aOfficial No" class="col-sm-4 col-form-label">Official No</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtAOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
                    </div>
                  
                </div>
                <asp:Label ID="lblAinfo" runat="server" Text="" CssClass ="col-form-label alert-danger "></asp:Label>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>







</asp:Content>




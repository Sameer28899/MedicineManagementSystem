<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMedicalStoreManagement.aspx.cs" Inherits="MedicineManagementSystem.AdminMedicalStoreManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <!--Breadcrumb-->
    <div class="page-title-area2">
        <div class="section__bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-content2 text-center">
                        <h3 class="title">Admin Dashboard</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <asp:LinkButton ID="LinkButton10" runat="server"></asp:LinkButton>
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb-->
    
    <div class="container-fluid">
        <div class="row">
            
             <!--Menu-->
            <div class="col-md-3">
                <br />
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                   <div class="form-group">
                                       <asp:LinkButton ID="LinkButton5" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton1_Click">User Management</asp:LinkButton>
                                   </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                   <div class="form-group">
                                       <asp:LinkButton ID="LinkButton9" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton9_Click" >Medical Store Management</asp:LinkButton>
                                   </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <div class="form-group">
                                        <asp:LinkButton ID="LinkButton6" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton2_Click">User List</asp:LinkButton>
                                    </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <div class="form-group">
                                        <asp:LinkButton ID="LinkButton7" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton3_Click">Medical Store List</asp:LinkButton>
                                    </div>
                                </center>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <!--Menu-->

            <!--Display Content-->
            <div class="col-md-9">
                <br>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h4>Medical Store Management</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Medical Store ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox11" CssClass="form-control mr-1" runat="server" placeholder="Medical Store ID"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" OnClick="LinkButton1_Click1"><span style="font-size:1.5em;"><i class="far fa-search"></i></span></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Medical Store Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ReadOnly="true" placeholder="Medical Store Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Account Status</label>
                                <div class="form-group">
                                     <div class="input-group">
                                        <asp:TextBox ID="TextBox12" CssClass="form-control mr-1" runat="server" ReadOnly="True" placeholder="Status"></asp:TextBox>
                                         <asp:LinkButton ID="LinkButton2" CssClass="btn btn-success mr-1" runat="server" OnClick="LinkButton2_Click1"><span style="font-size:1.5em;"><i class="far fa-check-circle"></i></span></asp:LinkButton>
                                         <asp:LinkButton ID="LinkButton3" CssClass="btn btn-warning mr-1" runat="server" OnClick="LinkButton3_Click1"><span style="font-size:1.5em;"><i class="far fa-pause-circle"></i></span></asp:LinkButton>
                                         <asp:LinkButton ID="LinkButton4" CssClass="btn btn-danger mr-1" runat="server" OnClick="LinkButton4_Click1"><span style="font-size:1.5em;"><i class="far fa-times-circle"></i></span></asp:LinkButton>

                                    </div>
                                </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"  ReadOnly="true" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>E-mail ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"  ReadOnly="true" placeholder="E-mail ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" ReadOnly="true" runat="server">
                                          <asp:ListItem Text="Select" Value="select" />
                                          <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                          <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                          <asp:ListItem Text="Assam" Value="Assam" />
                                          <asp:ListItem Text="Bihar" Value="Bihar" />
                                          <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                          <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                          <asp:ListItem Text="Goa" Value="Goa" />
                                          <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                          <asp:ListItem Text="Haryana" Value="Haryana" />
                                          <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                          <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                          <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                          <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                          <asp:ListItem Text="Kerala" Value="Kerala" />
                                          <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                          <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                          <asp:ListItem Text="Manipur" Value="Manipur" />
                                          <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                          <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                          <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                          <asp:ListItem Text="Odisha" Value="Odisha" />
                                          <asp:ListItem Text="Punjab" Value="Punjab" />
                                          <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                          <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                          <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                          <asp:ListItem Text="Telangana" Value="Telangana" />
                                          <asp:ListItem Text="Tripura" Value="Tripura" />
                                          <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                          <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                          <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"  ReadOnly="true" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"  ReadOnly="true" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Full Address" ReadOnly="true" TextMode="Multiline" Rows="3"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                   <div class="form-group">
                                       <asp:LinkButton ID="LinkButton11" CssClass="btn btn-outline-danger btn-block btn-lg" runat="server" OnClick="LinkButton11_Click" >Delete Medical Store Permanently</asp:LinkButton>
                                   </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Display Content-->

        </div>
    </div>
    <br />
</asp:Content>

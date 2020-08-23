<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MedicalStoreEditProfile.aspx.cs" Inherits="MedicineManagementSystem.MedicalStoreProfile" EnableEventValidation="false"%>
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
                        <h3 class="title">Medical Store Dashboard</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li>
                                    <asp:LinkButton ID="LinkButton6" runat="server"></asp:LinkButton>
                                </li>
                                <li> / </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton7" runat="server">Account Status - </asp:LinkButton>
                                    <asp:Label ID="Label1" runat="server" Text="Your Status"></asp:Label>
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
                <br>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                         <div class="col">
                            <center>
                               <div class="form-group">
                                  <asp:LinkButton ID="LinkButton1" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton1_Click">Edit Profile</asp:LinkButton>
                               </div>
                            </center>
                         </div>
                        </div>

                        <div class="row">
                         <div class="col">
                            <center>
                               <div class="form-group">
                                  <asp:LinkButton ID="LinkButton2" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton2_Click">Add Medicine</asp:LinkButton>
                               </div>
                            </center>
                         </div>
                        </div>

                        <div class="row">
                         <div class="col">
                            <center>
                               <div class="form-group">
                                  <asp:LinkButton ID="LinkButton3" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton3_Click">Medicine Inventory</asp:LinkButton>
                               </div>
                            </center>
                         </div>
                        </div>

                        <div class="row">
                         <div class="col">
                            <center>
                               <div class="form-group">
                                  <asp:LinkButton ID="LinkButton4" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton4_Click">Update Stock</asp:LinkButton>
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
                                <center><h4>Medical Store Profile</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Medical Store Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Medical Store Name"></asp:TextBox>
                                </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>E-mail ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="E-mail ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
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
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Full Address" TextMode="Multiline" Rows="3"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center><span class="badge badge-pill badge-info">Login Credentials</span></center><br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>User Id</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" ReadOnly="True" placeholder="User Id"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" ReadOnly="True" placeholder="Old Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="New Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                         <div class="col">
                            <center>
                               <div class="form-group">
                                  <asp:Button class="btn btn-outline-success btn-block btn-lg" ID="Button4" runat="server" Text="Update" OnClick="Button4_Click" />
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

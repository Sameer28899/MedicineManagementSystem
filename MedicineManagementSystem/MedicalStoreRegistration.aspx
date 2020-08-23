<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MedicalStoreRegistration.aspx.cs" Inherits="MedicineManagementSystem.MedicalStoreRegistration" %>
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
                        <h3 class="title">Medical Store Registration</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb-->
    
    <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <br>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><img width="150px" src="images/store.png" /></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><h4>Medical Store Registration</h4></center>
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
                                <center><span class="badge badge-pill badge-success">Login Credentials</span></center><br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User Id</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="User Id"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                         <div class="col">
                            <center>
                               <div class="form-group">
                                  <asp:LinkButton ID="LinkButton1" class="btn btn-outline-success  btn-lg btn-block"  runat="server" OnClick="LinkButton1_Click1">Sign Up</asp:LinkButton>
                               </div>
                            </center>
                         </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>

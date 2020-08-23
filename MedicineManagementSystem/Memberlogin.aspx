<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Memberlogin.aspx.cs" Inherits="MedicineManagementSystem.Userlogin" EnableEventValidation="false" %>
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
                        <h3 class="title">Member Login</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb-->
    
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <br />
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><img width="150px" src="images/user.png" /></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><h3>Member Login</h3></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" placeholder="Account Type">
                                          <asp:ListItem Text="Account Type" Value="select" />
                                          <asp:ListItem Text="User" Value="User" />
                                          <asp:ListItem Text="Medical Store" Value="Medical Store" />
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-outline-success btn-lg btn-block" runat="server" Text="Login" OnClick="Button1_Click1"  />
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>

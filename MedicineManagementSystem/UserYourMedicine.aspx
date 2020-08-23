<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserYourMedicine.aspx.cs" Inherits="MedicineManagementSystem.UserYourMedicine" EnableEventValidation="false" %>
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
                        <h3 class="title">User Dashboard</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li>
                                    <asp:LinkButton ID="LinkButton6" runat="server"></asp:LinkButton>
                                </li>
                                <li> / </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton5" runat="server">Account Status - </asp:LinkButton>
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
                                  <asp:LinkButton ID="LinkButton2" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton2_Click">Search a Medicine</asp:LinkButton>
                               </div>
                            </center>
                         </div>
                        </div>

                        <div class="row">
                         <div class="col">
                            <center>
                               <div class="form-group">
                                  <asp:LinkButton ID="LinkButton3" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton3_Click">Your Medicines</asp:LinkButton>
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
                                <center><h4>Your Medicines</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>

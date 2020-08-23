<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MedicalStoreDashboard.aspx.cs" Inherits="MedicineManagementSystem.MedicalStoreDashboard" EnableEventValidation="false"%>
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
                                <center><h4>Dashboard</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <img src="images/1470806.jpg" width="1067px"/>
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

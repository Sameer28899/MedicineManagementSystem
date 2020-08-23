<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemberRegistration.aspx.cs" Inherits="MedicineManagementSystem.MemberRegistration" %>
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
                        <h3 class="title">Member Registration</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb-->

    <section class="service-area service-page-area pb-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-6 col-sm-8">
                    <div class="service-item mt-30">
                        <center>
                            <a href="UserSignUp.aspx">
                                <img src="images/user.png" width="150px"/>
                                <h3 class="title">User Registration</h3>
                            </a>
                            <p>Satisty all your need of medicines and pre-book your Medicines by registering.</p>
                        </center>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-8">
                    <div class="service-item mt-30">
                        <center>
                            <a href="MedicalStoreRegistration.aspx">
                                <img src="images/store.png" width="150px"/>
                                <h3 class="title">Medical Store Registration</h3>
                            </a>
                            <p>Do you have a Medical Store and Want to expand your business online?</p>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

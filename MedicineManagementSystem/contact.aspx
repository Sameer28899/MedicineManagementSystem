<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="MedicineManagementSystem.contact" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="page-title-area">
    <div class="section__bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-content text-center">
                        <h3 class="title">Contact Us</h3>
                        <nav aria-label="breadcrumb">
                           <ol class="breadcrumb">
                               <li class="breadcrumb-item"><a href="#">Home</a></li>
                               <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
                           </ol>
                        </nav>
                    </div>
                </div>
             </div>
        </div>
    </div>


    <section class="contact-us-area contact-us-page">
        <div class="section__bg"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="contact-us-box">
                        <h3 class="title">Get in Touch</h3>
                            <p>Give us a call or drop by anytime, we endeavour to <br> answer all enquiries within 24 hours.</p>
                            <form action="#">
                                <div class="row no-gutters">
                                    <div class="col-lg-6">
                                        <div class="input-box mt-10">
                                            <input type="text" placeholder="Your name">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-box mt-10">
                                            <input type="email" placeholder="Email address">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-box mt-10">
                                            <input type="text" placeholder="Contact">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-box mt-10">
                                            <input type="text" placeholder="Location">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="input-box mt-10">
                                            <textarea name="#" id="#" cols="30" rows="10" placeholder="Write message"></textarea>
                                        </div>
                                        <ul class="checkbox_common checkbox_style5">
                                            <li>
                                                <input type="checkbox" name="checkbox5" id="checkbox13">
                                                <label for="checkbox13"><span></span>I agree to the data protection regulations</label>
                                            </li>
                                        </ul>
                                        <div class="input-box">
                                            <button class="main-btn " type="submit">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

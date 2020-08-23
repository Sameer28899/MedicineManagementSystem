<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMedicalstoreList.aspx.cs" Inherits="MedicineManagementSystem.AdminMedicalstoreList" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
    </script>
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
                                    <asp:LinkButton ID="LinkButton6" runat="server"></asp:LinkButton>
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
                                       <asp:LinkButton ID="LinkButton1" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton1_Click">User Management</asp:LinkButton>
                                   </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                   <div class="form-group">
                                       <asp:LinkButton ID="LinkButton9" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton9_Click">Medical Store Management</asp:LinkButton>
                                   </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <div class="form-group">
                                        <asp:LinkButton ID="LinkButton2" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton2_Click">User List</asp:LinkButton>
                                    </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <div class="form-group">
                                        <asp:LinkButton ID="LinkButton3" CssClass="btn btn-outline-success btn-block btn-lg" runat="server" OnClick="LinkButton3_Click">Medical Store List</asp:LinkButton>
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
                                <center><h4>Medical Store List</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineManagementDBConnectionString %>" SelectCommand="SELECT * FROM [MedicalStoreInfo]"></asp:SqlDataSource>
                            <div class="col-md-12">
                                <asp:GridView ID="GridView1" runat="server" Class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="S_uid" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="S_uid" HeaderText="Store ID" ReadOnly="True" SortExpression="S_uid" />
                                        <asp:BoundField DataField="S_name" HeaderText="Name" SortExpression="S_name" />
                                        <asp:BoundField DataField="S_cn" HeaderText="Contact" SortExpression="S_cn" />
                                        <asp:BoundField DataField="S_mail" HeaderText="E-mail" SortExpression="S_mail" />
                                        <asp:BoundField DataField="S_state" HeaderText="State" SortExpression="S_state" />
                                        <asp:BoundField DataField="S_city" HeaderText="City" SortExpression="S_city" />
                                        <asp:BoundField DataField="S_pc" HeaderText="Pincode" SortExpression="S_pc" />
                                        <asp:BoundField DataField="ac_stat" HeaderText="Account Status" SortExpression="ac_stat" />
                                    </Columns>
                                </asp:GridView>
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

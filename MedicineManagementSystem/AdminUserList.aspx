<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUserList.aspx.cs" Inherits="MedicineManagementSystem.AdminUserList" EnableEventValidation="false" %>
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
                <br />
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h4>User List</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineManagementDBConnectionString %>" SelectCommand="SELECT * FROM [MemberInfo]"></asp:SqlDataSource>
                            
                                <div class="col-md-12" >
                                    <asp:GridView ID="GridView1" class="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="M_uid" DataSourceID="SqlDataSource1" Width="1067px">
                                        <Columns>
                                            <asp:BoundField DataField="M_uid" HeaderText="User ID" ReadOnly="True" SortExpression="M_uid" />
                                            <asp:BoundField DataField="M_name" HeaderText="Name" SortExpression="M_name" />
                                            <asp:BoundField DataField="M_cn" HeaderText="Contact" SortExpression="M_cn" />
                                            <asp:BoundField DataField="M_mail" HeaderText="E-mail" SortExpression="M_mail" />
                                            <asp:BoundField DataField="M_state" HeaderText="State" SortExpression="M_state" />
                                            <asp:BoundField DataField="M_city" HeaderText="City" SortExpression="M_city" />
                                            <asp:BoundField DataField="M_pc" HeaderText="Pincode" SortExpression="M_pc" />
                                            <asp:BoundField DataField="ac_stat" HeaderText="Account Status" SortExpression="ac_stat" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
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

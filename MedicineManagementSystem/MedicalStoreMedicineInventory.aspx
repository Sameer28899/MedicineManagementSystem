<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MedicalStoreMedicineInventory.aspx.cs" Inherits="MedicineManagementSystem.MedicalStoreMedicalReport" EnableEventValidation="false" %>
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
            <div class="col-md-9">
                <br>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h4>Medicine Inventory</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div> 

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineManagementDBConnectionString %>" SelectCommand="SELECT [med_id], [med_name], [med_mfg], [med_expr], [med_type], [med_q], [med_des] FROM [StoreMedicineInfo] WHERE ([MS_uid] = @MS_uid)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="MS_uid" SessionField="username" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                                <div class="col-md-12" >
                                    <asp:GridView ID="GridView1" class="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" Width="1067px" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="med_id" HeaderText="Medicine ID" SortExpression="med_id" />
                                            <asp:BoundField DataField="med_name" HeaderText="Medicine Name" SortExpression="med_name" />
                                            <asp:BoundField DataField="med_type" HeaderText="Medicine Type" SortExpression="med_type" />
                                            <asp:BoundField DataField="med_mfg" HeaderText="Manufactured By" SortExpression="med_mfg" />
                                            <asp:BoundField DataField="med_expr" HeaderText="Expiry Date" SortExpression="med_expr" />
                                            <asp:BoundField DataField="med_q" HeaderText="Quantity" SortExpression="med_q" />
                                            <asp:BoundField DataField="med_des" HeaderText="Description" SortExpression="med_des" />
                                        </Columns>
                                        
                                    </asp:GridView>
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

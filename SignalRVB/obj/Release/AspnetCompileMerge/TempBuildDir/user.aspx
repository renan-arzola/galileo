<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="user.aspx.vb" Inherits="Squilla.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Usuarios</h3>
                </div><!-- /.box-header -->
                    <div class="box-body">
    
        <asp:GridView ID="GridView1" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="COD_USU">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Images/check.jpg" ShowSelectButton="True" />
                <asp:BoundField DataField="LOGIN_USU" HeaderText="NOMBRE DE USUARIO" SortExpression="LOGIN_USU" />
                <asp:BoundField DataField="DES_USU" HeaderText="NOMBRES Y APELLIDOS DEL USUARIO" SortExpression="DES_USU" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webavldbCS %>" SelectCommand="SELECT LOGIN_USU, PASS_USU, DES_USU, COD_GUSU, IMAGE_USU, COD_USU FROM GAL_1100 ORDER BY DES_USU"></asp:SqlDataSource>
    
                    </div>
                </div>
            </div>
    </div>

         <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">Quick Example</h3>
                </div><!-- /.box-header -->
                  <div class="box-body">
                    <div class="form-group">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="COD_USU" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            LOGIN_USU:
                            <asp:TextBox ID="LOGIN_USUTextBox" runat="server" Text='<%# Bind("LOGIN_USU") %>' />
                            <br />
                            PASS_USU:
                            <asp:TextBox ID="PASS_USUTextBox" runat="server" Text='<%# Bind("PASS_USU") %>' />
                            <br />
                            DES_USU:
                            <asp:TextBox ID="DES_USUTextBox" runat="server" Text='<%# Bind("DES_USU") %>' />
                            <br />
                            COD_GUSU:
                            <asp:TextBox ID="COD_GUSUTextBox" runat="server" Text='<%# Bind("COD_GUSU") %>' />
                            <br />
                            IP_USU:
                            <asp:TextBox ID="IP_USUTextBox" runat="server" Text='<%# Bind("IP_USU") %>' />
                            <br />
                            IMAGE_USU:
                            <asp:TextBox ID="IMAGE_USUTextBox" runat="server" Text='<%# Bind("IMAGE_USU") %>' />
                            <br />
                            COD_USU:
                            <asp:Label ID="COD_USULabel1" runat="server" Text='<%# Eval("COD_USU") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            LOGIN_USU:
                            <asp:TextBox ID="LOGIN_USUTextBox" runat="server" Text='<%# Bind("LOGIN_USU") %>' />
                            <br />
                            PASS_USU:
                            <asp:TextBox ID="PASS_USUTextBox" runat="server" Text='<%# Bind("PASS_USU") %>' />
                            <br />
                            DES_USU:
                            <asp:TextBox ID="DES_USUTextBox" runat="server" Text='<%# Bind("DES_USU") %>' />
                            <br />
                            COD_GUSU:
                            <asp:TextBox ID="COD_GUSUTextBox" runat="server" Text='<%# Bind("COD_GUSU") %>' />
                            <br />
                            IP_USU:
                            <asp:TextBox ID="IP_USUTextBox" runat="server" Text='<%# Bind("IP_USU") %>' />
                            <br />
                            IMAGE_USU:
                            <asp:TextBox ID="IMAGE_USUTextBox" runat="server" Text='<%# Bind("IMAGE_USU") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            LOGIN_USU:
                            <asp:Label ID="LOGIN_USULabel" runat="server" Text='<%# Bind("LOGIN_USU") %>' />
                            <br />
                            PASS_USU:
                            <asp:Label ID="PASS_USULabel" runat="server" Text='<%# Bind("PASS_USU") %>' />
                            <br />
                            DES_USU:
                            <asp:Label ID="DES_USULabel" runat="server" Text='<%# Bind("DES_USU") %>' />
                            <br />
                            COD_GUSU:
                            <asp:Label ID="COD_GUSULabel" runat="server" Text='<%# Bind("COD_GUSU") %>' />
                            <br />
                            IP_USU:
                            <asp:Label ID="IP_USULabel" runat="server" Text='<%# Bind("IP_USU") %>' />
                            <br />
                            IMAGE_USU:
                            <asp:Label ID="IMAGE_USULabel" runat="server" Text='<%# Bind("IMAGE_USU") %>' />
                            <br />

                            COD_USU:
                            <asp:Label ID="COD_USULabel" runat="server" Text='<%# Eval("COD_USU") %>' />
                            <br />
                        </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webavldbCS %>" SelectCommand="SELECT [LOGIN_USU], [PASS_USU], [DES_USU], [COD_GUSU], [IP_USU], [IMAGE_USU], [COD_USU] FROM [GAL_1100] WHERE ([COD_USU] = @COD_USU)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="COD_USU" PropertyName="SelectedValue" Type="Int64" />
                            </SelectParameters>
                        </asp:SqlDataSource>
              </div><!-- /.box-body -->
                </div>
                  </div>
              <div class="box-footer">
              
                  </div>
    </form>

    <script type="text/javascript">
        $(function () {
            $("#GridView1").dataTable();
            $('#example2').dataTable({
                "bPaginate": true,
                "bLengthChange": false,
                "bFilter": false,
                "bSort": true,
                "bInfo": true,
                "bAutoWidth": false
            });
        });
    </script>
</asp:Content>

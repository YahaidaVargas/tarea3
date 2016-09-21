<%@ Page Title="" Language="C#" MasterPageFile="~/masterpbs.Master" AutoEventWireup="true" CodeBehind="consultabs.aspx.cs" Inherits="tarea3.consultabs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="server">
    <div class="row">
     <div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 bg-success">
           <h3>Consultando</h3>

        </div>

        </div>


        <!--menu-->
      <div class="row">
        <div class="col-sm-2 col-md-2 col-lg-2 col-xs-12 ">
            <div class="list-group">
  <a href="#" class="list-group-item disabled">
 menu
  </a>
  <a href="#" class="list-group-item">inicio</a>
  <a href="#" class="list-group-item">consulta
                </a>
 
&nbsp;</div>
          
        </div>




          <!--tabla-->
        <div class="col-sm-10 col-md-10 col-lg-10 col-xs-12">


            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="table" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="621px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Asunto" HeaderText="Asunto" SortExpression="Asunto" />
                    <asp:BoundField DataField="Mensaje" HeaderText="Mensaje" SortExpression="Mensaje" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Aplicada2ConnectionString %>" SelectCommand="SELECT * FROM [Mensajes]"></asp:SqlDataSource>
            </div>

            <!--tabla-->
          </div>


</asp:Content>

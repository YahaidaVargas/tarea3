<%@ Page Title="" Language="C#" MasterPageFile="~/masterpbs.Master" AutoEventWireup="true" CodeBehind="contactobs.aspx.cs" Inherits="tarea3.contactobs"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="server">
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 bg-success">
           <h2>Los super mensajes</h2>

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


          <!--formulario-->
        <div class="col-sm-10 col-md-10 col-lg-10 col-xs-12">
            
  <div class="form-group">
    <label for="email">Email address</label>
   <asp:TextBox ID="txtemail"  runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
  </div>
  
     <div class="form-group">
    <label for="asunto">asunto</label>
    <asp:TextBox ID="txtasunto"  runat="server" CssClass="form-control"></asp:TextBox>
   
  </div>


     <div class="form-group">
    <label for="mensaje">mensaje</label>
  <asp:TextBox ID="txtmensaje"  runat="server" CssClass="form-control" Rows="3" TextMode="MultiLine"></asp:TextBox>
  </div>
   <asp:Button ID="btnenviar" CssClass="btn btn-block btn-info" runat="server" Text="enviar" OnClick="btnenviar_Click" />

            
        </div>



    </div>

</asp:Content>

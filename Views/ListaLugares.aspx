<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaLugares.aspx.cs" Inherits="PaginacionWebForm.Views.ListaLugares" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form runat="server">
        <asp:GridView runat="server" ID="gvLugares" AutoGenerateColumns="false" DataKeyNames="id_lugarVisita" CssClass="table">
       <Columns>
           <asp:TemplateField HeaderText="ID">
               <ItemTemplate>
                   <asp:Label runat="server" ID="lblId" Text='<%#Bind("id_lugarVisita")%>' />
               </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Nombre del Lugar">
               <ItemTemplate>
                   <asp:Label runat="server" ID="lblNombreLugar" Text='<%#Bind("nombre_lugarVisita")%>' />
               </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Direccion">
               <ItemTemplate>
                   <asp:Label runat="server" ID="lblDireccionLugar" Text='<%#Bind("direccion_lugarVisita")%>' />
               </ItemTemplate>
           </asp:TemplateField>
       </Columns>
    </asp:GridView>
    </form>
    
</body>
</html>

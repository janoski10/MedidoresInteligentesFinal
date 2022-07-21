<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarMedidor.aspx.cs" Inherits="MedidoresInteligentes.AgregarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
    <div class="col-lg-6 mx-auto">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3>Ingresar Medidor</h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="medidorTxt">Medidor</label>
                    <asp:TextBox ID="medidorTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="medidorTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese Nro Medidor"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label for="fecha">Fecha</label>
                    <asp:Calendar ID="fecha" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    
                </div>

                <div class="form-group">
                    <label for="ValorTxt">Valor Consumo</label>
                    <asp:TextBox ID="ValorTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="ValorTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingrese Valor Correspondiente"></asp:RequiredFieldValidator>
                </div>

                <asp:Button OnClick="ingresarBtn_Click" runat="server" ID="ingresarBtn" Text="Ingresar" />

            </div>
        </div>
    </div>
</div>
</asp:Content>
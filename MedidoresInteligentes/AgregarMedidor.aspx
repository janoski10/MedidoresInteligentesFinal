﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarMedidor.aspx.cs" Inherits="MedidoresInteligentes.AgregarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<div class="row mt-5">
    <div class="col-lg-6 mx-auto">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3>Ingresar Medidor</h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="nombreTxt">Nombre</label>
                    <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" 
                </div>
            </div>
        </div>
    </div>
</div>
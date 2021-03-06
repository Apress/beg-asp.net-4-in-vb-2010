﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UpdateDeleteInsert.aspx.vb" Inherits="UpdateDeleteInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:SqlDataSource ID="sourceProducts" runat="server"
  ProviderName="System.Data.SqlClient"
  ConnectionString="<%$ ConnectionStrings:Northwind %>"
  SelectCommand="SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued FROM Products"
  UpdateCommand="UPDATE Products SET ProductName=@ProductName, UnitPrice=CONVERT(money, @UnitPrice), UnitsInStock=@UnitsInStock, UnitsOnOrder=@UnitsOnOrder, ReorderLevel=@ReorderLevel, Discontinued=@Discontinued WHERE ProductID=@ProductID"
  DeleteCommand="DELETE Products WHERE ProductID=@ProductID"
  InsertCommand="INSERT INTO Products (ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES (@ProductName, CONVERT(money, @UnitPrice), @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued)"
  >  
</asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"  DataKeyNames="ProductID"
            AllowPaging="True" DataSourceID="sourceProducts"
             AutoGenerateInsertButton="true" AutoGenerateDeleteButton="true" AutoGenerateEditButton="true">
            <PagerSettings PageButtonCount="25" />            
        </asp:DetailsView>
        <br /><br />
        When you insert a new record it will be given an automatically generated ID and placed at the end of the table.
        To see it, jump to the last record (using the paging buttons).
        <br /><br />
        When inserting a record, you are able to specify the ProductID. However, this value will be discarded.
        A better choice is to disable the ProductID field when inserting a record. To do this, you need to explicitly define
        the ProductID field in the DetailsView control. This technique is easy, and it's covered in the next
        chapter. 
    </div>
    </form>
</body>
</html>


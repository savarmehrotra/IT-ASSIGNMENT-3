<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            TRAVEL OPTIONS GENERATOR<br />
            <br />
&nbsp;&nbsp;&nbsp; &nbsp; SOURCE :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; DESTINATION :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CLASS OF TRAVEL :&nbsp;&nbsp;
            <br />
&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" style="margin-left: 242px" Width="156px">
                <asp:ListItem>PREMIUM</asp:ListItem>
                <asp:ListItem>COACH</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TIME OF TRAVEL :
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="30px" style="margin-left: 264px" Width="182px">
                <asp:ListItem>MORNING</asp:ListItem>
                <asp:ListItem>AFTERNOON</asp:ListItem>
                <asp:ListItem>EVENING</asp:ListItem>
            </asp:CheckBoxList>
            &nbsp;<asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
            <br />
            <asp:DropDownList ID="DDLAjax1" runat="server" Height="16px" Width="184px" style="margin-left: 248px">
                <asp:ListItem>FLIGHT</asp:ListItem>
                <asp:ListItem>TRAIN</asp:ListItem>
                <asp:ListItem>BUS</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show"
                Width="95px" style="margin-left: 138px" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" style="margin-left: 210px">
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
        
        
        </div>
    </form>
</body>
</html>

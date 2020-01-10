<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Queue.aspx.cs" Inherits="Queue.Queue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Mail ID :<asp:TextBox ID="mid" runat="server"></asp:TextBox>
            <br />
            Subject :<asp:TextBox ID="sub" runat="server"></asp:TextBox>
            <br />
            Message :<asp:TextBox ID="msg" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="submit" runat="server" Text="Insert" OnClick="submit_Click" />
        </div>
    </form>
</body>
</html>

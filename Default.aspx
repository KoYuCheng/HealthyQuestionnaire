<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .shadowbox {
            width: 15em;
            border: 1px solid #333;
            box-shadow: 8px 8px 5px #444;
            padding: 8px 12px;
            background-image: linear-gradient(180deg, #fff, #ddd 40%, #ccc);
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
       
    
        <h1>健康生活問卷</h1>
       <fieldset><legend></legend>
           
        姓名:<asp:TextBox ID="name" runat="server" OnTextChanged="name_TextChanged"></asp:TextBox>

        <br />性別:<asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="gender_SelectedIndexChanged">
               <asp:ListItem>男</asp:ListItem>
               <asp:ListItem>女</asp:ListItem>
           </asp:RadioButtonList>

        <br />年齡:<asp:DropDownList ID="age" runat="server">
               <asp:ListItem Value="0">未滿12歲</asp:ListItem>
               <asp:ListItem Value="1">12~24</asp:ListItem>
               <asp:ListItem Value="2">25~35</asp:ListItem>
               <asp:ListItem Value="3">36~45</asp:ListItem>
               <asp:ListItem Value="4">46~65</asp:ListItem>
               <asp:ListItem Value="5">66歲以上</asp:ListItem>
           </asp:DropDownList>
           <br />
             
        身高:<asp:TextBox ID="heigh" runat="server" OnTextChanged="heigh_TextChanged"  ValidationGroup="12"></asp:TextBox>公分<br/>
        體重:<asp:TextBox ID="weigh" runat="server" OnTextChanged="weigh_TextChanged"></asp:TextBox>公斤<br/>

        血壓: 收縮壓:<asp:TextBox ID="Systolic" runat="server" OnTextChanged="Systolic_TextChanged"></asp:TextBox>mmHg 舒張壓:<asp:TextBox ID="Diastolic" runat="server" OnTextChanged="Diastolic_TextChanged"></asp:TextBox>mmHg<br/>

        
           每周運動次數:<asp:RadioButtonList ID="sport" runat="server"  AutoPostBack="true" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="sport_SelectedIndexChanged1">
               <asp:ListItem Value="0">0</asp:ListItem>
               <asp:ListItem Value="1">1</asp:ListItem>
               <asp:ListItem Value="2">2</asp:ListItem>
               <asp:ListItem Value="3">3</asp:ListItem>
               <asp:ListItem Value="4">&gt;3</asp:ListItem>
           </asp:RadioButtonList>
           <br/>

        每次運動多久<asp:TextBox ID="sporttime" runat="server" OnTextChanged="sporttime_TextChanged"></asp:TextBox>公鐘<br/>

           常做的運動:
           <asp:CheckBoxList ID="ssport" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="ssport_SelectedIndexChanged">
               <asp:ListItem Value="0">慢跑</asp:ListItem>
               <asp:ListItem Value="1">長跑</asp:ListItem>
               <asp:ListItem Value="2">游泳</asp:ListItem>
               <asp:ListItem Value="3">瑜珈</asp:ListItem>
               <asp:ListItem Value="4">騎腳踏車</asp:ListItem>
               <asp:ListItem Value="5">籃球</asp:ListItem>
               <asp:ListItem Value="6">羽球</asp:ListItem>
               <asp:ListItem Value="7">跳舞</asp:ListItem>
           </asp:CheckBoxList>
           <br />

          

           每天喝多少杯含糖飲料:<asp:RadioButtonList ID="drink" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
             <asp:ListItem Value="0">沒有喝</asp:ListItem>
             <asp:ListItem Value="1">很少喝</asp:ListItem>
             <asp:ListItem Value="2">1杯</asp:ListItem>
             <asp:ListItem Value="3">2杯</asp:ListItem>
             <asp:ListItem Value="4">>超過2杯</asp:ListItem>
             
           </asp:RadioButtonList><br/>

            <asp:Button ID="Button1" runat="server" onclick="btnSumbit_Click" Text="確定" Width="100px" style="height: 27px" ValidationGroup="12" />
            <br />
           <asp:Label ID="Label8" runat="server" ForeColor="blue" Visible ="false"></asp:Label>
               <br />
           <asp:Panel ID="Panel1" runat="server" BackColor="#6699FF" BorderColor="#9900FF" Height="108px" Width="322px" Visible ="false" BorderStyle="Solid">
               <asp:Label ID="Label1" runat="server" ForeColor="blue"></asp:Label>
               <br />
               <asp:Label ID="Label2" runat="server" ForeColor="blue"></asp:Label>
               <br />
               <asp:Label ID="Label3" runat="server" ForeColor="blue" ></asp:Label>
               <br />
                <asp:Label ID="Label7" runat="server" ForeColor="blue" ></asp:Label>
               <asp:Label ID="Label6" runat="server" ForeColor="blue" ></asp:Label>
               <asp:Label ID="Label4" runat="server" ForeColor="blue" ></asp:Label>
               <br />
               <asp:Label ID="Label5" runat="server" ForeColor="blue" ></asp:Label>
              </asp:Panel>
               <br />

           <br />
           <br />
         </fieldset>
     
    </form>
</body>
</html>

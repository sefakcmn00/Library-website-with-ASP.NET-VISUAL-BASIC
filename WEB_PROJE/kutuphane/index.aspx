<%@ Page Title="" Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #orta
        {
            height: 483px;
            width: 645px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
//-->
</script>
</head>

<body onload="MM_preloadImages('resim1/nene1.JPG','resim1/1249-Ask.jpg','resim1/112167_2.jpg','resim1/127061_2.jpg','resim1/153651_2.jpg','resim1/166352_2.jpg','resim1/adobeflashcs3kitap.jpg')">
<table border="0" style="height: 513px; width: 633px">
  <tr>
    <td height="512" colspan="7"><img src="resim1/nene.JPG" name="orta" id="orta" /></td>
  </tr>
  <tr>
    <td width="72"><img src="resim1/nene1.JPG" width="90" height="90" onmouseover="MM_swapImage('orta','','resim1/nene1.JPG',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="72"><img src="resim1/1249-Ask.jpg" id="Image2" 
            onmouseover="MM_swapImage('orta','','resim1/1249-Ask.jpg',1)" 
            onmouseout="MM_swapImgRestore()" style="height: 96px; width: 86px" /></td>
    <td width="72"><img src="resim1/112167_2.jpg" width="90" height="90" id="Image3" onmouseover="MM_swapImage('orta','','resim1/112167_2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="72"><img src="resim1/127061_2.jpg" width="90" height="90" id="Image4" onmouseover="MM_swapImage('orta','','resim1/127061_2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="72"><img src="resim1/153651_2.jpg" width="90" height="90" id="Image5" onmouseover="MM_swapImage('orta','','resim1/153651_2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="82"><img src="resim1/166352_2.jpg" width="90" height="90" id="Image6" onmouseover="MM_swapImage('orta','','resim1/166352_2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="131"><img src="resim1/adobeflashcs3kitap.jpg" width="90" height="90" id="Image7" onmouseover="MM_swapImage('orta','','resim1/adobeflashcs3kitap.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
  </tr>
</table>
    <br />
    <br />
    Kullanýcý Adý:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Þifre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="Button2" runat="server" Height="23px" Text="Giriþ" 
        Width="66px" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/uyeol.aspx">Üye 
    ol</asp:HyperLink>
&nbsp;
&nbsp;</asp:Content>


<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<script type="text/javascript">
		function OnFocusedNodeChanged(s, e) {
			ASPxClientUtils.SetCookie(s.name + '_focudedKey', s.GetFocusedNodeKey());
		}
		function OnInit(s, e){ 
			if(ASPxClientUtils.GetCookie(s.name+'_focudedKey')!=null)
				s.SetFocusedNodeKey(ASPxClientUtils.GetCookie(s.name+'_focudedKey')); 
		}
	</script>
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<dx:ASPxTreeList ID="ASPxTreeList1" runat="server" AutoGenerateColumns="False" DataSourceID="ads" KeyFieldName="EmployeeID" ParentFieldName="ReportsTo"  >
			<SettingsBehavior AllowFocusedNode="true" AutoExpandAllNodes="true" />
			<ClientSideEvents Init="OnInit" FocusedNodeChanged="OnFocusedNodeChanged" />
			<Columns>
				<dx:TreeListTextColumn FieldName="LastName" VisibleIndex="0">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="FirstName" VisibleIndex="1">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="Title" VisibleIndex="2">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="TitleOfCourtesy" VisibleIndex="3">
				</dx:TreeListTextColumn>
				<dx:TreeListDateTimeColumn FieldName="BirthDate" VisibleIndex="4">
				</dx:TreeListDateTimeColumn>
				<dx:TreeListDateTimeColumn FieldName="HireDate" VisibleIndex="5">
				</dx:TreeListDateTimeColumn>
				<dx:TreeListTextColumn FieldName="Address" VisibleIndex="6">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="City" VisibleIndex="7">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="Region" VisibleIndex="8">
				</dx:TreeListTextColumn>
			</Columns>
		</dx:ASPxTreeList>
		<asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Employees]" >              
		</asp:AccessDataSource>
	</form>
</body>
</html>
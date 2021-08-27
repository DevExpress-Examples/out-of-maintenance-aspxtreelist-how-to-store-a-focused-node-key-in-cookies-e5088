<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128548318/13.2.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E5088)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxTreeList - How to store a focused node key in cookies
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e5088/)**
<!-- run online end -->


<p>ASPxTreeList does not save a focused node in cookies. However, you can add this capability by saving and restoring a focused node to cookies manually:<br />


```js

function OnFocusedNodeChanged(s, e) {
	ASPxClientUtils.SetCookie(s.name + '_focudedKey', s.GetFocusedNodeKey());
}
function OnInit(s, e){ 
	if(ASPxClientUtils.GetCookie(s.name+'_focudedKey')!=null)
		s.SetFocusedNodeKey(ASPxClientUtils.GetCookie(s.name+'_focudedKey')); 
}

```

 </p><p></p>

<br/>



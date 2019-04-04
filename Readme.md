<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxTreeList - How to store a focused node key in cookies


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



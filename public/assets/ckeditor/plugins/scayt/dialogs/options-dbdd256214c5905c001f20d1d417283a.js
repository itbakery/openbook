/*
 Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("scaytcheck",function(e){function t(){return"undefined"!=typeof document.forms["optionsbar_"+p]?document.forms["optionsbar_"+p].options:[]}function a(e,t){if(e){var a=e.length;if(void 0==a)e.checked=e.value==t.toString();else for(var n=0;a>n;n++)e[n].checked=!1,e[n].value==t.toString()&&(e[n].checked=!0)}}function n(e){u.getById("dic_message_"+p).setHtml('<span style="color:red;">'+e+"</span>")}function i(e){u.getById("dic_message_"+p).setHtml('<span style="color:blue;">'+e+"</span>")}function o(e){for(var e=(""+e).split(","),t=0,a=e.length;a>t;t+=1)u.getById(e[t]).$.style.display="inline"}function r(e){for(var e=(""+e).split(","),t=0,a=e.length;a>t;t+=1)u.getById(e[t]).$.style.display="none"}function l(e){u.getById("dic_name_"+p).$.value=e}var s,d,c=!0,u=CKEDITOR.document,p=e.name,m=CKEDITOR.plugins.scayt.getUiTabs(e),h=[],g=0,f=["dic_create_"+p+",dic_restore_"+p,"dic_rename_"+p+",dic_delete_"+p],b=["mixedCase","mixedWithDigits","allCaps","ignoreDomainNames"];d=e.lang.scayt;var v=[{id:"options",label:d.optionsTab,elements:[{type:"html",id:"options",html:'<form name="optionsbar_'+p+'"><div class="inner_options">	<div class="messagebox"></div>	<div style="display:none;">		<input type="checkbox" name="options"  id="allCaps_'+p+'" />		<label style = "display: inline" for="allCaps" id="label_allCaps_'+p+'"></label>	</div>	<div style="display:none;">		<input name="options" type="checkbox"  id="ignoreDomainNames_'+p+'" />		<label style = "display: inline" for="ignoreDomainNames" id="label_ignoreDomainNames_'+p+'"></label>	</div>	<div style="display:none;">	<input name="options" type="checkbox"  id="mixedCase_'+p+'" />		<label style = "display: inline" for="mixedCase" id="label_mixedCase_'+p+'"></label>	</div>	<div style="display:none;">		<input name="options" type="checkbox"  id="mixedWithDigits_'+p+'" />		<label style = "display: inline" for="mixedWithDigits" id="label_mixedWithDigits_'+p+'"></label>	</div></div></form>'}]},{id:"langs",label:d.languagesTab,elements:[{type:"html",id:"langs",html:'<form name="languagesbar_'+p+'"><div class="inner_langs">	<div class="messagebox"></div>	   <div style="float:left;width:45%;margin-left:5px;" id="scayt_lcol_'+p+'" ></div>   <div style="float:left;width:45%;margin-left:15px;" id="scayt_rcol_'+p+'"></div></div></form>'}]},{id:"dictionaries",label:d.dictionariesTab,elements:[{type:"html",style:"",id:"dictionaries",html:'<form name="dictionarybar_'+p+'"><div class="inner_dictionary" style="text-align:left; white-space:normal; width:320px; overflow: hidden;">	<div style="margin:5px auto; width:95%;white-space:normal; overflow:hidden;" id="dic_message_'+p+'"> </div>	<div style="margin:5px auto; width:95%;white-space:normal;">        <span class="cke_dialog_ui_labeled_label" >Dictionary name</span><br>		<span class="cke_dialog_ui_labeled_content" >			<div class="cke_dialog_ui_input_text">				<input id="dic_name_'+p+'" type="text" class="cke_dialog_ui_input_text" style = "height: 25px; background: none; padding: 0;"/>		</div></span></div>		<div style="margin:5px auto; width:95%;white-space:normal;">			<a style="display:none;" class="cke_dialog_ui_button" href="javascript:void(0)" id="dic_create_'+p+'">				</a>			<a  style="display:none;" class="cke_dialog_ui_button" href="javascript:void(0)" id="dic_delete_'+p+'">				</a>			<a  style="display:none;" class="cke_dialog_ui_button" href="javascript:void(0)" id="dic_rename_'+p+'">				</a>			<a  style="display:none;" class="cke_dialog_ui_button" href="javascript:void(0)" id="dic_restore_'+p+'">				</a>		</div>	<div style="margin:5px auto; width:95%;white-space:normal;" id="dic_info_'+p+'"></div></div></form>'}]},{id:"about",label:d.aboutTab,elements:[{type:"html",id:"about",style:"margin: 5px 5px;",html:'<div id="scayt_about_'+p+'"></div>'}]}],T={title:d.title,minWidth:360,minHeight:220,onShow:function(){var t=this;if(t.data=e.fire("scaytDialog",{}),t.options=t.data.scayt_control.option(),t.chosed_lang=t.sLang=t.data.scayt_control.sLang,t.data&&t.data.scayt&&t.data.scayt_control){var a=0;c?t.data.scayt.getCaption(e.langCode||"en",function(e){0<a++||(s=e,C.apply(t),y.apply(t),c=!1)}):y.apply(t),t.selectPage(t.data.tab)}else alert("Error loading application service"),t.hide()},onOk:function(){var e=this.data.scayt_control;e.option(this.options),e.setLang(this.chosed_lang),e.refresh()},onCancel:function(){var e,n=t();for(e in n)n[e].checked=!1;n="undefined"!=typeof document.forms["languagesbar_"+p]?document.forms["languagesbar_"+p].scayt_lang:[],a(n,"")},contents:h};for(CKEDITOR.plugins.scayt.getScayt(e),d=0;d<m.length;d++)1==m[d]&&(h[h.length]=v[d]);1==m[2]&&(g=1);var C=function(){function e(e){var t=u.getById("dic_name_"+p).getValue();if(!t)return n(" Dictionary name should not be empty. "),!1;try{var a=e.data.getTarget().getParent(),i=/(dic_\w+)_[\w\d]+/.exec(a.getId())[1];T[i].apply(null,[a,t,f])}catch(o){n(" Dictionary error. ")}return!0}var t,a=this,d=a.data.scayt.getLangList(),c=["dic_create","dic_delete","dic_rename","dic_restore"],h=[],v=[];if(g){for(t=0;t<c.length;t++)h[t]=c[t]+"_"+p,u.getById(h[t]).setHtml('<span class="cke_dialog_ui_button">'+s["button_"+c[t]]+"</span>");u.getById("dic_info_"+p).setHtml(s.dic_info)}if(1==m[0])for(t in b)c="label_"+b[t],h=u.getById(c+"_"+p),"undefined"!=typeof h&&"undefined"!=typeof s[c]&&"undefined"!=typeof a.options[b[t]]&&(h.setHtml(s[c]),h.getParent().$.style.display="block");if(c='<p><img src="'+window.scayt.getAboutInfo().logoURL+'" /></p><p>'+s.version+window.scayt.getAboutInfo().version.toString()+"</p><p>"+s.about_throwt_copy+"</p>",u.getById("scayt_about_"+p).setHtml(c),c=function(e,t){var n=u.createElement("label");n.setAttribute("for","cke_option"+e),n.setStyle("display","inline"),n.setHtml(t[e]),a.sLang==e&&(a.chosed_lang=e);var i=u.createElement("div"),o=CKEDITOR.dom.element.createFromHtml('<input class = "cke_dialog_ui_radio_input" id="cke_option'+e+'" type="radio" '+(a.sLang==e?'checked="checked"':"")+' value="'+e+'" name="scayt_lang" />');return o.on("click",function(){this.$.checked=!0,a.chosed_lang=e}),i.append(o),i.append(n),{lang:t[e],code:e,radio:i}},1==m[1]){for(t in d.rtl)v[v.length]=c(t,d.ltr);for(t in d.ltr)v[v.length]=c(t,d.ltr);for(v.sort(function(e,t){return t.lang>e.lang?-1:1}),d=u.getById("scayt_lcol_"+p),c=u.getById("scayt_rcol_"+p),t=0;t<v.length;t++)(t<v.length/2?d:c).append(v[t].radio)}var T={dic_create:function(e,t,a){var l=a[0]+","+a[1],d=s.err_dic_create,c=s.succ_dic_create;window.scayt.createUserDictionary(t,function(e){r(l),o(a[1]),c=c.replace("%s",e.dname),i(c)},function(e){d=d.replace("%s",e.dname),n(d+"( "+(e.message||"")+")")})},dic_rename:function(e,t){var a=s.err_dic_rename||"",o=s.succ_dic_rename||"";window.scayt.renameUserDictionary(t,function(e){o=o.replace("%s",e.dname),l(t),i(o)},function(e){a=a.replace("%s",e.dname),l(t),n(a+"( "+(e.message||"")+" )")})},dic_delete:function(e,t,a){var d=a[0]+","+a[1],c=s.err_dic_delete,u=s.succ_dic_delete;window.scayt.deleteUserDictionary(function(e){u=u.replace("%s",e.dname),r(d),o(a[0]),l(""),i(u)},function(e){c=c.replace("%s",e.dname),n(c)})}};for(T.dic_restore=a.dic_restore||function(e,t,a){var l=a[0]+","+a[1],d=s.err_dic_restore,c=s.succ_dic_restore;window.scayt.restoreUserDictionary(t,function(e){c=c.replace("%s",e.dname),r(l),o(a[1]),i(c)},function(e){d=d.replace("%s",e.dname),n(d)})},v=(f[0]+","+f[1]).split(","),t=0,d=v.length;d>t;t+=1)(c=u.getById(v[t]))&&c.on("click",e,this)},y=function(){var e=this;if(1==m[0])for(var n=t(),l=0,s=n.length;s>l;l++){var d=n[l].id,h=u.getById(d);h&&(n[l].checked=!1,1==e.options[d.split("_")[0]]&&(n[l].checked=!0),c)&&h.on("click",function(){e.options[this.getId().split("_")[0]]=this.$.checked?1:0})}1==m[1]&&(n=u.getById("cke_option"+e.sLang),a(n.$,e.sLang)),g&&(window.scayt.getNameUserDictionary(function(e){e=e.dname,r(f[0]+","+f[1]),e?(u.getById("dic_name_"+p).setValue(e),o(f[1])):o(f[0])},function(){u.getById("dic_name_"+p).setValue("")}),i(""))};return T});
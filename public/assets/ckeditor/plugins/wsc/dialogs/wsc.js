/*
 Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("checkspell",function(e){function t(e,t){var i=0;return function(){"function"==typeof window.doSpell?("undefined"!=typeof a&&window.clearInterval(a),n(e)):180==i++&&window._cancelOnError(t)}}function n(t){var n=new window._SP_FCK_LangCompare,a=CKEDITOR.getUrl(e.plugins.wsc.path+"dialogs/"),i=a+"tmpFrameset.html";window.gFCKPluginName="wsc",n.setDefaulLangCode(e.config.defaultLanguage),window.doSpell({ctrl:r,lang:e.config.wsc_lang||n.getSPLangCode(e.langCode),intLang:e.config.wsc_uiLang||n.getSPLangCode(e.langCode),winType:o,onCancel:function(){t.hide()},onFinish:function(n){e.focus(),t.getParentEditor().setData(n.value),t.hide()},staticFrame:i,framesetPath:i,iframePath:a+"ciframe.html",schemaURI:a+"wsc.css",userDictionaryName:e.config.wsc_userDictionaryName,customDictionaryName:e.config.wsc_customDictionaryIds&&e.config.wsc_customDictionaryIds.split(","),domainName:e.config.wsc_domainName}),CKEDITOR.document.getById(l).setStyle("display","none"),CKEDITOR.document.getById(o).setStyle("display","block")}var a,i=CKEDITOR.tools.getNextNumber(),o="cke_frame_"+i,r="cke_data_"+i,l="cke_error_"+i,i=document.location.protocol||"http:",s=e.lang.wsc.notAvailable,d='<textarea style="display: none" id="'+r+'" rows="10" cols="40"> </textarea><div id="'+l+'" style="display:none;color:red;font-size:16px;font-weight:bold;padding-top:160px;text-align:center;z-index:11;"></div><iframe src="" style="width:100%;background-color:#f1f1e3;" frameborder="0" name="'+o+'" id="'+o+'" allowtransparency="1"></iframe>',c=e.config.wsc_customLoaderScript||i+"//loader.webspellchecker.net/sproxy_fck/sproxy.php?plugin=fck2&customerid="+e.config.wsc_customerId+"&cmd=script&doc=wsc&schema=22";return e.config.wsc_customLoaderScript&&(s+='<p style="color:#000;font-size:11px;font-weight: normal;text-align:center;padding-top:10px">'+e.lang.wsc.errorLoading.replace(/%s/g,e.config.wsc_customLoaderScript)+"</p>"),window._cancelOnError=function(t){if("undefined"==typeof window.WSC_Error){CKEDITOR.document.getById(o).setStyle("display","none");var n=CKEDITOR.document.getById(l);n.setStyle("display","block"),n.setHtml(t||e.lang.wsc.notAvailable)}},{title:e.config.wsc_dialogTitle||e.lang.wsc.title,minWidth:485,minHeight:380,buttons:[CKEDITOR.dialog.cancelButton],onShow:function(){var n=this.getContentElement("general","content").getElement();n.setHtml(d),n.getChild(2).setStyle("height",this._.contentSize.height+"px"),"function"!=typeof window.doSpell&&CKEDITOR.document.getHead().append(CKEDITOR.document.createElement("script",{attributes:{type:"text/javascript",src:c}})),n=e.getData(),CKEDITOR.document.getById(r).setValue(n),a=window.setInterval(t(this,s),250)},onHide:function(){window.ooo=void 0,window.int_framsetLoaded=void 0,window.framesetLoaded=void 0,window.is_window_opened=!1},contents:[{id:"general",label:e.config.wsc_dialogTitle||e.lang.wsc.title,padding:0,elements:[{type:"html",id:"content",html:""}]}]}}),CKEDITOR.dialog.on("resize",function(e){var e=e.data,t=e.dialog;"checkspell"==t._.name&&((t=(t=t.getContentElement("general","content").getElement())&&t.getChild(2))&&t.setSize("height",e.height),t&&t.setSize("width",e.width))});
/*
 Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
*/
function OptionsConfirm(e){e&&nameNode.setValue("")}var ManagerPostMessage=function(){return{init:function(e){document.addEventListener?window.addEventListener("message",e,!1):window.attachEvent("onmessage",e)},send:function(e){var t=Object.prototype.toString;fn=e.fn||null,id=e.id||"",target=e.target||window,message=e.message||{id:id},"[object Object]"==t.call(e.message)&&(e.message.id||(e.message.id=id),message=e.message),e=JSON.stringify(message,fn),target.postMessage(e,"*")}}},tools={hash:{create:function(e,t){return JSON.stringify(e,t||null)},parse:function(e,t){return JSON.parse(e,t||null)}},filter4html:function(e){return e.replace(/"/g,"&quot;").replace(/'/g,"&#146;")},setCookie:function(e,t,a){var a=a||{},n=a.expires;if("number"==typeof n&&n){var i=new Date;i.setTime(i.getTime()+1e3*n),n=a.expires=i}n&&n.toUTCString&&(a.expires=n.toUTCString());var o,t=encodeURIComponent(t),e=e+"="+t;for(o in a)e+="; "+o,t=a[o],!0!==t&&(e+="="+t);document.cookie=e},getCookie:function(e){return(e=document.cookie.match(RegExp("(?:^|; )"+e.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g,"\\$1")+"=([^;]*)")))?decodeURIComponent(e[1]):void 0},deleteCookie:function(e){setCookie(e,"",{expires:-1})}},optionsDataObject={},NS={},nameNode=null;NS.targetFromFrame={},NS.wsc_customerId=CKEDITOR.config.wsc_customerId,NS.cust_dic_ids=CKEDITOR.config.wsc_customDictionaryIds,NS.userDictionaryName=CKEDITOR.config.wsc_userDictionaryName,NS.defaultLanguage=CKEDITOR.config.defaultLanguage,NS.LocalizationComing={},CKEDITOR.dialog.add("checkspell",function(e){function t(e){if(!e)throw"Languages-by-groups list are required for construct selectbox";var t,a=[],n="";for(t in e)for(var i in e[t]){var o=e[t][i];"en_US"==o?n=o:a.push(o)}return a.sort(),n&&a.unshift(n),{getCurrentLangGroup:function(t){e:{for(var a in e)for(var n in e[a])if(n.toUpperCase()===t.toUpperCase()){t=a;break e}t=""}return t},setLangList:function(){var t,a={};for(t in e)for(var n in e[t])a[e[t][n]]=n;return a}()}}CKEDITOR.on("dialogDefinition",function(e){e.data.definition.dialog.on("cancel",function(){return!1},this,null,-1)}),NS.CKNumber=CKEDITOR.tools.getNextNumber(),NS.iframeNumber="cke_frame_"+NS.CKNumber,NS.TextAreaNumber="cke_textarea_"+NS.CKNumber,NS.pluginPath=CKEDITOR.getUrl(e.plugins.wsc.path),NS.logotype=DefaultParams.logoPath,NS.templatePath=NS.pluginPath+"dialogs/tmp.html",NS.div_overlay_no_check=null,NS.loadIcon=DefaultParams.iconPath,NS.loadIconEmptyEditor=DefaultParams.iconPathEmptyEditor,NS.LangComparer=new _SP_FCK_LangCompare,NS.LangComparer.setDefaulLangCode(NS.defaultLanguage),NS.currentLang=e.config.wsc_lang||NS.LangComparer.getSPLangCode(e.langCode),NS.LocalizationButton={ChangeTo:{instance:null,text:"Change to"},ChangeAll:{instance:null,text:"Change All"},IgnoreWord:{instance:null,text:"Ignore word"},IgnoreAllWords:{instance:null,text:"Ignore all words"},Options:{instance:null,text:"Options",optionsDialog:{instance:null}},AddWord:{instance:null,text:"Add word"},FinishChecking:{instance:null,text:"Finish Checking"}},NS.LocalizationLabel={ChangeTo:{instance:null,text:"Change to"},Suggestions:{instance:null,text:"Suggestions"}};var a=function(e){for(var t in e)e[t].instance.getElement().setText(NS.LocalizationComing[t])},n=function(e){for(var t in e){if(!e[t].instance.setLabel)break;e[t].instance.setLabel(NS.LocalizationComing[t])}};NS.load=!0,NS.cmd={SpellTab:"spell",Thesaurus:"thes",GrammTab:"grammar"},NS.dialog=null,NS.optionNode=null,NS.selectNode=null,NS.grammerSuggest=null,NS.textNode={},NS.iframeMain=null,NS.dataTemp="",NS.div_overlay=null,NS.textNodeInfo={},NS.selectNode={},NS.selectNodeResponce={},NS.selectingLang=NS.currentLang,NS.langList=null,NS.serverLocationHash=DefaultParams.serviceHost,NS.serverLocation="#server="+NS.serverLocationHash,NS.langSelectbox=null,NS.banner="";var i=null;iframeOnload=!1,NS.framesetHtml=function(e){return'<iframe src="'+NS.templatePath+NS.serverLocation+'" id='+NS.iframeNumber+"_"+e+' frameborder="0" allowtransparency="1" style="width:100%;border: 1px solid #AEB3B9;overflow: auto;background:#fff; border-radius: 3px;"></iframe>'},NS.setIframe=function(e,t){var a=NS.framesetHtml(t);return e.getElement().setHtml(a)},NS.setCurrentIframe=function(e){NS.setIframe(NS.dialog._.contents[e].Content,e)},NS.sendData=function(){var e,t,a=NS.dialog._.currentTabId,n=NS.dialog._.contents[a].Content;NS.setIframe(n,a),NS.dialog.parts.tabs.removeAllListeners(),NS.dialog.parts.tabs.on("click",function(i){i=i||window.event,i.data.getTarget().is("a")&&a!=NS.dialog._.currentTabId&&(a=NS.dialog._.currentTabId,n=NS.dialog._.contents[a].Content,e=NS.iframeNumber+"_"+a,0==n.getElement().$.children.length?(NS.setIframe(n,a),t=document.getElementById(e),NS.targetFromFrame[e]=t.contentWindow):m(NS.targetFromFrame[e],NS.cmd[a]))})},NS.buildOptionSynonyms=function(e){e=NS.selectNodeResponce[e],NS.selectNode.synonyms.clear();for(var t=0;t<e.length;t++)NS.selectNode.synonyms.add(e[t],e[t]);NS.selectNode.synonyms.getInputElement().$.firstChild.selected=!0,NS.textNode.Thesaurus.setValue(NS.selectNode.synonyms.getInputElement().getValue())},NS.buildSelectLang=function(){var e=new CKEDITOR.dom.element("div"),t=new CKEDITOR.dom.element("select"),a="wscLang"+NS.CKNumber;return e.addClass("cke_dialog_ui_input_select"),e.setAttribute("role","presentation"),e.setStyles({height:"auto",position:"absolute",right:"0",top:"-1px",width:"160px","white-space":"normal"}),t.setAttribute("id",a),t.addClass("cke_dialog_ui_input_select"),t.setStyles({width:"160px"}),e.append(t),e},NS.buildOptionLang=function(e){var t,a,n=document.getElementById("wscLang"+NS.CKNumber);if(0===n.options.length)for(var i in e)t=document.createElement("option"),t.setAttribute("value",e[i]),a=document.createTextNode(i),t.appendChild(a),e[i]==NS.selectingLang&&(t.selected=!0),n.appendChild(t);for(e=0;e<n.options.length;e++)n.options[e].value==NS.selectingLang&&(n.options[e].selected=!0)};var o=function(e){var t=document,a=e.target||t.body,n=e.id||"overlayBlock",i=e.opacity||"0.9",e=e.background||"#f1f1f1",o=t.getElementById(n),r=o||t.createElement("div");return r.style.cssText="position: absolute;top:30px;bottom:40px;left:1px;right:1px;z-index: 10020;padding:0;margin:0;background:"+e+";opacity: "+i+";filter: alpha(opacity="+100*i+");display: none;",r.id=n,o||a.appendChild(r),{setDisable:function(){r.style.display="none"},setEnable:function(){r.style.display="block"}}},r=function(e,t,a){var n=new CKEDITOR.dom.element("div"),i=new CKEDITOR.dom.element("input"),o=new CKEDITOR.dom.element("label"),r="wscGrammerSuggest"+e+"_"+t;return n.addClass("cke_dialog_ui_input_radio"),n.setAttribute("role","presentation"),n.setStyles({width:"97%",padding:"5px","white-space":"normal"}),i.setAttributes({type:"radio",value:t,name:"wscGrammerSuggest",id:r}),i.setStyles({"float":"left"}),i.on("click",function(e){NS.textNode.GrammTab.setValue(e.sender.getValue())}),a&&i.setAttribute("checked",!0),i.addClass("cke_dialog_ui_radio_input"),o.appendText(e),o.setAttribute("for",r),o.setStyles({display:"block","line-height":"16px","margin-left":"18px","white-space":"normal"}),n.append(i),n.append(o),n},l=function(e){var a=new t(e),e=document.getElementById("wscLang"+NS.CKNumber),n=NS.iframeNumber+"_"+NS.dialog._.currentTabId;NS.buildOptionLang(a.setLangList),e.onchange=function(){p[a.getCurrentLangGroup(this.value)](),NS.div_overlay.setEnable(),NS.selectingLang=this.value,i.send({message:{changeLang:NS.selectingLang,text:NS.dataTemp},target:NS.targetFromFrame[n],id:"selectionLang_outer__page"})}},s=function(e){if("no_any_suggestions"==e){e="No suggestions",NS.LocalizationButton.ChangeTo.instance.disable(),NS.LocalizationButton.ChangeAll.instance.disable();var t=function(e){e=NS.LocalizationButton[e].instance,e.getElement().hasClass("cke_disabled")?e.getElement().setStyle("color","#a0a0a0"):e.disable()};t("ChangeTo"),t("ChangeAll")}else NS.LocalizationButton.ChangeTo.instance.enable(),NS.LocalizationButton.ChangeAll.instance.enable(),NS.LocalizationButton.ChangeTo.instance.getElement().setStyle("color","#333"),NS.LocalizationButton.ChangeAll.instance.getElement().setStyle("color","#333");return e},d={iframeOnload:function(){NS.div_overlay.setEnable(),iframeOnload=!0;var e=NS.dialog._.currentTabId;m(NS.targetFromFrame[NS.iframeNumber+"_"+e],NS.cmd[e])},suggestlist:function(e){delete e.id,NS.div_overlay_no_check.setDisable(),f(),l(NS.langList);var t=s(e.word),a="";for(t instanceof Array&&(t=e.word[0]),a=t=t.split(","),selectNode.clear(),NS.textNode.SpellTab.setValue(a[0]),e=0;e<a.length;e++)selectNode.add(a[e],a[e]);g(),NS.div_overlay.setDisable()},grammerSuggest:function(e){delete e.id,delete e.mocklangs,f();var t=e.grammSuggest[0];NS.grammerSuggest.getElement().setHtml(""),NS.textNode.GrammTab.reset(),NS.textNode.GrammTab.setValue(t),NS.textNodeInfo.GrammTab.getElement().setHtml(""),NS.textNodeInfo.GrammTab.getElement().setText(e.info);for(var e=e.grammSuggest,t=e.length,a=!0,n=0;t>n;n++)NS.grammerSuggest.getElement().append(r(e[n],e[n],a)),a=!1;g(),NS.div_overlay.setDisable()},thesaurusSuggest:function(e){delete e.id,delete e.mocklangs,f(),NS.selectNodeResponce=e,NS.textNode.Thesaurus.reset(),NS.selectNode.categories.clear();for(var t in e)NS.selectNode.categories.add(t,t);e=NS.selectNode.categories.getInputElement().getChildren().$[0].value,NS.selectNode.categories.getInputElement().getChildren().$[0].selected=!0,NS.buildOptionSynonyms(e),g(),NS.div_overlay.setDisable()},finish:function(e){delete e.id,NS.dialog.getContentElement(NS.dialog._.currentTabId,"bottomGroup").getElement().hide(),NS.dialog.getContentElement(NS.dialog._.currentTabId,"BlockFinishChecking").getElement().show(),NS.div_overlay.setDisable()},settext:function(e){delete e.id,NS.dialog.getParentEditor().focus(),NS.dialog.getParentEditor().setData(e.text,NS.dialog.hide())},ReplaceText:function(e){delete e.id,NS.div_overlay.setEnable(),NS.dataTemp=e.text,NS.selectingLang=e.currentLang,window.setTimeout(function(){NS.div_overlay.setDisable()},500),a(NS.LocalizationButton),n(NS.LocalizationLabel)},options_checkbox_send:function(e){delete e.id,e={osp:tools.getCookie("osp"),udn:tools.getCookie("udn"),cust_dic_ids:NS.cust_dic_ids},i.send({message:e,target:NS.targetFromFrame[NS.iframeNumber+"_"+NS.dialog._.currentTabId],id:"options_outer__page"})},getOptions:function(e){var t=e.DefOptions.udn;NS.LocalizationComing=e.DefOptions.localizationButtonsAndText,NS.langList=e.lang;var a=e.banner;NS.dialog.getContentElement(NS.dialog._.currentTabId,"banner").getElement().setHtml(a),"undefined"==t&&(NS.userDictionaryName?(t=NS.userDictionaryName,a={osp:tools.getCookie("osp"),udn:NS.userDictionaryName,cust_dic_ids:NS.cust_dic_ids,id:"options_dic_send",udnCmd:"create"},i.send({message:a,target:NS.targetFromFrame[frameId]})):t=""),tools.setCookie("osp",e.DefOptions.osp),tools.setCookie("udn",t),tools.setCookie("cust_dic_ids",e.DefOptions.cust_dic_ids),i.send({id:"giveOptions"})},options_dic_send:function(){var e={osp:tools.getCookie("osp"),udn:tools.getCookie("udn"),cust_dic_ids:NS.cust_dic_ids,id:"options_dic_send",udnCmd:tools.getCookie("udnCmd")};i.send({message:e,target:NS.targetFromFrame[NS.iframeNumber+"_"+NS.dialog._.currentTabId]})},data:function(e){delete e.id},giveOptions:function(){},setOptionsConfirmF:function(){OptionsConfirm(!1)},setOptionsConfirmT:function(){OptionsConfirm(!0)},clickBusy:function(){NS.div_overlay.setEnable()},suggestAllCame:function(){NS.div_overlay.setDisable(),NS.div_overlay_no_check.setDisable()},TextCorrect:function(){l(NS.langList)}},c=function(e){e=e||window.event,e=JSON.parse(e.data),d[e.id](e)},u=function(){NS.div_overlay.setEnable();var e=NS.dialog._.currentTabId,t=NS.iframeNumber+"_"+e,a=NS.textNode[e].getValue();i.send({message:{cmd:this.getElement().getAttribute("title-cmd"),tabId:e,new_word:a},target:NS.targetFromFrame[t],id:"cmd_outer__page"})},m=function(e,t,a,n){t=t||CKEDITOR.config.wsc_cmd||"spell",a=a||NS.dataTemp,i.send({message:{customerId:NS.wsc_customerId,text:a,txt_ctrl:NS.TextAreaNumber,cmd:t,cust_dic_ids:NS.cust_dic_ids,udn:NS.userDictionaryName,slang:NS.selectingLang,reset_suggest:n||!1},target:e,id:"data_outer__page"}),NS.div_overlay.setEnable()},p={superset:function(){NS.dialog.showPage("Thesaurus"),NS.dialog.showPage("GrammTab"),NS.dialog.showPage("SpellTab")},usual:function(){NS.dialog.hidePage("Thesaurus"),NS.dialog.hidePage("GrammTab"),NS.dialog.showPage("SpellTab")}},h=function(){var e=new function(e){var t={};return{getCmdByTab:function(a){for(var n in e)t[e[n]]=n;return t[a]}}}(NS.cmd);NS.dialog.selectPage(e.getCmdByTab(CKEDITOR.config.wsc_cmd)),NS.sendData()},g=function(){NS.dialog.getContentElement(NS.dialog._.currentTabId,"bottomGroup").getElement().show()},f=function(){NS.dialog.getContentElement(NS.dialog._.currentTabId,"BlockFinishChecking").getElement().hide()};return{title:e.config.wsc_dialogTitle||e.lang.wsc.title,minWidth:560,minHeight:350,resizable:CKEDITOR.DIALOG_RESIZE_NONE,buttons:[CKEDITOR.dialog.cancelButton],onLoad:function(){i=new ManagerPostMessage,NS.dialog=this,h(),NS.dataTemp=NS.dialog.getParentEditor().getData(),i.init(c),NS.div_overlay=new o({opacity:"0.95",background:"#fff url("+NS.loadIcon+") no-repeat 50% 50%",target:this.parts.tabs.getParent().$}),NS.div_overlay_no_check=new o({opacity:"1",id:"no_check_over",background:"#fff url("+NS.loadIconEmptyEditor+") no-repeat 50% 50%",target:this.parts.tabs.getParent().$});var e=CKEDITOR.document.getById("cke_dialog_tabs_"+(NS.CKNumber+1));e.setStyle("width","97%"),e.append(NS.buildSelectLang())},onShow:function(){NS.div_overlay.setDisable(),h(),""==NS.dialog.getParentEditor().getData()&&NS.div_overlay_no_check.setEnable()},onHide:function(){NS.dataTemp=null},contents:[{id:"SpellTab",label:"SpellChecker",accessKey:"S",elements:[{type:"html",id:"banner",label:"banner",html:"<div></div>"},{type:"html",id:"Content",label:"spellContent",html:"",onLoad:function(){var e=NS.iframeNumber+"_"+NS.dialog._.currentTabId,t=document.getElementById(e);NS.targetFromFrame[e]=t.contentWindow},onShow:function(){NS.dataTemp=NS.dialog.getParentEditor().getData(),NS.div_overlay.setEnable()}},{type:"hbox",id:"bottomGroup",widths:["50%","50%"],children:[{type:"hbox",id:"leftCol",align:"left",width:"50%",children:[{type:"vbox",id:"rightCol1",widths:["50%","50%"],children:[{type:"text",id:"text",label:NS.LocalizationLabel.ChangeTo.text+":",labelLayout:"horizontal",labelStyle:"font: 12px/25px arial, sans-serif;",width:"140px","default":"",onLoad:function(){NS.textNode.SpellTab=this,NS.LocalizationLabel.ChangeTo.instance=this},onHide:function(){this.reset()}},{type:"hbox",id:"rightCol",align:"right",width:"30%",children:[{type:"vbox",id:"rightCol_col__left",children:[{type:"text",id:"labelSuggestions",label:NS.LocalizationLabel.Suggestions.text+":",onLoad:function(){NS.LocalizationLabel.Suggestions.instance=this,this.getInputElement().hide()}},{type:"html",id:"logo",html:'<img width="99" height="68" border="0" src="" title="WebSpellChecker.net" alt="WebSpellChecker.net" style="display: inline-block;">',onShow:function(){this.getElement().$.src=NS.logotype,this.getElement().getParent().setStyles({"text-align":"left"})}}]},{type:"select",id:"list_of_suggestions",labelStyle:"font: 12px/25px arial, sans-serif;",size:"6",inputStyle:"width: 140px; height: auto;",items:[["loading..."]],onShow:function(){selectNode=this},onHide:function(){this.clear()},onChange:function(){NS.textNode.SpellTab.setValue(this.getValue())}}]}]}]},{type:"hbox",id:"rightCol",align:"right",width:"50%",children:[{type:"vbox",id:"rightCol_col__left",widths:["50%","50%","50%","50%"],children:[{type:"button",id:"ChangeTo",label:NS.LocalizationButton.ChangeTo.text,title:"Change to",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id),NS.LocalizationButton.ChangeTo.instance=this},onClick:u},{type:"button",id:"ChangeAll",label:NS.LocalizationButton.ChangeAll.text,title:"Change All",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id),NS.LocalizationButton.ChangeAll.instance=this},onClick:u},{type:"button",id:"AddWord",label:NS.LocalizationButton.AddWord.text,title:"Add word",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id),NS.LocalizationButton.AddWord.instance=this},onClick:u},{type:"button",id:"FinishChecking",label:NS.LocalizationButton.FinishChecking.text,title:"Finish Checking",style:"width: 100%;margin-top: 9px;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id),NS.LocalizationButton.FinishChecking.instance=this},onClick:u}]},{type:"vbox",id:"rightCol_col__right",widths:["50%","50%","50%"],children:[{type:"button",id:"IgnoreWord",label:NS.LocalizationButton.IgnoreWord.text,title:"Ignore word",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id),NS.LocalizationButton.IgnoreWord.instance=this},onClick:u},{type:"button",id:"IgnoreAllWords",label:NS.LocalizationButton.IgnoreAllWords.text,title:"Ignore all words",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id),NS.LocalizationButton.IgnoreAllWords.instance=this},onClick:u},{type:"button",id:"option",label:NS.LocalizationButton.Options.text,title:"Option",style:"width: 100%;",onLoad:function(){NS.LocalizationButton.Options.instance=this},onClick:function(){e.openDialog("options")}}]}]}]},{type:"hbox",id:"BlockFinishChecking",widths:["70%","30%"],onShow:function(){this.getElement().hide()},onHide:g,children:[{type:"hbox",id:"leftCol",align:"left",width:"70%",children:[{type:"vbox",id:"rightCol1",children:[{type:"html",id:"logo",html:'<img width="99" height="68" border="0" src="" title="WebSpellChecker.net" alt="WebSpellChecker.net" style="display: inline-block;">',onShow:function(){this.getElement().$.src=NS.logotype,this.getElement().getParent().setStyles({"text-align":"center"})}}]}]},{type:"hbox",id:"rightCol",align:"right",width:"30%",children:[{type:"vbox",id:"rightCol_col__left",children:[{type:"button",id:"Option_button",label:NS.LocalizationButton.Options.text,title:"Option",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:function(){e.openDialog("options")}},{type:"button",id:"FinishChecking",label:NS.LocalizationButton.FinishChecking.text,title:"Finish Checking",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u}]}]}]}]},{id:"GrammTab",label:"Grammar",accessKey:"G",elements:[{type:"html",id:"banner",label:"banner",html:"<div></div>"},{type:"html",id:"Content",label:"GrammarContent",html:"",onShow:function(){var e=NS.iframeNumber+"_"+NS.dialog._.currentTabId,t=document.getElementById(e);NS.targetFromFrame[e]=t.contentWindow}},{type:"vbox",id:"bottomGroup",children:[{type:"hbox",id:"leftCol",widths:["66%","34%"],children:[{type:"vbox",children:[{type:"text",id:"text",label:"Change to:",labelLayout:"horizontal",labelStyle:"font: 12px/25px arial, sans-serif; float: right;margin-right: 80px;",inputStyle:"",width:"200px","default":"",onLoad:function(){NS.textNode.GrammTab=this},onHide:function(){this.reset()}},{type:"html",id:"html_text",html:"<div style='min-height: 17px; width: 330px; line-height: 17px; padding: 5px; text-align: left;background: #F1F1F1;color: #595959; white-space: normal!important;'></div>",onLoad:function(){NS.textNodeInfo.GrammTab=this}},{type:"html",id:"radio",html:"",onLoad:function(){NS.grammerSuggest=this}}]},{type:"vbox",children:[{type:"button",id:"ChangeTo",label:"Change to",title:"Change to",style:"width: 133px; float: right;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u},{type:"button",id:"IgnoreWord",label:"Ignore word",title:"Ignore word",style:"width: 133px; float: right;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u},{type:"button",id:"IgnoreAllWords",label:"Ignore Problem",title:"Ignore Problem",style:"width: 133px; float: right;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u},{type:"button",id:"FinishChecking",label:"Finish Checking",title:"Finish Checking",style:"width: 133px; float: right; margin-top: 9px;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u}]}]}]},{type:"hbox",id:"BlockFinishChecking",widths:["70%","30%"],onShow:function(){this.getElement().hide()},onHide:g,children:[{type:"hbox",id:"leftCol",align:"left",width:"70%",children:[{type:"vbox",id:"rightCol1",children:[{type:"html",id:"logo",html:'<img width="99" height="68" border="0" src="" title="WebSpellChecker.net" alt="WebSpellChecker.net" style="display: inline-block;">',onShow:function(){this.getElement().$.src=NS.logotype,this.getElement().getParent().setStyles({"text-align":"center"})}}]}]},{type:"hbox",id:"rightCol",align:"right",width:"30%",children:[{type:"vbox",id:"rightCol_col__left",children:[{type:"button",id:"FinishChecking",label:"Finish Checking",title:"Finish Checking",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u}]}]}]}]},{id:"Thesaurus",label:"Thesaurus",accessKey:"T",elements:[{type:"html",id:"banner",label:"banner",html:"<div></div>"},{type:"html",id:"Content",label:"spellContent",html:"",onShow:function(){var e=NS.iframeNumber+"_"+NS.dialog._.currentTabId,t=document.getElementById(e);NS.targetFromFrame[e]=t.contentWindow}},{type:"vbox",id:"bottomGroup",children:[{type:"hbox",widths:["75%","25%"],children:[{type:"vbox",children:[{type:"hbox",widths:["65%","35%"],children:[{type:"text",id:"ChangeTo",label:"Change to:",labelLayout:"horizontal",inputStyle:"width: 160px;",labelStyle:"font: 12px/25px arial, sans-serif;","default":"",onLoad:function(){NS.textNode.Thesaurus=this},onHide:function(){this.reset()}},{type:"button",id:"ChangeTo",label:"Change to",title:"Change to",style:"width: 121px; margin-top: 1px;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u}]},{type:"hbox",children:[{type:"select",id:"categories",label:"Categories:",labelStyle:"font: 12px/25px arial, sans-serif;",size:"6",inputStyle:"width: 180px; height: auto;",items:[],onLoad:function(){NS.selectNode.categories=this},onHide:function(){this.clear()},onChange:function(){NS.buildOptionSynonyms(this.getValue())}},{type:"select",id:"synonyms",label:"Synonyms:",labelStyle:"font: 12px/25px arial, sans-serif;",size:"6",inputStyle:"width: 180px; height: auto;",items:[],onLoad:function(){NS.selectNode.synonyms=this},onShow:function(){NS.textNode.Thesaurus.setValue(this.getValue())},onHide:function(){this.clear()},onChange:function(){NS.textNode.Thesaurus.setValue(this.getValue())}}]}]},{type:"vbox",width:"120px",style:"margin-top:46px;",children:[{type:"html",id:"logotype",label:"WebSpellChecker.net",html:'<img width="99" height="68" border="0" src="" title="WebSpellChecker.net" alt="WebSpellChecker.net" style="display: inline-block;">',onShow:function(){this.getElement().$.src=NS.logotype,this.getElement().getParent().setStyles({"text-align":"center"})}},{type:"button",id:"FinishChecking",label:"Finish Checking",title:"Finish Checking",style:"width: 121px; float: right; margin-top: 9px;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u}]}]}]},{type:"hbox",id:"BlockFinishChecking",widths:["70%","30%"],onShow:function(){this.getElement().hide()},onHide:g,children:[{type:"hbox",id:"leftCol",align:"left",width:"70%",children:[{type:"vbox",id:"rightCol1",children:[{type:"html",id:"logo",html:'<img width="99" height="68" border="0" src="" title="WebSpellChecker.net" alt="WebSpellChecker.net" style="display: inline-block;">',onShow:function(){this.getElement().$.src=NS.logotype,this.getElement().getParent().setStyles({"text-align":"center"})}}]}]},{type:"hbox",id:"rightCol",align:"right",width:"30%",children:[{type:"vbox",id:"rightCol_col__left",children:[{type:"button",id:"FinishChecking",label:"Finish Checking",title:"Finish Checking",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onClick:u}]}]}]}]}]}}),CKEDITOR.dialog.add("options",function(){var e=new ManagerPostMessage,t=null,a={},n={},i=null,o=null;tools.getCookie("udn"),tools.getCookie("osp");var r=function(){o=this.getElement().getAttribute("title-cmd");var t=[];t[0]=n.IgnoreAllCapsWords,t[1]=n.IgnoreWordsNumbers,t[2]=n.IgnoreMixedCaseWords,t[3]=n.IgnoreDomainNames,t=t.toString().replace(/,/g,""),tools.setCookie("osp",t),tools.setCookie("udnCmd",o?o:"ignore"),"delete"!=o&&tools.setCookie("udn",""==nameNode.getValue()?"":nameNode.getValue()),e.send({id:"options_dic_send"})},l=function(){i.getElement().setHtml(NS.LocalizationComing.error),i.getElement().show()};return{title:NS.LocalizationComing.Options,minWidth:430,minHeight:130,resizable:CKEDITOR.DIALOG_RESIZE_NONE,contents:[{id:"OptionsTab",label:"Options",accessKey:"O",elements:[{type:"hbox",id:"options_error",children:[{type:"html",style:"display: block;text-align: center;white-space: normal!important; font-size: 12px;color:red",html:"<div></div>",onShow:function(){i=this}}]},{type:"vbox",id:"Options_content",children:[{type:"hbox",id:"Options_manager",widths:["52%","48%"],children:[{type:"fieldset",label:"Spell Checking Options",style:"border: none;margin-top: 13px;padding: 10px 0 10px 10px",onShow:function(){this.getInputElement().$.children[0].innerHTML=NS.LocalizationComing.SpellCheckingOptions},children:[{type:"vbox",id:"Options_checkbox",children:[{type:"checkbox",id:"IgnoreAllCapsWords",label:"Ignore All-Caps Words",labelStyle:"margin-left: 5px; font: 12px/16px arial, sans-serif;display: inline-block;white-space: normal;",style:"float:left; min-height: 16px;","default":"",onClick:function(){n[this.id]=0==this.getValue()?0:1}},{type:"checkbox",id:"IgnoreWordsNumbers",label:"Ignore Words with Numbers",labelStyle:"margin-left: 5px; font: 12px/16px arial, sans-serif;display: inline-block;white-space: normal;",style:"float:left; min-height: 16px;","default":"",onClick:function(){n[this.id]=0==this.getValue()?0:1}},{type:"checkbox",id:"IgnoreMixedCaseWords",label:"Ignore Mixed-Case Words",labelStyle:"margin-left: 5px; font: 12px/16px arial, sans-serif;display: inline-block;white-space: normal;",style:"float:left; min-height: 16px;","default":"",onClick:function(){n[this.id]=0==this.getValue()?0:1}},{type:"checkbox",id:"IgnoreDomainNames",label:"Ignore Domain Names",labelStyle:"margin-left: 5px; font: 12px/16px arial, sans-serif;display: inline-block;white-space: normal;",style:"float:left; min-height: 16px;","default":"",onClick:function(){n[this.id]=0==this.getValue()?0:1}}]}]},{type:"vbox",id:"Options_DictionaryName",children:[{type:"text",id:"DictionaryName",style:"margin-bottom: 10px",label:"Dictionary Name:",labelLayout:"vertical",labelStyle:"font: 12px/25px arial, sans-serif;","default":"",onLoad:function(){nameNode=this,this.setValue(NS.userDictionaryName?NS.userDictionaryName:(tools.getCookie("udn"),this.getValue()))},onShow:function(){nameNode=this,this.setValue(tools.getCookie("udn")?tools.getCookie("udn"):this.getValue()),this.setLabel(NS.LocalizationComing.DictionaryName)},onHide:function(){this.reset()}},{type:"hbox",id:"Options_buttons",children:[{type:"vbox",id:"Options_leftCol_col",widths:["50%","50%"],children:[{type:"button",id:"create",label:"Create",title:"Create",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onShow:function(){this.getElement().setText(NS.LocalizationComing.Create)},onClick:r},{type:"button",id:"restore",label:"Restore",title:"Restore",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onShow:function(){this.getElement().setText(NS.LocalizationComing.Restore)},onClick:r}]},{type:"vbox",id:"Options_rightCol_col",widths:["50%","50%"],children:[{type:"button",id:"rename",label:"Rename",title:"Rename",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onShow:function(){this.getElement().setText(NS.LocalizationComing.Rename)},onClick:r},{type:"button",id:"delete",label:"Remove",title:"Remove",style:"width: 100%;",onLoad:function(){this.getElement().setAttribute("title-cmd",this.id)},onShow:function(){this.getElement().setText(NS.LocalizationComing.Remove)},onClick:r}]}]}]}]},{type:"hbox",id:"Options_text",children:[{type:"html",style:"text-align: justify;margin-top: 15px;white-space: normal!important; font-size: 12px;color:#777;",html:"<div>"+NS.LocalizationComing.OptionsTextIntro+"</div>",onShow:function(){this.getElement().setText(NS.LocalizationComing.OptionsTextIntro)}}]}]}]}],buttons:[CKEDITOR.dialog.okButton,CKEDITOR.dialog.cancelButton],onOk:function(){var t=[];t[0]=n.IgnoreAllCapsWords,t[1]=n.IgnoreWordsNumbers,t[2]=n.IgnoreMixedCaseWords,t[3]=n.IgnoreDomainNames,t=t.toString().replace(/,/g,""),tools.setCookie("osp",t),tools.setCookie("udn",nameNode.getValue()),e.send({id:"options_checkbox_send"}),i.getElement().hide(),i.getElement().setHtml(" ")},onLoad:function(){t=this,e.init(l),a.IgnoreAllCapsWords=t.getContentElement("OptionsTab","IgnoreAllCapsWords"),a.IgnoreWordsNumbers=t.getContentElement("OptionsTab","IgnoreWordsNumbers"),a.IgnoreMixedCaseWords=t.getContentElement("OptionsTab","IgnoreMixedCaseWords"),a.IgnoreDomainNames=t.getContentElement("OptionsTab","IgnoreDomainNames")},onShow:function(){strToArr=tools.getCookie("osp").split(""),n.IgnoreAllCapsWords=strToArr[0],n.IgnoreWordsNumbers=strToArr[1],n.IgnoreMixedCaseWords=strToArr[2],n.IgnoreDomainNames=strToArr[3],0==n.IgnoreAllCapsWords?a.IgnoreAllCapsWords.setValue("",!1):a.IgnoreAllCapsWords.setValue("checked",!1),0==n.IgnoreWordsNumbers?a.IgnoreWordsNumbers.setValue("",!1):a.IgnoreWordsNumbers.setValue("checked",!1),0==n.IgnoreMixedCaseWords?a.IgnoreMixedCaseWords.setValue("",!1):a.IgnoreMixedCaseWords.setValue("checked",!1),0==n.IgnoreDomainNames?a.IgnoreDomainNames.setValue("",!1):a.IgnoreDomainNames.setValue("checked",!1),n.IgnoreAllCapsWords=0==a.IgnoreAllCapsWords.getValue()?0:1,n.IgnoreWordsNumbers=0==a.IgnoreWordsNumbers.getValue()?0:1,n.IgnoreMixedCaseWords=0==a.IgnoreMixedCaseWords.getValue()?0:1,n.IgnoreDomainNames=0==a.IgnoreDomainNames.getValue()?0:1,a.IgnoreAllCapsWords.getElement().$.lastChild.innerHTML=NS.LocalizationComing.IgnoreAllCapsWords,a.IgnoreWordsNumbers.getElement().$.lastChild.innerHTML=NS.LocalizationComing.IgnoreWordsWithNumbers,a.IgnoreMixedCaseWords.getElement().$.lastChild.innerHTML=NS.LocalizationComing.IgnoreMixedCaseWords,a.IgnoreDomainNames.getElement().$.lastChild.innerHTML=NS.LocalizationComing.IgnoreDomainNames}}});
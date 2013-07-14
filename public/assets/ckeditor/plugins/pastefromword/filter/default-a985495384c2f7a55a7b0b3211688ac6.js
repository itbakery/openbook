/*
 Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
*/
!function(){function e(e){for(var e=e.toUpperCase(),t=s.length,a=0,i=0;t>i;++i)for(var n=s[i],o=n[1].length;e.substr(0,o)==n[1];e=e.substr(o))a+=n[0];return a}function t(e){for(var e=e.toUpperCase(),t=d.length,a=1,i=1;0<e.length;i*=t)a+=d.indexOf(e.charAt(e.length-1))*i,e=e.substr(0,e.length-1);return a}var a=CKEDITOR.htmlParser.fragment.prototype,i=CKEDITOR.htmlParser.element.prototype;a.onlyChild=i.onlyChild=function(){var e=this.children;return 1==e.length&&e[0]||null},i.removeAnyChildWithName=function(e){for(var t,a=this.children,i=[],n=0;n<a.length;n++)t=a[n],t.name&&(t.name==e&&(i.push(t),a.splice(n--,1)),i=i.concat(t.removeAnyChildWithName(e)));return i},i.getAncestor=function(e){for(var t=this.parent;t&&(!t.name||!t.name.match(e));)t=t.parent;return t},a.firstChild=i.firstChild=function(e){for(var t,a=0;a<this.children.length;a++)if(t=this.children[a],e(t)||t.name&&(t=t.firstChild(e)))return t;return null},i.addStyle=function(e,t,a){var i="";if("string"==typeof t)i+=e+":"+t+";";else{if("object"==typeof e)for(var n in e)e.hasOwnProperty(n)&&(i+=n+":"+e[n]+";");else i+=e;a=t}this.attributes||(this.attributes={}),e=this.attributes.style||"",e=(a?[i,e]:[e,i]).join(";"),this.attributes.style=e.replace(/^;|;(?=;)/,"")},i.getStyle=function(e){var t=this.attributes.style;return t?(t=CKEDITOR.tools.parseCssText(t,1),t[e]):void 0},CKEDITOR.dtd.parentOf=function(e){var t,a={};for(t in this)-1==t.indexOf("$")&&this[t][e]&&(a[t]=1);return a};var n,o=/^([.\d]*)+(em|ex|px|gd|rem|vw|vh|vm|ch|mm|cm|in|pt|pc|deg|rad|ms|s|hz|khz){1}?/i,r=/^(?:\b0[^\s]*\s*){1,4}$/,l={ol:{decimal:/\d+/,"lower-roman":/^m{0,4}(cm|cd|d?c{0,3})(xc|xl|l?x{0,3})(ix|iv|v?i{0,3})$/,"upper-roman":/^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/,"lower-alpha":/^[a-z]+$/,"upper-alpha":/^[A-Z]+$/},ul:{disc:/[l\u00B7\u2002]/,circle:/[\u006F\u00D8]/,square:/[\u006E\u25C6]/}},s=[[1e3,"M"],[900,"CM"],[500,"D"],[400,"CD"],[100,"C"],[90,"XC"],[50,"L"],[40,"XL"],[10,"X"],[9,"IX"],[5,"V"],[4,"IV"],[1,"I"]],d="ABCDEFGHIJKLMNOPQRSTUVWXYZ",c=0,u=null,m=CKEDITOR.plugins.pastefromword={utils:{createListBulletMarker:function(e,t){var a=new CKEDITOR.htmlParser.element("cke:listbullet");return a.attributes={"cke:listsymbol":e[0]},a.add(new CKEDITOR.htmlParser.text(t)),a},isListBulletIndicator:function(e){return/mso-list\s*:\s*Ignore/i.test(e.attributes&&e.attributes.style)?!0:void 0},isContainingOnlySpaces:function(e){var t;return(t=e.onlyChild())&&/^(:?\s|&nbsp;)+$/.test(t.value)},resolveList:function(e){var t,a=e.attributes;return(t=e.removeAnyChildWithName("cke:listbullet"))&&t.length&&(t=t[0])?(e.name="cke:li",a.style&&(a.style=m.filters.stylesFilter([["text-indent"],["line-height"],[/^margin(:?-left)?$/,null,function(e){e=e.split(" "),e=CKEDITOR.tools.convertToPx(e[3]||e[1]||e[0]),!c&&null!==u&&e>u&&(c=e-u),u=e,a["cke:indent"]=c&&Math.ceil(e/c)+1||1}],[/^mso-list$/,null,function(e){var e=e.split(" "),t=Number(e[0].match(/\d+/)),e=Number(e[1].match(/\d+/));1==e&&(t!==n&&(a["cke:reset"]=1),n=t),a["cke:indent"]=e}]])(a.style,e)||""),a["cke:indent"]||(u=0,a["cke:indent"]=1),CKEDITOR.tools.extend(a,t.attributes),!0):(n=u=c=null,!1)},getStyleComponents:function(){var e=CKEDITOR.dom.element.createFromHtml('<div style="position:absolute;left:-9999px;top:-9999px;"></div>',CKEDITOR.document);return CKEDITOR.document.getBody().append(e),function(t,a,i){e.setStyle(t,a);for(var t={},a=i.length,n=0;a>n;n++)t[i[n]]=e.getStyle(i[n]);return t}}(),listDtdParents:CKEDITOR.dtd.parentOf("ol")},filters:{flattenList:function(e,t){var a,t="number"==typeof t?t:1,i=e.attributes;switch(i.type){case"a":a="lower-alpha";break;case"1":a="decimal"}for(var r,l=e.children,s=0;s<l.length;s++)if(r=l[s],r.name in CKEDITOR.dtd.$listItem){var d=r.attributes,c=r.children,p=c[c.length-1];p.name in CKEDITOR.dtd.$list&&(e.add(p,s+1),--c.length||l.splice(s--,1)),r.name="cke:li",i.start&&!s&&(d.value=i.start),m.filters.stylesFilter([["tab-stops",null,function(e){(e=e.split(" ")[1].match(o))&&(u=CKEDITOR.tools.convertToPx(e[0]))}],1==t?["mso-list",null,function(e){e=e.split(" "),e=Number(e[0].match(/\d+/)),e!==n&&(d["cke:reset"]=1),n=e}]:null])(d.style),d["cke:indent"]=t,d["cke:listtype"]=e.name,d["cke:list-style-type"]=a}else if(r.name in CKEDITOR.dtd.$list)for(arguments.callee.apply(this,[r,t+1]),l=l.slice(0,s).concat(r.children).concat(l.slice(s+1)),e.children=[],r=0,c=l.length;c>r;r++)e.add(l[r]);delete e.name,i["cke:list"]=1},assembleList:function(a){for(var i,o,r,s,d,m,p,h,g,f,b,v,T=a.children,a=[],E=0;E<T.length;E++)if(i=T[E],"cke:li"==i.name)if(i.name="li",o=i.attributes,g=(g=o["cke:listsymbol"])&&g.match(/^(?:[(]?)([^\s]+?)([.)]?)$/),f=b=v=null,o["cke:ignored"])T.splice(E--,1);else{if(o["cke:reset"]&&(m=s=d=null),r=Number(o["cke:indent"]),r!=s&&(h=p=null),g){if(h&&l[h][p].test(g[1]))f=h,b=p;else for(var C in l)for(var y in l[C])if(l[C][y].test(g[1])){if("ol"!=C||!/alpha|roman/.test(y)){f=C,b=y;break}p=/roman/.test(y)?e(g[1]):t(g[1]),(!v||v>p)&&(v=p,f=C,b=y)}!f&&(f=g[2]?"ol":"ul")}else f=o["cke:listtype"]||"ol",b=o["cke:list-style-type"];if(h=f,p=b||("ol"==f?"decimal":"disc"),b&&b!=("ol"==f?"decimal":"disc")&&i.addStyle("list-style-type",b),"ol"==f&&g){switch(b){case"decimal":v=Number(g[1]);break;case"lower-roman":case"upper-roman":v=e(g[1]);break;case"lower-alpha":case"upper-alpha":v=t(g[1])}i.attributes.value=v}if(m){if(r>s)a.push(m=new CKEDITOR.htmlParser.element(f)),m.add(i),d.add(m);else{if(s>r){s-=r;for(var k;s--&&(k=m.parent);)m=k.parent}m.add(i)}T.splice(E--,1)}else a.push(m=new CKEDITOR.htmlParser.element(f)),m.add(i),T[E]=m;d=i,s=r}else m&&(m=s=d=null);for(E=0;E<a.length;E++)if(m=a[E],C=m.children,p=p=void 0,y=m.children.length,k=p=void 0,T=/list-style-type:(.*?)(?:;|$)/,s=CKEDITOR.plugins.pastefromword.filters.stylesFilter,p=m.attributes,!T.exec(p.style)){for(d=0;y>d;d++)if(p=C[d],p.attributes.value&&Number(p.attributes.value)==d+1&&delete p.attributes.value,p=T.exec(p.attributes.style)){if(p[1]!=k&&k){k=null;break}k=p[1]}if(k){for(d=0;y>d;d++)p=C[d].attributes,p.style&&(p.style=s([["list-style-type"]])(p.style)||"");m.addStyle("list-style-type",k)}}n=u=c=null},falsyFilter:function(){return!1},stylesFilter:function(e,t){return function(a,i){var n=[];(a||"").replace(/&quot;/g,'"').replace(/\s*([^ :;]+)\s*:\s*([^;]+)\s*(?=;|$)/g,function(a,o,r){o=o.toLowerCase(),"font-family"==o&&(r=r.replace(/["']/g,""));for(var l,s,d,c=0;c<e.length;c++)if(e[c]&&(a=e[c][0],l=e[c][1],s=e[c][2],d=e[c][3],o.match(a)&&(!l||r.match(l))))return o=d||o,t&&(s=s||r),"function"==typeof s&&(s=s(r,i,o)),s&&s.push&&(o=s[0],s=s[1]),"string"==typeof s&&n.push([o,s]),void 0;!t&&n.push([o,r])});for(var o=0;o<n.length;o++)n[o]=n[o].join(":");return n.length?n.join(";")+";":!1}},elementMigrateFilter:function(e,t){return e?function(a){var i=t?new CKEDITOR.style(e,t)._.definition:e;a.name=i.element,CKEDITOR.tools.extend(a.attributes,CKEDITOR.tools.clone(i.attributes)),a.addStyle(CKEDITOR.style.getStyleText(i))}:function(){}},styleMigrateFilter:function(e,t){var a=this.elementMigrateFilter;return e?function(i,n){var o=new CKEDITOR.htmlParser.element(null),r={};r[t]=i,a(e,r)(o),o.children=n.children,n.children=[o]}:function(){}},bogusAttrFilter:function(e,t){return-1==t.name.indexOf("cke:")?!1:void 0},applyStyleFilter:null},getRules:function(e,t){var a=CKEDITOR.dtd,i=CKEDITOR.tools.extend({},a.$block,a.$listItem,a.$tableContent),n=e.config,o=this.filters,l=o.falsyFilter,s=o.stylesFilter,d=o.elementMigrateFilter,c=CKEDITOR.tools.bind(this.filters.styleMigrateFilter,this.filters),u=this.utils.createListBulletMarker,m=o.flattenList,p=o.assembleList,h=this.utils.isListBulletIndicator,g=this.utils.isContainingOnlySpaces,f=this.utils.resolveList,b=function(e){return e=CKEDITOR.tools.convertToPx(e),isNaN(e)?e:e+"px"},v=this.utils.getStyleComponents,T=this.utils.listDtdParents,E=!1!==n.pasteFromWordRemoveFontStyles,C=!1!==n.pasteFromWordRemoveStyles;return{elementNames:[[/meta|link|script/,""]],root:function(e){e.filterChildren(t),p(e)},elements:{"^":function(e){var t;CKEDITOR.env.gecko&&(t=o.applyStyleFilter)&&t(e)},$:function(e){var o=e.name||"",r=e.attributes;if(o in i&&r.style&&(r.style=s([[/^(:?width|height)$/,null,b]])(r.style)||""),o.match(/h\d/)){if(e.filterChildren(t),f(e))return;d(n["format_"+o])(e)}else if(o in a.$inline)e.filterChildren(t),g(e)&&delete e.name;else if(-1!=o.indexOf(":")&&-1==o.indexOf("cke")){if(e.filterChildren(t),"v:imagedata"==o)return(o=e.attributes["o:href"])&&(e.attributes.src=o),e.name="img",void 0;delete e.name}o in T&&(e.filterChildren(t),p(e))},style:function(e){if(CKEDITOR.env.gecko){var e=(e=e.onlyChild().value.match(/\/\* Style Definitions \*\/([\s\S]*?)\/\*/))&&e[1],t={};e&&(e.replace(/[\n\r]/g,"").replace(/(.+?)\{(.+?)\}/g,function(e,a,i){for(var a=a.split(","),e=a.length,n=0;e>n;n++)CKEDITOR.tools.trim(a[n]).replace(/^(\w+)(\.[\w-]+)?$/g,function(e,a,n){a=a||"*",n=n.substring(1,n.length),n.match(/MsoNormal/)||(t[a]||(t[a]={}),n?t[a][n]=i:t[a]=i)})}),o.applyStyleFilter=function(e){var a=t["*"]?"*":e.name,i=e.attributes&&e.attributes["class"];a in t&&(a=t[a],"object"==typeof a&&(a=a[i]),a&&e.addStyle(a,!0))})}return!1},p:function(e){if(/MsoListParagraph/i.exec(e.attributes["class"])||e.getStyle("mso-list")){var a=e.firstChild(function(e){return e.type==CKEDITOR.NODE_TEXT&&!g(e.parent)});(a=a&&a.parent)&&a.addStyle("mso-list","Ignore")}e.filterChildren(t),f(e)||(n.enterMode==CKEDITOR.ENTER_BR?(delete e.name,e.add(new CKEDITOR.htmlParser.element("br"))):d(n["format_"+(n.enterMode==CKEDITOR.ENTER_P?"p":"div")])(e))},div:function(e){var t=e.onlyChild();if(t&&"table"==t.name){var a=e.attributes;t.attributes=CKEDITOR.tools.extend(t.attributes,a),a.style&&t.addStyle(a.style),t=new CKEDITOR.htmlParser.element("div"),t.addStyle("clear","both"),e.add(t),delete e.name}},td:function(e){e.getAncestor("thead")&&(e.name="th")},ol:m,ul:m,dl:m,font:function(e){if(h(e.parent))delete e.name;else{e.filterChildren(t);var a=e.attributes,i=a.style,n=e.parent;"font"==n.name?(CKEDITOR.tools.extend(n.attributes,e.attributes),i&&n.addStyle(i),delete e.name):(i=i||"",a.color&&("#000000"!=a.color&&(i+="color:"+a.color+";"),delete a.color),a.face&&(i+="font-family:"+a.face+";",delete a.face),a.size&&(i+="font-size:"+(3<a.size?"large":3>a.size?"small":"medium")+";",delete a.size),e.name="span",e.addStyle(i))}},span:function(e){if(h(e.parent))return!1;if(e.filterChildren(t),g(e))return delete e.name,null;if(h(e)){var a=e.firstChild(function(e){return e.value||"img"==e.name}),i=(a=a&&(a.value||"l."))&&a.match(/^(?:[(]?)([^\s]+?)([.)]?)$/);if(i)return a=u(i,a),(e=e.getAncestor("span"))&&/ mso-hide:\s*all|display:\s*none /.test(e.attributes.style)&&(a.attributes["cke:ignored"]=1),a}return(i=(a=e.attributes)&&a.style)&&(a.style=s([["line-height"],[/^font-family$/,null,E?null:c(n.font_style,"family")],[/^font-size$/,null,E?null:c(n.fontSize_style,"size")],[/^color$/,null,E?null:c(n.colorButton_foreStyle,"color")],[/^background-color$/,null,E?null:c(n.colorButton_backStyle,"color")]])(i,e)||""),a.style||delete a.style,CKEDITOR.tools.isEmpty(a)&&delete e.name,null},b:d(n.coreStyles_bold),i:d(n.coreStyles_italic),u:d(n.coreStyles_underline),s:d(n.coreStyles_strike),sup:d(n.coreStyles_superscript),sub:d(n.coreStyles_subscript),a:function(e){var t=e.attributes;t&&!t.href&&t.name?delete e.name:CKEDITOR.env.webkit&&t.href&&t.href.match(/file:\/\/\/[\S]+#/i)&&(t.href=t.href.replace(/file:\/\/\/[^#]+/i,""))},"cke:listbullet":function(e){e.getAncestor(/h\d/)&&!n.pasteFromWordNumberedHeadingToList&&delete e.name}},attributeNames:[[/^onmouse(:?out|over)/,""],[/^onload$/,""],[/(?:v|o):\w+/,""],[/^lang/,""]],attributes:{style:s(C?[[/^list-style-type$/,null],[/^margin$|^margin-(?!bottom|top)/,null,function(e,t,a){if(t.name in{p:1,div:1}){if(t="ltr"==n.contentsLangDirection?"margin-left":"margin-right","margin"==a)e=v(a,e,[t])[t];else if(a!=t)return null;if(e&&!r.test(e))return[t,e]}return null}],[/^clear$/],[/^border.*|margin.*|vertical-align|float$/,null,function(e,t){return"img"==t.name?e:void 0}],[/^width|height$/,null,function(e,t){return t.name in{table:1,td:1,th:1,img:1}?e:void 0}]]:[[/^mso-/],[/-color$/,null,function(e){return"transparent"==e?!1:CKEDITOR.env.gecko?e.replace(/-moz-use-text-color/g,"transparent"):void 0}],[/^margin$/,r],["text-indent","0cm"],["page-break-before"],["tab-stops"],["display","none"],E?[/font-?/]:null],C),width:function(e,t){return t.name in a.$tableContent?!1:void 0},border:function(e,t){return t.name in a.$tableContent?!1:void 0},"class":l,bgcolor:l,valign:C?l:function(e,t){return t.addStyle("vertical-align",e),!1}},comment:CKEDITOR.env.ie?l:function(e,t){var a=e.match(/<img.*?>/),i=e.match(/^\[if !supportLists\]([\s\S]*?)\[endif\]$/);return i?(i=(a=i[1]||a&&"l.")&&a.match(/>(?:[(]?)([^\s]+?)([.)]?)</),u(i,a)):CKEDITOR.env.gecko&&a?(a=CKEDITOR.htmlParser.fragment.fromHtml(a[0]).children[0],(i=(i=(i=t.previous)&&i.value.match(/<v:imagedata[^>]*o:href=['"](.*?)['"]/))&&i[1])&&(a.attributes.src=i),a):!1}}}},p=function(){this.dataFilter=new CKEDITOR.htmlParser.filter};p.prototype={toHtml:function(e){var e=CKEDITOR.htmlParser.fragment.fromHtml(e),t=new CKEDITOR.htmlParser.basicWriter;return e.writeHtml(t,this.dataFilter),t.getHtml(!0)}},CKEDITOR.cleanWord=function(e,t){CKEDITOR.env.gecko&&(e=e.replace(/(<\!--\[if[^<]*?\])--\>([\S\s]*?)<\!--(\[endif\]--\>)/gi,"$1$2$3")),CKEDITOR.env.webkit&&(e=e.replace(/(class="MsoListParagraph[^>]+><\!--\[if !supportLists\]--\>)([^<]+<span[^<]+<\/span>)(<\!--\[endif\]--\>)/gi,"$1<span>$2</span>$3"));var a=new p,i=a.dataFilter;i.addRules(CKEDITOR.plugins.pastefromword.getRules(t,i)),t.fire("beforeCleanWord",{filter:i});try{e=a.toHtml(e)}catch(n){alert(t.lang.pastefromword.error)}return e=e.replace(/cke:.*?".*?"/g,""),e=e.replace(/style=""/g,""),e=e.replace(/<span>/g,"")}}();
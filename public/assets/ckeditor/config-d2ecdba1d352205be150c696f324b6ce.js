/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.editorConfig=function(e){e.filebrowserBrowseUrl="/ckeditor/attachment_files",e.filebrowserFlashBrowseUrl="/ckeditor/attachment_files",e.filebrowserFlashUploadUrl="/ckeditor/attachment_files",e.filebrowserImageBrowseLinkUrl="/ckeditor/pictures",e.filebrowserImageBrowseUrl="/ckeditor/pictures",e.filebrowserImageUploadUrl="/ckeditor/pictures",e.filebrowserUploadUrl="/ckeditor/attachment_files",e.filebrowserParams=function(){for(var e,t,n,a=document.getElementsByTagName("meta"),i=new Object,o=0;o<a.length;o++)switch(n=a[o],n.name){case"csrf-token":e=n.content;break;case"csrf-param":t=n.content;break;default:continue}return void 0!==t&&void 0!==e&&(i[t]=e),i},e.addQueryString=function(e,t){var n=[];if(!t)return e;for(var a in t)n.push(a+"="+encodeURIComponent(t[a]));return e+(-1!=e.indexOf("?")?"&":"?")+n.join("&")},CKEDITOR.on("dialogDefinition",function(t){var n,a,i=t.data.name,o=t.data.definition;CKEDITOR.tools.indexOf(["link","image","attachment","flash"],i)>-1&&(n=o.getContents("Upload")||o.getContents("upload"),a=null==n?null:n.get("upload"),a&&a.filebrowser&&void 0===a.filebrowser.params&&(a.filebrowser.params=e.filebrowserParams(),a.action=e.addQueryString(a.action,a.filebrowser.params)))})};
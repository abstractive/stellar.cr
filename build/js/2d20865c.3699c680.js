(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["2d20865c"],{a52d:function(t,e,s){"use strict";s.r(e);var n=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("q-layout",{attrs:{view:"lHr LpR lFr"}},[s("stellar-header"),s("stellar-drawer-landing"),s("stellar-footer"),s("stellar-signin"),s("q-page-container",[s("router-view")],1)],1)},a=[],o=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("q-header",[s("q-toolbar",{attrs:{color:"primary"}},[s("q-btn",{attrs:{flat:"",dense:"",round:"","aria-label":"Navigation"},on:{click:t.toggleDrawer}},[s("q-icon",{attrs:{name:"fas fa-angle-up"}})],1),s("q-toolbar-title",[s("a",{staticClass:"cursor-pointer",on:{click:function(e){return t.$router.push("/")}}},[t._v("Stellar")])])],1)],1)},r=[],i=s("b06b"),l={methods:{openURL:i["a"],toggleDrawer:function(){this.$store.dispatch("toggleDrawer")}}},c=l,u=s("2877"),d=s("fe09"),p=Object(u["a"])(c,o,r,!1,null,null,null),f=p.exports;p.options.components=Object.assign({QHeader:d["h"],QToolbar:d["r"],QBtn:d["b"],QIcon:d["i"],QToolbarTitle:d["s"]},p.options.components||{});var h=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("q-drawer",{attrs:{elevated:"","content-class":"bg-grey-2"},on:{hide:t.hideDrawer},model:{value:t.showDrawer,callback:function(e){t.showDrawer=e},expression:"showDrawer"}},[s("q-list",{staticClass:"fit q-pt-md",attrs:{highlight:"",link:""}},[s("q-item",{staticClass:"q-mb-sm",attrs:{clickable:"",to:"/contribute"}},[s("q-item-section",{attrs:{side:"",avatar:""}},[s("q-icon",{attrs:{name:"fas fa-fist-raised"}})],1),s("q-item-section",[t._v("Contribute")])],1),s("q-item",{staticClass:"q-my-sm",attrs:{clickable:""},nativeOn:{click:function(e){return t.revealSignIn(e)}}},[s("q-item-section",{attrs:{side:"",avatar:""}},[s("q-icon",{attrs:{name:"fas fa-sign-in-alt"}})],1),s("q-item-section",[t._v("Sign In")])],1),s("stellar-drawer-information")],1)],1)],1)},m=[],w={data:function(){return{show_signin:!1}},methods:{revealSignIn:function(){this.$store.dispatch("showSignIn")},hideDrawer:function(){this.$store.dispatch("hideDrawer")}},computed:{showDrawer:function(){return this.$store.state.showDrawer},showSignIn:function(){return this.$store.state.showSignIn}}},g=w,b=Object(u["a"])(g,h,m,!1,null,null,null),q=b.exports;b.options.components=Object.assign({QDrawer:d["f"],QList:d["n"],QItem:d["k"],QItemSection:d["l"],QIcon:d["i"]},b.options.components||{});var v=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("q-footer",[s("q-toolbar",{attrs:{color:"secondary"}},[s("q-toolbar-title",{staticClass:"text-right"},[s("a",{staticClass:"cursor-pointer",on:{click:function(e){return t.$router.push("/about")}}},[t._v("abstractive labs")]),t._v(" ©\n    ")])],1)],1)},y=[],S={methods:{openURL:i["a"]}},k=S,x=Object(u["a"])(k,v,y,!1,null,null,null),C=x.exports;x.options.components=Object.assign({QFooter:d["g"],QToolbar:d["r"],QToolbarTitle:d["s"]},x.options.components||{});var Q=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("q-dialog",{attrs:{persistent:"","transition-show":"flip-down","transition-hide":"flip-up"},on:{hide:t.onClose},model:{value:t.showSignIn,callback:function(e){t.showSignIn=e},expression:"showSignIn"}},[s("q-card",{staticClass:"bg-secondary text-white q-pb-none q-mb-none",staticStyle:{width:"500px"}},[s("q-card-section",{staticClass:"q-mt-sm q-px-lg"},[s("q-input",{ref:"accessor",attrs:{clearable:"",filled:"",dark:"",outlined:"",type:"email",standout:"text-white",rules:[function(t){return!!t||"Email address is required"}],placeholder:"Email Address"},scopedSlots:t._u([{key:"append",fn:function(){return[s("q-avatar",[s("q-icon",{attrs:{name:"fas fa-at"}})],1)]},proxy:!0}]),model:{value:t.accessor,callback:function(e){t.accessor=e},expression:"accessor"}})],1),s("q-card-section",{staticClass:"q-px-lg q-pt-none q-mt-none"},[s("q-input",{ref:"password",attrs:{filled:"",clearable:"",dark:"",outlined:"",standout:"text-white",rules:[function(t){return!!t||"Password is required"}],type:t.hidePassword?"password":"text",placeholder:"Password"},scopedSlots:t._u([{key:"append",fn:function(){return[s("q-icon",{staticClass:"cursor-pointer q-ml-sm",attrs:{name:t.hidePassword?"fas fa-eye-slash":"fas fa-eye"},on:{click:function(e){t.hidePassword=!t.hidePassword}}}),s("q-avatar",[s("q-icon",{attrs:{name:"fas fa-key"}})],1)]},proxy:!0}]),model:{value:t.password,callback:function(e){t.password=e},expression:"password"}})],1),s("q-card-section",{staticClass:"q-pa-lg"},[s("q-btn",{staticClass:"full-width",attrs:{"icon-right":"fas fa-sign-in-alt",label:"Sign In",type:"submit",color:"primary",size:"lg"},on:{click:t.onSubmit}}),s("q-btn",{staticClass:"q-mt-md full-width q-pb-none q-mb-none",attrs:{label:"Cancel",type:"cancel",color:"primary",flat:""},on:{click:t.onClose}})],1)],1)],1)},I=[],$={data:function(){return{accessor:"",password:"",hidePassword:!0}},computed:{showSignIn:function(){return this.$store.state.showSignIn}},methods:{onClose:function(){this.$store.dispatch("hideSignIn")},onSubmit:function(){var t=this,e={accessor:this.accessor,password:this.password};this.$axios.post("/participant/authenticate",e).then((function(e){t.$q.notify({color:"positive",position:"top",message:"Coming Soon",icon:"fas fa-exclamation-circle"})})).catch((function(){t.$q.notify({color:"negative",position:"top",message:"Sign In Error",icon:"fas fa-exclamation-triangle"})}))},onReset:function(){this.accessor="",this.password="",this.$refs.accessor.resetValidation(),this.$refs.password.resetValidation()}}},_=$,D=Object(u["a"])(_,Q,I,!1,null,null,null),j=D.exports;D.options.components=Object.assign({QDialog:d["e"],QCard:d["c"],QCardSection:d["d"],QInput:d["j"],QAvatar:d["a"],QIcon:d["i"],QBtn:d["b"]},D.options.components||{});var O={name:"Landing",components:{"stellar-header":f,"stellar-drawer-landing":q,"stellar-footer":C,"stellar-signin":j}},E=O,P=Object(u["a"])(E,n,a,!1,null,null,null);e["default"]=P.exports;P.options.components=Object.assign({QLayout:d["m"],QPageContainer:d["p"]},P.options.components||{})}}]);
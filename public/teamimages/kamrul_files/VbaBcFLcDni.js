if (self.CavalryLogger) { CavalryLogger.start_js_script(document.currentScript); }/*FB_PKG_DELIM*/

__d("MWLSGroupMembershipDialog.bs",["fbt","CometEntityHeaderTabs.react","CometScrollableArea.react","LSMessagingThreadTypeUtil.bs","MAWGating.bs","MWCMThreadTypes.bs","MWCMUseFolder.bs","MWCardedDialog.react","MWDialogText.react","MWLSGroupMembershipMemberList.bs","MWPParticipantsAndContactsForThread_DO_NOT_USE_THIS_WILL_KILL_PERFORMANCE.bs","MWThreadKey.bs","ReQL.bs","ReQLSubscription.bs","bs_curry","cr:2161","cr:3703","react","stylex","useReStore"],(function(a,b,c,d,e,f,g){"use strict";var h,i,j=h||b("react"),k={peopleList:{paddingTop:"pybr56ya"},headerTabs:{marginEnd:"kejljmpm"},separator:{backgroundColor:"pwoa4pd7",height:"ay7djpcl",width:"k4urcfbm"},separatorContainer:{marginTop:"kvgmc6g5",marginEnd:"tmqn73lw",marginBottom:"oygrvhab",marginStart:"ocgrx2df"},scrollBoundary:{display:"j83agx80",height:"a4b6wlkb"},scroll:{height:"datstx6m",width:"k4urcfbm"},content:{width:"oh7imozk"}};function l(a){var c=a.thread,d=a.onClose,e=a.showAdminIndicator,f=a.showAdminsOnly;a=a.showInvitedByViewerOnly;var g=b("MWPParticipantsAndContactsForThread_DO_NOT_USE_THIS_WILL_KILL_PERFORMANCE.bs").useValue(c);return j.jsx(b("MWLSGroupMembershipMemberList.bs").make,{onClose:d,thread:c,showAdminsOnly:f,showAdminIndicator:e,showInvitedByViewerOnly:a,participantsAndContacts:g.map(function(a){return{TAG:0,_0:a[0],_1:a[1]}})})}c={make:l};function m(a){a=a.thread;a=b("MWCMUseFolder.bs").useHook(a);if(a!==void 0)return j.jsx(b("MWDialogText.react"),{align:"center",type:"body",children:g._("__JHASH__3oZLzI4GU8M__JHASH__",[g._param("name",a.name)])});else return null}d={make:m};function a(a){a=a.onClose;var c=j.useState(function(){return 0}),d=c[1];c=c[0];var e=b("useReStore")(),f=b("MWThreadKey.bs").useIdMemoizedExn(void 0),h=b("ReQLSubscription.bs").useFirst(j.useMemo(function(){return b("ReQL.bs").getKeyRange(b("ReQL.bs").fromTableAscending(e.table("threads")),{hd:f,tl:0})},[e,f]));if(h!==void 0){var n=h.threadType;n=[b("MWCMThreadTypes.bs").isJoinedCMThread(n),b("MWCMThreadTypes.bs").isBroadcastThread(n)]}else n=[!1,!1];var o=n[1],p=h!==void 0?b("MAWGating.bs").isGroupInvitesEnabled(void 0)&&b("LSMessagingThreadTypeUtil.bs").isSecure(h.threadType):!1,q=g._("__JHASH__L2CHDbBl1ut__JHASH__"),r=g._("__JHASH__1cAdDa3Rt1T__JHASH__"),s=g._("__JHASH__FO5QNnoLKC4__JHASH__"),t=g._("__JHASH__lF_qj1b8mLg__JHASH__"),u=g._("__JHASH__VLrFxlYuf1U__JHASH__"),v=g._("__JHASH__yxQWb112uGJ__JHASH__");s={label:s,onPress:function(a){return b("bs_curry")._1(d,function(a){return 0})},selected:c===0,testid:"messenger_member_list_tab_all"};n={label:n[0]?u:t,onPress:function(a){return b("bs_curry")._1(d,function(a){return 1})},selected:c===1,testid:"messenger_member_list_tab_admins"};u={label:v,onPress:function(a){return b("bs_curry")._1(d,function(a){return 2})},selected:c===2,testid:"messenger_member_list_tab_invited_by_viewer"};t=o?[[n],r]:p?[[s,n,u],q]:[[s,n],q];v=t[0];r=v.length>1;p=c<2;u=c===1;var w;s=0;n=0;b("cr:2161")==null?n=2:h!==void 0?b("MWCMThreadTypes.bs").isAnyCMThread(h.threadType)?w=j.jsx(b("cr:2161").make,{thread:h,showAdminsOnly:u}):n=2:w=null;n===2&&(b("cr:3703")==null?s=1:h!==void 0?b("MWCMThreadTypes.bs").isBroadcastThread(h.threadType)?w=j.jsx(b("cr:3703").make,{thread:h,showAdminsOnly:!0}):s=1:w=null);s===1&&(w=h!==void 0?j.jsx(l,{thread:h,onClose:a,showAdminIndicator:p,showAdminsOnly:u,showInvitedByViewerOnly:c===2}):null);q={withCloseButton:!0,onClose:a,children:j.jsxs("div",{className:(i||(i=b("stylex")))(k.content),children:[r?j.jsxs(j.Fragment,{children:[j.jsx("div",{className:(i||(i=b("stylex")))(k.headerTabs),children:j.jsx(b("CometEntityHeaderTabs.react"),{tabs:v})}),j.jsx("div",{className:(i||(i=b("stylex")))(k.separatorContainer),children:j.jsx("div",{className:(i||(i=b("stylex")))(k.separator)})})]}):null,h!==void 0&&o?j.jsx(m,{thread:h}):null,j.jsx("div",{className:i(k.peopleList),children:j.jsx("div",{className:i(k.scrollBoundary),children:j.jsx(b("CometScrollableArea.react"),{horizontal:!1,xstyle:k.scroll,children:w})})})]}),size:"content"};n=r?void 0:t[1];n!==void 0&&(q.title=n);return j.jsx(b("MWCardedDialog.react"),q)}e=b("cr:2161");var n=b("cr:3703");a=a;f.styles=k;f.mWCMFullMembersList=e;f.$MWCMFullMembersList$requireCond=b("cr:3703");f.mWCMFullMembersListBroadcastOnly=n;f.MembersList=c;f.BroadcastThreadDialogText=d;f.make=a}),null);
__d("MWLSGroupMembershipDialog.react",["MWLSGroupMembershipDialog.bs"],(function(a,b,c,d,e,f,g){"use strict";g["default"]=d("MWLSGroupMembershipDialog.bs").make}),98);
__d("MWCMFullMembersList.react",["CometInfiniteScrollTrigger.react","I64","LS.re","LSIntEnum","LSIssueCommunityMemberListFetch","LSVec","MWCMThreadTypes.re","MWCMUseFolder.re","MWGroupMembershipListItemWrapper","MWLSGroupMembershipMemberList.re","MWMemberListGlimmer.react","ReQL","ReQLSuspense","react","regeneratorRuntime","useCommunityMembers","useReStore"],(function(a,b,c,d,e,f,g){"use strict";var h=d("react");function i(a){var e=a.folder,f=a.showAdminsOnly;a=a.thread;var g=c("useReStore")();d("useCommunityMembers").useFetchCommunityMembers(e.fbGroupId,a);var i=d("ReQLSuspense").useArray(function(){return d("ReQL").fromTableAscending(g.table("community_members").index("communitySource")).getKeyRange(e.fbGroupId,d("I64").of_int32(7))},[g,e.fbGroupId]),j=d("useCommunityMembers").useCommunityMembersRanges(e.fbGroupId),k=a.threadKey,l=a.threadType,m=d("MWCMThreadTypes.re").isBroadcastThread(l)?[d("LSIntEnum").ofNumber(0)]:[];function n(){return b("regeneratorRuntime").async(function(a){while(1)switch(a.prev=a.next){case 0:a.next=2;return b("regeneratorRuntime").awrap(g.runInTransaction(function(a){return c("LSIssueCommunityMemberListFetch")(e.fbGroupId,c("LSVec").make([d("LSIntEnum").ofNumber(0)]),f,!1,j==null?void 0:j.nextPageCursor,"",d("LSIntEnum").ofNumber(7),k,void 0,c("LSVec").make(m),c("LS.re").make(a))},"readwrite"));case 2:case"end":return a.stop()}},null,this)}if(!j)return null;l=j.hasMoreAfter;var o=j.isLoadingAfter;return h.jsxs(h.Fragment,{children:[h.jsx(d("MWLSGroupMembershipMemberList.re").make,{doSortParticipants:!1,participantsAndContacts:i.map(function(a){return d("MWGroupMembershipListItemWrapper").tToRE({tag:"CommunityMember",value:a})}),showAdminIndicator:!0,showAdminsOnly:f,showInvitedByViewerOnly:!1,showModeratorIndicator:!0,thread:a}),h.jsx(c("CometInfiniteScrollTrigger.react"),{hasMore:l,isLoading:o,onLoadMore:function(){n()},children:h.jsx(c("MWMemberListGlimmer.react"),{})})]})}function a(a){var b=a.showAdminsOnly;a=a.thread;var c=d("MWCMUseFolder.re").useFolder(a);return!c?null:h.jsx(i,{folder:c,showAdminsOnly:b,thread:a})}a.displayName=a.name+" [from "+f.id+"]";g["default"]=a}),98);
__d("MWCMFullMembersList.bs",["MWCMFullMembersList.react"],(function(a,b,c,d,e,f){"use strict";a=b("MWCMFullMembersList.react");f.make=a}),null);
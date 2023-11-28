import{r as c,a as h,j as a,F as U}from"./jsx-runtime-f40812bf.js";import{b as T,d as u,v as C,f as N,u as _,C as D,L as E,h as V,aF as F,a0 as H,x as j,s as B,aE as x,k,a4 as L,H as K,J as G,aA as W,b8 as J,K as q,M as z,b9 as Q,N as X,c as Y}from"./Phone-fde4bf37.js";import{r as Z}from"./number-28525126.js";const $=B(null);function ne(){const g=c.useRef(null),[i,S]=c.useState(""),[A,r]=c.useState(!1),m=T(C.APPS.VOICEMEMO.voicememos);c.useEffect(()=>{var t;return(t=navigator.mediaDevices)==null||t.getUserMedia({audio:!0}).then(o=>{g.current=o,u("info","Got audio stream")}),C.APPS.DARKCHAT.channels.value||N("VoiceMemo",{action:"get"}).then(o=>{C.APPS.VOICEMEMO.voicememos.set(o)}),()=>{g.current&&g.current.getTracks().forEach(o=>o.stop())}},[]);const b=t=>{if(!g.current)return u("warning","No audio stream");u("info",`Toggling microphone ${g.current.getAudioTracks()[0].enabled?"off":"on"}`),g.current.getAudioTracks()[0].enabled=t};_("camera:toggleMicrophone",t=>{b(t)});const y=(t,o)=>{var I,O;const n=(I=V.value)!=null&&I.ice?new x({config:{iceTransportPolicy:"relay",iceServers:(O=V.value)==null?void 0:O.ice}}):new x;n.on("open",s=>{N("Camera",{action:"setRecordingPeerId",peerId:s}),u("info","Listening for nearby voices")});const l=document.createElement("canvas");l.width=1,l.height=1;const d=l.captureStream(0);return n.on("call",s=>{s.answer(d),s.on("stream",f=>{u("info","Received nearby voice");const P=new Audio;P.srcObject=f,P.volume=0,P.play(),new MediaStreamAudioSourceNode(t,{mediaStream:f}).connect(o)}),s.on("close",()=>{u("info","Stopped receiving nearby voice")})}),n},M=()=>{let t=E("APPS.VOICEMEMO.DEFAULT_NAME"),o=m.map(n=>{let l=n.title;if(l.startsWith(t)){let d=l.split(" ");if(d.length>1&&/^\d+$/.test(d[d.length-1]))return parseInt(d[d.length-1])}return null}).filter(n=>n!==null).sort((n,l)=>n-l);if(o.length===0)return m.some(n=>n.title===t)?`${t} 2`:t;for(let n=0;n<o.length;n++)if(o[n]!==n+2)return`${t} ${n+2}`;return`${t} ${o[o.length-1]+1}`};return c.useEffect(()=>{var s;if(!A)return;if(!g.current)return D.PopUp.set({title:E("APPS.VOICEMEMO.NO_MICROPHONE_POPUP.TITLE"),description:E("APPS.VOICEMEMO.NO_MICROPHONE_POPUP.DESCRIPTION"),buttons:[{title:E("APPS.VOICEMEMO.NO_MICROPHONE_POPUP.OK")}]}),r(!1);const t=new AudioContext,o=new MediaStreamAudioDestinationNode(t);t.createMediaStreamSource(g.current).connect(o),N("isTalking").then(f=>{b(f)});let l;(s=V.value)!=null&&s.recordNearbyVoices&&(l=y(t,o));const d=new MediaRecorder(o.stream);let I=[],O=Date.now();return d.ondataavailable=f=>{I.push(f.data)},d.onstop=async()=>{let f=Date.now()-O,P=Math.round(f/1e3);const e=new Blob(I,{type:d.mimeType});l&&(l.destroy(),u("info","Destroyed peer connection"),N("Camera",{action:"endedRecording"})),t.close();const v=await F(e,f,{logger:!1});H("Audio",v).then(p=>{u("info","Uploaded media");let R=M();N("VoiceMemo",{action:"upload",data:{src:p,duration:P,title:R}}).then(w=>{if(!w)return u("warning","Failed to upload voice memo");C.APPS.VOICEMEMO.voicememos.set([{id:w,title:R,timestamp:new Date().getTime(),duration:P,src:p},...m]),u("info",`Saved voice memo ${w}`)})}).catch(p=>{u("error","Failed to upload ",p)})},d.start(),()=>{d.stop()}},[A]),h("div",{className:"voicememo-container",children:[h("div",{className:"voicememo-wrapper",children:[a("div",{className:"title",children:E("APPS.VOICEMEMO.ALL_RECORDINGS")}),a(j,{placeholder:E("SEARCH"),theme:"dark",onChange:t=>S(t.target.value)}),a("div",{className:"voicememo-items",children:m.filter(t=>t.title.toLowerCase().includes(i.toLowerCase())).sort((t,o)=>o.timestamp-t.timestamp).map(t=>a(ee,{data:t,delete:()=>C.APPS.VOICEMEMO.voicememos.set(m.filter(o=>o.id!==t.id))},t.id))})]}),a("div",{className:"voicememo-footer",children:a("div",{className:"button-record",onClick:()=>r(!A),children:a("div",{className:"button-inner","data-recording":A})})})]})}const ee=g=>{const{data:i}=g,S=T(Y.Settings),A=T(C.APPS.VOICEMEMO.voicememos),r=c.useRef(null),[m,b]=c.useState(!1),[y,M]=c.useState(!1),[t,o]=c.useState(0),n=T($),[l,d]=c.useState(i.title),[I,O]=c.useState(!1),[s,f]=c.useState(null);c.useEffect(()=>(r.current=new Audio(i.src),r.current.src=i.src,r.current.volume=S.sound.volume??.5,r.current.addEventListener("ended",()=>{M(!1)}),r.current.addEventListener("timeupdate",()=>{o(r.current.currentTime)}),()=>{var e,v;(e=r.current)==null||e.pause(),(v=r.current)==null||v.remove(),r.current=null}),[]),c.useEffect(()=>{var e;n&&n!==i.id&&((e=r.current)==null||e.pause(),M(!1),b(!1))},[n]),c.useEffect(()=>{S.sound.volume&&(r.current.volume=S.sound.volume)},[S.sound.volume]),c.useEffect(()=>{M(!1),o(0),m&&$.set(i.id)},[m]);const P=e=>{const v=Math.floor(e/60),p=Z(e-v*60,0);return`${v}:${p<10?"0"+p:p}`};return h("div",{className:"voicememo-item",onClick:()=>b(!m),"data-expanded":m,children:[m?a(k,{className:"voicememo-title",defaultValue:l,onClick:e=>e.stopPropagation(),onLoad:e=>{e.target.style.width=e.target.value.length+"ch"},onChange:e=>{d(e.target.value),e.target.style.width=e.target.value.length+"ch"},onBlur:e=>{N("VoiceMemo",{action:"rename",id:i.id,title:e.target.value}).then(v=>{if(!v)return u("warning","Failed to rename voice memo");C.APPS.VOICEMEMO.voicememos.set(A.map(p=>p.id===i.id?{...p,title:e.target.value}:p))})}}):a("div",{className:"voicememo-title",children:l}),m&&a("div",{className:"subtitle",children:L(i.timestamp)}),h("div",{className:"voicememo-info",children:[!m&&h(U,{children:[a("div",{className:"date",children:L(i.timestamp)}),a("div",{className:"duration",children:P(i.duration)})]}),a(K,{children:m&&h(G.div,{className:"voicememo-actions",initial:{opacity:0,height:0},animate:{opacity:1,height:"auto"},exit:{opacity:0,height:0},children:[h("div",{className:"voicememo-duration-slider",onClick:e=>e.stopPropagation(),children:[a(k,{type:"range",min:0,max:100,value:s||t/i.duration*100,style:{background:`linear-gradient(to right, rgba(255, 255, 255, 0.7) 0%, rgba(255, 255, 255, 0.7) ${s||t/i.duration*100}%, rgba(255, 255, 255, 0.1) ${s||t/i.duration*100}%, rgba(255, 255, 255, 0.1) 100%)`},onMouseDown:e=>{e.stopPropagation(),O(!0)},onMouseUp:e=>{if(e.stopPropagation(),O(!1),s){if(!r.current)return u("warning","Audio ref is null");r.current.currentTime=i.duration/100*s,f(null)}},onChange:e=>{e.stopPropagation(),f(e.target.value)}}),h("div",{className:"duration",children:[a("div",{children:P(t)??"0:00"}),a("div",{children:P(i.duration)})]})]}),h("div",{className:"voicememo-item-footer",children:[a("div",{className:"share",children:a(W,{onClick:e=>{e.stopPropagation(),D.Share.set({type:"voicememo",data:i})}})}),h("div",{className:"controls",children:[a(J,{className:"disabled"}),a("span",{onClick:e=>{if(e.stopPropagation(),!r.current)return u("warning","Audio ref is null");y?(r.current.pause(),M(!1)):(r.current.play(),M(!0))},children:y?a(q,{}):a(z,{})}),a(Q,{className:"disabled"})]}),a("div",{className:"delete",children:a(X,{onClick:e=>{e.stopPropagation(),D.PopUp.set({title:E("APPS.VOICEMEMO.DELETE_POPUP.TITLE"),description:E("APPS.VOICEMEMO.DELETE_POPUP.DESCRIPTION"),buttons:[{title:E("APPS.VOICEMEMO.DELETE_POPUP.CANCEL")},{title:E("APPS.VOICEMEMO.DELETE_POPUP.PROCEED"),color:"red",cb:()=>{N("VoiceMemo",{action:"delete",id:i.id}).then(v=>{if(!v)return u("warning","Failed to delete voice memo");g.delete()})}}]})}})})]})]})})]})]})};export{ne as default};

(function(){var r=window.cfx,a=window.sfx,s={Version:"7.3.5529.24241"};r.annotation=s;s.AnnImageMode={Original:0,Stretch:1,Tile:2};s.AttachMode={None:0,Point:1,Elastic:2};s.BalloonTailCorner={TopLeft:0,TopRight:1,BottomRight:2,BottomLeft:3,Top:4,Right:5,Bottom:6,Left:7};var v=function(){};v.d=function(a){return 0==a.w||0==a.h};v.b=function(e,k,h){!k.c()&&!h.c()&&(e.x=a.i(e.x*k.x,h.x),e.w=a.i(e.w*k.x,h.x),e.y=a.i(e.y*k.y,h.y),e.h=a.i(e.h*k.y,h.y))};v.c=function(e,k,h,c){var j=0,f=0,b=0,g=0;e&&(j=c.x,
f=c.y,b=c.w,g=c.h);j=new a._p1(j);k.ie1(j,h+"Left",0);j=j.a;f=new a._p1(f);k.ie1(f,h+"Top",0);f=f.a;b=new a._p1(b);k.ie1(b,h+"Width",0);b=b.a;g=new a._p1(g);k.ie1(g,h+"Height",0);g=g.a;e||(c.x=j,c.y=f,c.w=b,c.h=g)};v.a=function(a,e,h){a.m(a.x<=a.g()?e:-e,a.y<=a.c()?h:-h)};var x=function N(){N._ic();this.a=null};s.SerializableArrowCap=x;x.prototype={_0_1:function(){return this},_01_1:function(a){this.a=a;return this},ieM:function(e,h){null==this.a&&(this.a=(new a.av)._0av(5,5,!0));this.a.setBaseCap(h.ie5("BaseCap",
this.a.getBaseCap(),3));var c=this.a.baseInset,c=new a._p1(c);h.ie2(c,"BaseInset",1);c=c.a;this.a.baseInset=c;c=this.a.filled;c=new a._p1(c);h.ie4(c,"Filled",!0);c=c.a;this.a.filled=c;c=this.a.h;c=new a._p1(c);h.ie2(c,"Height",5);c=c.a;this.a.h=c;c=this.a.w;c=new a._p1(c);h.ie2(c,"Width",5);c=c.a;this.a.w=c;c=this.a.middleInset;c=new a._p1(c);h.ie2(c,"MiddleInset",0);c=c.a;this.a.middleInset=c;this.a.setStrokeJoin(h.ie5("StrokeJoin",this.a.getStrokeJoin(),0));c=this.a.widthScale;c=new a._p1(c);h.ie2(c,
"WidthScale",1);c=c.a;this.a.widthScale=c}};x._dt("CWAS",a.SA,0,r.ieL);var k=function h(){h._ic();this.m=this.f=this.d=this.g=this.e=this.b=this.v=null;this.h=this.l=this.u=this.z=0;this.O=null;this.H=!1;this.t=0;this.y=this.M=this.G=!1};k.prototype={_0dO:function(){this.k=new a.m;this.a=new a.c;this.c=new a.c;this.N=new a.c;this.o=new a.c;this.M=!1;this.f=null;this.k._cf(a.m.g());this.b=(new r.Line)._01_2(3);this.b.setColor(a.m.c());this.h=0;this.y=!0;this.t=-1;this.z=5;this.u=this.l=1;return this},
_01dO:function(a){this._0dO();this.a._cf(a);this.q();return this},getAnchor:function(){return this.z},setAnchor:function(a){this.z=a;this.detach()},bA:function(){return this.h},getBorder:function(){return this.b},setBorder:function(a){this.b=a},A:function(){var a=this.c._nc();this.M&&a.m(4,4);return a},getColor:function(){return this.k},setColor:function(h){h=a.m._t(h);this.k._cf(h)},id3:function(){return null},getHeight:function(){return this.c.h},setHeight:function(a){this.w(0,a-this.c.h,!0,576,
!1)},id4:function(){return 14},getLeft:function(){return this.c.x},setLeft:function(a){this.x(a-this.c.x,0,!0,!1)},getObjectBounds:function(){return this.a},setObjectBounds:function(a){this.a._cf(a);this.q()},getPaintBefore:function(){return this.H},setPaintBefore:function(a){this.H=a},getPattern:function(){return this.t},setPattern:function(a){this.t=a},getPlotAreaOnly:function(){return this.G},setPlotAreaOnly:function(a){this.G=a},T:function(){return(new a.g)._01g(this.c.g()-this.c.x,this.c.c()-
this.c.y)},getTag:function(){return this.O},setTag:function(a){this.O=a},getTop:function(){return this.c.y},setTop:function(a){this.x(0,a-this.c.y,!0,!1)},getVisible:function(){return this.y},setVisible:function(a){this.y=a},getWidth:function(){return this.c.w},setWidth:function(a){this.w(a-this.c.w,0,!0,2112,!1)},attach:function(a,c){this.u=this.l=1;this.B(1,[a,c])},B:function(a,c){var j=!1,j=!1;0!=a?null==c&&(1==a?c=[0,0]:2==a&&(c=[0,0,0,0]),j=!0):c=null;this.f=c;this.h=a;this.j(j)},attachElastic:function(a,
c,j,f){this.B(2,[a,c,j,f])},attachAlign:function(a,c,j,f){this.u=a;this.l=j;this.B(1,[c,f])},q:function(){this.j(!0)},j:function(a){a&&(0!=this.h&&null!=this.e)&&this.V();this.o._cf(this.a);this.c._cf(this.i(this.a._nc()))},aa:function(){return-1==this.t?(new a.ar)._0ar(a.m.o(this.k,a.m.g())?a.m.b:this.k):(new a.aB)._0aB(this.t,this.b.getColor(),this.k)},Z:function(){if(a.m.o(this.b.getColor(),a.m.g()))return(new a.ao)._01ao(a.m.g());var h=this.b.c(a.m.b._nc());h.sb(1);return h},detach:function(){this.B(0,
null)},_d:function(){this._dispose1(!0)},_dispose1:function(){null!=this.g&&this.g._d();null!=this.d&&this.d._d()},flip:function(a){this.R(a,-1)},R:function(h,c){var j=this.a._nc();h?-1==c?this.a._cf(a.c.l(j.x,j.c(),j.g(),j.y)):this.a._cf(a.c.l(j.x,c-j.c(),j.g(),c-j.y)):-1==c?this.a._cf(a.c.l(j.g(),j.y,j.x,j.c())):this.a._cf(a.c.l(c-j.g(),j.y,c-j.x,j.c()));this.q()},ifg:function(a){switch(a){case 1:return this.m}return null},ifh:function(a){switch(a){case 5:return this.v}return null},P:function(){var h=
new a.c;null!=this.e&&(h._cf(this.A()),h.m(this.b.d,this.b.d),this.e.iaD(h._nc()))},W:function(h){var c=0,j=0,f=0,b=0,h=h._nc();switch(this.h){case 1:f=new a._pN(c,j,this.f[0],this.f[1]);b=this.e.iaE(f,1);c=f.a;j=f.b;this.f[0]=f.c;this.f[1]=f.d;if(!b)break;switch(this.u){case 0:h.x=c;break;case 2:h.x=c-h.w;break;case 1:h.x=c-a.i(h.w,2)}switch(this.l){case 0:h.y=j;break;case 2:h.y=j-h.h;break;case 1:h.y=j-a.i(h.h,2)}break;case 2:var g=new a._pN(c,j,this.f[0],this.f[1]),d=this.e.iaE(g,1),c=g.a,j=g.b;
this.f[0]=g.c;this.f[1]=g.d;if(!d)break;g=new a._pN(f,b,this.f[2],this.f[3]);d=this.e.iaE(g,1);f=g.a;b=g.b;this.f[2]=g.c;this.f[3]=g.d;if(!d)break;h.x=c;h.y=j;h.w=f-c;h.h=b-j}return h},x:function(a,c,j,f){this.a._cf(this.o);this.a.q(a,c);j&&this.j(f)},i:function(a){if(0>a.w){var c=a.w;a.w=-c;a.x+=c}0>a.h&&(c=a.h,a.h=-c,a.y+=c);return a},F:function(a,c){this.x(a,c,!0,!1)},K:function(a){this.y&&(this.g=this.aa(),this.d=this.Z(),null==this.L()?a.sidb(null):(this.m=this.v.f(),a.sidb((new r.c2)._01c2("Annotation"+
this.L()+" AnnotationObj"+this.m))),this.X(a,!1,this.o._nc()),this.g._d(),this.g=null,this.d._d(),this.d=null)},V:function(){var h=0,c=0;switch(this.h){case 1:switch(this.u){case 0:h=this.a.x;break;case 2:h=this.a.g();break;case 1:h=a.i(this.a.x+this.a.g(),2)}switch(this.l){case 0:c=this.a.y;break;case 2:c=this.a.c();break;case 1:c=a.i(this.a.y+this.a.c(),2)}h=new a._pN(h,c,this.f[0],this.f[1]);c=this.e.iaE(h,0);this.f[0]=h.c;this.f[1]=h.d;c||(this.h=0);break;case 2:h=this.a.x;c=this.a.y;h=new a._pN(h,
c,this.f[0],this.f[1]);c=this.e.iaE(h,0);this.f[0]=h.c;this.f[1]=h.d;if(!c){this.h=0;break}h=this.a.g();c=this.a.c();h=new a._pN(h,c,this.f[2],this.f[3]);c=this.e.iaE(h,0);this.f[2]=h.c;this.f[3]=h.d;c||(this.h=0)}},refresh:function(){0!=this.h&&this.r((new a.e)._01e(0,0),(new a.e)._01e(0,0));this.P()},r:function(){this.N._cf(this.a);if(!this.a.SB(this.o))return!1;0!=this.h&&(this.a._cf(this.W(this.a)),this.j(!1));return!1},w:function(a,c,j,f,b){this.a._cf(this.o);320==(f&320)&&(this.a.y+=c,this.a.h-=
c);576==(f&576)&&(this.a.h+=c);1088==(f&1088)&&(this.a.x+=a,this.a.w-=a);2112==(f&2112)&&(this.a.w+=a);j&&this.j(b)},E:function(){this.a._cf(this.N);this.o._cf(this.a);this.c._cf(this.i(this.a._nc()))},rotate:function(h){this.D(h,(new a.e)._01e(0,0))},D:function(h,c){c.c()&&(c.x=a.i(this.a.x+this.a.g()+1,2),c.y=a.i(this.a.y+this.a.c()+1,2));this.a.q(-c.x,-c.y);h?this.a._cf(a.c.l(-this.a.y,this.a.x,-this.a.c(),this.a.g())):this.a._cf(a.c.l(this.a.y,-this.a.x,this.a.c(),-this.a.g()));this.a.q(c.x,c.y);
this.q()},U:function(a,c){this.a._cf(a);c&&this.q()},C:function(a){this.v=a;this.e=null!=a?a.c:null}};k._dt("CWAA",a.SA,0,r.ieL,a.Su);var e=function c(){c._ic();this._0_3()};s.AnnotationVector=e;e.prototype={_0_3:function(){this._bc._0dO.call(this);this.al=(new r.DataTemplate)._0_2();return this},L:function(){return"Vector"},getTemplate:function(){return this.al.t()},setTemplate:function(a){this.al.st(a)},X:function(c,j,f){if(!a.b.p(this.al.t())){j=a.d.r(f);for(f=this.al.id().Sb();!0==f.SK();){var b=
f.SM();switch(b.bA()){case "F":case "Fill":b.sb(this.g);break;case "S":case "Stroke":b.sb(this.d);break;case "W":case "Width":b.sb(j.w);break;case "H":case "Height":b.sb(j.h);break;case "FC":case "FillColor":b.sb(this.k);break;case "ST":case "StrokeThickness":b.sb(this.b.d);break;case "SD":case "StrokeDashStyle":b.sb(this.b.e)}}this.al.v(c,j,1,0)}}};e._dt("CWAA",k,0);var o=function j(){j._ic();this.at=this.am=this.av=0;this.aw=this.ao=null;this.ap=this.az=0;this.ar=!1;this.an=0;this._0_3()};s.AnnotationText=
o;o.prototype={_0_3:function(){this._bc._0dO.call(this);this.au=new a.m;this.an=1024;this.at=this.av=this.ap=0;this.aq="Text";this.au._cf(a.m.c());this.ar=!1;return this},_01_3:function(a){this._0_3();this.aq=a;this.sizeToFit();return this},getAlign:function(){return this.av},setAlign:function(a){this.av=a},getClip:function(){return 0==(this.an&512)},setClip:function(a){this.an=a?this.an&-513:this.an|512},getCornerRadius:function(){return this.am},setCornerRadius:function(a){this.am=a},getFont:function(){return this.ao},
setFont:function(j){this.ao=j=a.o._t(j);this.sizeToFit()},getLineAlignment:function(){return this.at},setLineAlignment:function(a){this.at=a},ay:function(){return null!=this.ao?this.ao:null!=this.e?this.e.iaA():null},L:function(){return"TextBorder"},aD:function(){return"Text"},getOrientation:function(){return this.ap},setOrientation:function(a){this.ap=a},getText:function(){return this.aq},setText:function(a){this.aq=a;this.sizeToFit()},getTextColor:function(){return this.au},setTextColor:function(j){j=
a.m._t(j);this.au._cf(j)},aC:function(){var a=this.c._nc();a.m(-this.b.d,-this.b.d);v.a(a,-(this.am-1),-(this.am-1));return a},getWordWrap:function(){return 0!=(this.an&1024)},setWordWrap:function(a){this.an=a?this.an|1024:this.an&-1025},aE:function(j,f,b,g){var d=0==f||2==f,l=0;d?(l=a.i(b.x+b.g(),2),g=a.a.p(g,a.i(b.w,2)-g)):(l=a.i(b.y+b.c(),2),g=a.a.p(g,a.i(b.h,2)-g));var n=l-g,i=l+g;if(d){var p=d=0;0==f?(d=b.y,p=d-g):(d=b.c(),p=d+g,f=n,n=i,i=f);j.t(n,d,l,p);j.t(l,p,i,d)}else p=d=0,1==f?(d=b.g(),
p=d+g):(d=b.x,p=d-g,f=n,n=i,i=f),j.t(d,n,p,l),j.t(p,l,d,i)},aB:function(a,f,b,g,d,l,n){for(var d=2*d,d=[(new y)._01dP(f.x,f.y,d,d,180,90),(new y)._01dP(f.g()-d,f.y,d,d,270,90),(new y)._01dP(f.g()-d,f.c()-d,d,d,0,90),(new y)._01dP(f.x,f.c()-d,d,d,90,90)],i=0;i<b;i++)g=(g+1)%4,d[g].e(a),g==l&&this.aE(a,l,f,n)},j:function(a){k.prototype.j.call(this,a)},_dispose1:function(a){null!=this.ao&&(this.ao._d(),this.ao=null);k.prototype._dispose1.call(this,a)},aA:function(j){var f=this.aC()._nc(),b=(new a.e)._01e(a.i(f.x+
f.g()+1,2),a.i(f.y+f.c()+1,2));f.q(-b.x,-b.y);for(var g=0;g<this.ap;g++)f._cf(a.c.l(-f.y,f.x,-f.c(),f.g()));f.q(b.x,b.y);f._cf(this.i(f._nc()));b=(new r.cG)._04cG(this.au._nc(),this.av,this.at,this.an,900*this.ap,!0);b.h(j,this.ay(),this.aq,f);b._d()},X:function(j,f,b){f=this.i(b);0==this.am?(j.idS(this.g,f.x,f.y,f.w,f.h),j.idC(this.d,f.x,f.y,f.w,f.h)):(b=(new a.aA)._0aA(),this.aB(b,f,4,0,this.am,-1,0),b.C(),null!=this.g&&j.idM(this.g,b),null!=this.d&&j.idt(this.d,b),b._d());j.sidb((new r.c2)._01c2("AnnotationText AnnotationObj"+
this.m));this.aA(j)},r:function(j,f){this.az=this.am;this.ar&&this.ax(this.v.g());var b=k.prototype.r.call(this,j._nc(),f._nc());b&&(this.am=a.i(this.am*j.y,f.y));return b},w:function(a,f,b,g,d){k.prototype.w.call(this,a,f,b,g,d);this.ar=!1},E:function(){this.am=this.az;k.prototype.E.call(this);null!=this.aw&&(this.ao._d(),this.ao=this.aw,this.aw=null)},D:function(a,f){this.ap=(this.ap+(a?3:1))%4;k.prototype.D.call(this,a,f._nc())},C:function(a){k.prototype.C.call(this,a);this.ar&&this.sizeToFit()},
sizeToFit:function(){this.ar=!0},ax:function(a){this.m=this.v.f();a.sidb((new r.c2)._01c2("Annotation"+this.aD()+" AnnotationObj"+this.m));a=a.idW(this.aq,this.ay()).e();if(1==(this.ap&1)){var f=a.w;a.w=a.h;a.h=f}f=this.a._nc();f.w=a.w+2*this.b.d+1;f.h=a.h+2*this.b.d+1;v.a(f,this.am,this.am);this.a._cf(f);this.ar=!1;this.j(!1)}};o._dt("CWAA",k,0);var y=function f(){f._ic();this.a=new a.c;this.c=this.d=0};y.prototype={_i1:function(a,b,g,d,l,n){this.a._i2(a,b,g,d);this.d=l;this.c=n},_i:function(){this.a._i();
this.c=this.d=0},_01dP:function(a,b,g,d,l,n){this._i1(a,b,g,d,l,n);return this},e:function(a){0==this.a.w||0==this.a.h?a.q(this.a.f(),this.a.f()):a.e(this.a,this.d,this.c)}};y._dt("CWAA",a.W,0);e=function b(){b._ic();this.aV=0;this._0_4()};s.AnnotationBalloon=e;e.prototype={_0_4:function(){this._bc._0_3.call(this);this.aO=new a.c;this.aU=new a.c;this.aR=12;this.am=5;this.aP=0;this.aO.x=0;this.aN=this.aO.y=0;this.aQ();return this},A:function(){return o.prototype.A.call(this)},L:function(){return"Balloon"},
aD:function(){return"BalloonText"},getTailCorner:function(){return this.aN},setTailCorner:function(a){this.aN=a},getTailFactor:function(){return this.aR},setTailFactor:function(a){this.aR=a},aC:function(){var b=this.a._nc();v.a(b,-this.b.d,-this.b.d);v.a(b,-this.aP,-this.aP);b._cf(this.i(b._nc()));var g,d;d=new a._p2(0,0);this.aS(d,b);g=d.a;d=d.b;b.w-=g;b.h-=d;switch(this.aN){case 0:b.x+=g;b.y+=d;break;case 1:b.y+=d;break;case 3:b.x+=g}v.a(b,-(this.am-1),-(this.am-1));return b},aX:function(a){var g=
this.aR;0>g?(a.w+=-g,a.h+=-g):(g/=100,a.w/=1-g,a.h/=1-g)},aW:function(b){var g=this.am*(0>b.w?-1:1),d=this.am*(0>b.h?-1:1),l,n;n=new a._p2(0,0);this.aS(n,b);l=n.a;n=n.b;var i=a.e._ca(3);switch(this.aN){case 0:i[1].x=b.x;i[1].y=b.y;b.x+=l;b.w-=l;b.y+=n;b.h-=n;i[0].x=b.x;i[0].y=b.y+d;i[2].x=b.x+g;i[2].y=b.y;break;case 1:i[1].x=b.g();i[1].y=b.y;b.w-=l;b.y+=n;b.h-=n;i[2].x=b.g();i[2].y=b.y+d;i[0].x=b.g()-g;i[0].y=b.y;break;case 3:i[1].x=b.x;i[1].y=b.c();b.x+=l;b.w-=l;b.h-=n;i[2].x=b.x;i[2].y=b.c()-d;
i[0].x=b.x+g;i[0].y=b.c();break;default:i[1].x=b.g(),i[1].y=b.c(),b.w-=l,b.h-=n,i[0].x=b.g(),i[0].y=b.c()-d,i[2].x=b.g()-g,i[2].y=b.c()}return i},aS:function(a,g){var d=this.aR;0>d?(a.b=-d,a.a=a.b):(d/=100,a.a=g.w*d,a.b=g.h*d)},j:function(a){o.prototype.j.call(this,a);this.aQ()},R:function(a,g){o.prototype.R.call(this,a,g);switch(this.aN){case 0:this.aN=a?3:1;break;case 1:this.aN=a?2:0;break;case 2:this.aN=a?1:3;break;case 3:this.aN=a?0:2;break;case 4:a||(this.aN=6);break;case 6:a||(this.aN=4);break;
case 7:a&&(this.aN=5);break;case 5:a&&(this.aN=7)}this.aQ()},X:function(b,g,d){v.a(d,-this.aP,-this.aP);d._cf(this.i(d._nc()));if(!g&&0<this.aP&&a.m.p(this.k,a.m.g())){var l=a.m.l(128,0,0,0),l=(new a.ar)._0ar(l);this.aT(b,l,null,(new a.c)._02c(d.x+this.aP,d.y+this.aP,d.w,d.h));l._d()}this.aT(b,this.g,this.d,d._nc());b.sidb((new r.c2)._01c2("AnnotationBalloonText AnnotationObj"+this.m));!g&&null!=this.aq&&this.aA(b)},P:function(){o.prototype.P.call(this)},x:function(a,g,d,l){o.prototype.x.call(this,
a,g,d,l);d||this.aQ()},F:function(a,g){o.prototype.F.call(this,a,g);this.aO.q(a,g)},aT:function(b,g,d,l){var n=(new a.aA)._0aA();n.F();var i=4,p=0,t=-1;4<=this.aN&&(t=this.aN-4);var q=0;if(-1==t){i=this.aW(l);for(p=1;p<i.length;p++)n.q(i[p-1],i[p]);i=3;p=this.aN}else{var p=4,m;m=new a._p2(0,0);this.aS(m,l);q=m.a;m=m.b;q=a.i(a.a.o(q,m),2)}this.aB(n,l,i,p,this.am,t,q);n.C();null!=g&&b.idM(g,n);null!=d&&b.idt(d,n);n._d()},r:function(b,g){this.aV=this.aP;this.aU._cf(this.aO);if(o.prototype.r.call(this,
b._nc(),g._nc())){this.aP=a.i(this.aP*b.y,g.y);var d=a.i(this.aO.x*b.x,g.x),l=d-this.aO.x;this.aO.x=d;this.aO.w-=l;d=a.i(this.aO.y*b.y,g.y);l=d-this.aO.y;this.aO.y=d;this.aO.h-=l;return!0}return!1},w:function(a,g,d,l,n){o.prototype.w.call(this,a,g,d,l,n);d?this.aN=0>this.a.w?0>this.a.h?2:1:0>this.a.h?3:0:this.aQ()},E:function(){this.aP=this.aV;this.aO._cf(this.aU);o.prototype.E.call(this)},D:function(a,g){o.prototype.D.call(this,a,g._nc());var d=0;4<=this.aN&&(d=4,this.aN-=4);this.aN=a?(this.aN+1)%
4:(this.aN+4-1)%4;this.aN+=d},U:function(a,g){o.prototype.U.call(this,a._nc(),g);g||this.aQ()},ax:function(a){o.prototype.ax.call(this,a);a=this.a._nc();v.a(a,this.aP,this.aP);this.aX(a);this.a._cf(a);this.j(!1)},aQ:function(){}};e._dt("CWAA",o,0);e=function g(){g._ic();this._0_3()};s.AnnotationRectangle=e;e.prototype={_0_3:function(){this._bc._0dO.call(this);return this},L:function(){return"Rectangle"},X:function(a,d,l){d=this.i(l);a.idS(this.g,d.x,d.y,d.w,d.h);a.idC(this.d,d.x,d.y,d.w,d.h)}};e._dt("CWAA",
k,0);e=function d(){d._ic();this.am=this.an=this.ao=0;this.al=null;this._0_3()};s.AnnotationPicture=e;e.prototype={_0_3:function(){this._bc._0dO.call(this);this.am=0;return this},_01_3:function(d){this._0_3();d=a.an._t(d);this.setPicture(d);this.sizeToFit();return this},getMode:function(){return this.am},setMode:function(a){this.am=a},L:function(){return null},getPicture:function(){return null!=this.al?this.al:null},setPicture:function(d){d=a.an._t(d);this.aq();this.al=d;null!=d&&(this.ao=this.al.c(),
this.an=this.al.b());this.sizeToFit()},aq:function(){null!=this.al&&(this.al._d(),this.al=null)},_dispose1:function(a){this.aq();k.prototype._dispose1.call(this,a)},X:function(d,l,n){var i=this.i(n);if(l)d.idQ(a.aj.G(),i);else if(d.idS(this.g,i.x,i.y,i.w,i.h),d.idC(this.d,i.x,i.y,i.w,i.h),null!=this.al){var p=0,t=0,q=0,m=0,e=0,k=0,l=!1,v=0,J=0,q=d.idc(),r=0,s=0,p=this.T();0!=this.b.getColor().a&&(m=2*this.b.d-1,p.w-=m,p.h-=m);switch(this.am){case 1:q=p.w;m=p.h;e=this.ao;k=this.an;break;default:2==
this.am&&(l=!0),v=3.937007874016E-4*q.c(),J=3.937007874016E-4*q.d(),q=this.ao,m=this.an,q=a.a.p(q,p.w),m=a.a.p(m,p.h),e=q/v,k=m/J}var o=n.x>n.g(),n=n.y>n.c(),p=i.x+this.b.d,t=i.y+this.b.d;do if(r=1==this.am?e:q,s=1==this.am?k:m,d.idp(this.al,(new a.c)._02c(p,t,q,m),o?this.ao:0,n?this.an:0,o?-r:r,n?-s:s,2,null),l){p+=q;i=this.c._nc();if(p>=i.g()&&(p=i.x,t+=m,t>=i.c()))break;q=this.ao;q=a.a.p(q,i.g()-p);e=q/v;m=this.an;m=a.a.p(m,i.c()-t);k=m/J}while(l)}},sizeToFit:function(){var a=this.a._nc();a.w=
this.ao+2*this.b.d;a.h=this.an+2*this.b.d;this.a._cf(a);this.q()}};e._dt("CWAA",k,0);e=function l(){l._ic();this.al=null;this._0_3()};s.AnnotationContainer=e;e.prototype={_0_3:function(){this._bc._0dO.call(this);this.am=!0;return this},getElement:function(){return this.al},setElement:function(l){this.al=a.V.C(l,r.ieC)},L:function(){return"Container"},X:function(a,e,i){if(null!=this.al){var e=null,p=this.al.ieD();null==p&&(p="jchartfx");var t=a.idc(),q=t.CN,e=t._AN(1,null);e.setAttribute("class",p);
this.e.iay(this.al,e);this.al.ieF(this.e,a,i._nc());t.CN=q}},r:function(a,e){if(this.am){var i=this.al.ieE(this.e);0!=i.w&&0!=i.h&&(this.a.w=i.w,this.a.h=i.h);this.am=!1;this.j(!1)}return k.prototype.r.call(this,a._nc(),e._nc())}};e._dt("CWAA",k,0);e=function n(){n._ic();this._0_3()};s.AnnotationCircle=e;e.prototype={_0_3:function(){this._bc._0dO.call(this);return this},L:function(){return"Circle"},X:function(a,i,e){i=this.i(e);a.idK(this.g,i.x,i.y,i.w,i.h);a.idi(this.d,i.x,i.y,i.w,i.h)}};e._dt("CWAA",
k,0);e=function i(){i._ic();this._0_3()};s.AnnotationArrow=e;e.prototype={_0_3:function(){this._bc._0dO.call(this);this.al=null;this.am=(new x)._01_1((new a.av)._0av(5,5,!0));return this},A:function(){var a=k.prototype.A.call(this)._nc();if(null!=this.al){var e=this.al.a;a.m(e.w,e.h)}null!=this.am&&(e=this.am.a,a.m(e.w,e.h));return a},getEndCap:function(){return null==this.am?null:this.am.a},setEndCap:function(a){this.am=null!=a?(new x)._01_1(a):null},L:function(){return"Arrow"},getStartCap:function(){return null==
this.al?null:this.al.a},setStartCap:function(a){this.al=null!=a?(new x)._01_1(a):null},X:function(a,e,t){null!=this.al&&this.d.sf(this.al.a);null!=this.am&&this.d.se(this.am.a);a.idr(this.d,t.x,t.y,t.g(),t.c())}};e._dt("CWAA",k,0);e=function p(){p._ic();this._0_3()};s.AnnotationArc=e;e.prototype={_0_3:function(){this._bc._0dO.call(this);return this},L:function(){return"Arc"},X:function(e,t,q){t=90;if(!v.d(q)){var m=this.i(q._nc())._nc(),k=m.w,r=m.h;m.w=2*k;m.h=2*r;0>q.w?(m.x-=k,0>q.h?t=270:(m.y-=
r,t=0)):0>q.h?t=180:m.y-=r;a.m.p(this.k,a.m.g())&&e.idN(this.g,m,t,90);e.idf(this.d,m.x,m.y,m.w,m.h,t,90)}}};e._dt("CWAA",k,0);var A=function t(){t._ic();this.c=!1};A.prototype={_0dQ:function(a){this._bc._0Y.call(this);this.b=a;return this},a:function(){return this.b},sa:function(a){this.b=a},getItem:function(a){return this._Sa().So(a)},add:function(a){this._Sa().Si(a)},contains:function(a){return this._Sa().Sj(a)},copyTo:function(a,e){this._Sa().Sd(a,e)},_d:function(){for(var e=this._Sa().Sb();!0==
e.SK();){var q=e.SM(),q=a.V.C(q,a.Su);null!=q&&q._d()}},indexOf:function(a){return this._Sa().Sk(a)},insert:function(a,e){this._Sa().Sl(a,e)},_Sb:function(){a.Y.prototype._Sb.call(this);this.c=!0},_Sc:function(e,q){a.Y.prototype._Sc.call(this,e,q);var m=a.V.D(q,k);null!=m&&m.C(this.b);this.c=!0},_Sd:function(e,q){a.Y.prototype._Sd.call(this,e,q);this.c=!0},remove:function(a){this._Sa().Sm(a)}};A._dt("CWAA",a.Y,0,a.Su);var C=function q(){q._ic();this.C=null;this.w=this.B=!1;this.r=0;this.A=null;this.z=
0;this.y=null};s.AnnotationList=C;C.prototype={_0_3:function(){this._01_3(null);return this},_01_3:function(e){this._bc._0dQ.call(this,e);this.v=new a.m;this.u=new a.m;this.p=new a.c;this.o=new a.c;this.q=new a.c;this.v._cf(a.m.g());this.u._cf(a.m.c());this.A=this.C=null;this.B=!1;this.y=null;this.p._cf(a.c.b);this.z=1;this.w=!1;return this},a:function(){return A.prototype.a.call(this)},sa:function(a){A.prototype.sa.call(this,a)},D:function(){return null!=this.a()?this.a().c:null},_Sb:function(){A.prototype._Sb.call(this)},
t:function(e,m,k,r){var k=new a.c,s=new a.c,o=new a.c,x=new a.c,z=new a.c,B=new a.c,y=new a.c,w=new a.c,A=new a.c,C=new a.c,D=0,G=0,E=0,I=0,E=D=e.idc().c(),I=G=e.idc().d(),D=(new a.e)._01e(D,G),E=(new a.e)._01e(E,I);this.p._cf(a.c.b);I=m.d();o._cf(this.D().iaw());var G=e.ic_(),L=(new a.aq)._0aq(o),O=!this.o.d()&&!m.SB(this.o),P=!this.o.d()&&!o.SB(this.o);B._cf(m);y._cf(o);A._cf(this.o);C._cf(this.q);v.b(B,E,D);v.b(y,E,D);v.b(A,E,D);v.b(C,E,D);this.r=-1;for(var M=this.Sb();!0==M.SK();){var u=M.SM();
this.r++;if(u.H==r){var H=u.G;H?(x._cf(o),w._cf(y),w.q(-B.x,-B.y),z._cf(C)):(x._cf(m),w._cf(B),z._cf(A));var K=H?P:O;if(0==u.h){var F=u.z;K&&(0==F?(u.setTop(u.getTop()+a.i(w.h-z.h,2)),u.setLeft(u.getLeft()+a.i(w.w-z.w,2))):(0!=(F&8)&&(0!=(F&4)?u.setWidth(u.getWidth()+(w.w-z.w)):u.setLeft(u.getLeft()+(w.w-z.w))),0!=(F&2)&&(0!=(F&1)?u.setHeight(u.getHeight()+(w.h-z.h)):u.setTop(u.getTop()+(w.h-z.h))),H&&(0!=(F&4)&&u.setLeft(u.getLeft()+(w.x-z.x)),0!=(F&1)&&u.setTop(u.getTop()+(w.y-z.y)))));u.F(B.x,
B.y)}K=u.r(D._nc(),E._nc());I?u.K(e):(k._cf(u.A()),this.p._cf(a.c.t(this.p,k)),H&&e.sic_(L),s._cf(a.c.n(x,k)),v.d(s)||u.K(e),H&&e.sic_(G));K&&u.E();0==u.h&&u.F(-B.x,-B.y)}}null!=G&&G._d();L._d();r||(o.q(-m.x,-m.y),this.q._cf(o),this.o._cf(m))},ieM:function(a,e){v.c(a,e,"Paint",this.o);v.c(a,e,"Draw",this.q)},x:function(a){this.r=a}};C._dt("CWAA",A,0,r.ieL);e=function m(){m._ic();this.b=this.d=this.c=this.e=null;this._0_3()};s.Annotations=e;e.prototype={_0_3:function(){this.a=(new C)._01_3(this);return this},
getList:function(){return this.a},g:function(){if(null==this.b){var a=this.c.iaz();this.b=(new r.bk)._01bk(a,!0)}return this.b},icq:function(e){this.c=e;this.e=a.V.D(e,r.Chart);for(var k=0,o=this.a.Sb();!0==o.SK();){var s=o.SM();this.a.x(k);s.C(this);k++}return null==e},_d:function(a){if(a){for(a=this.a.Sb();!0==a.SK();)a.SM()._d();this.a.clear();null!=this.b&&(this.b._d(),this.b=null);null!=this.d&&(this.d._d(),this.d=null);this.c=this.e=null}},f:function(){return a.b.k(a.aG.e(),"{0}",0)},ieH:function(a,
e,k,o,r){this.b=a;this.a.t(a,e._nc(),k,!1,o,r);this.b=null;return!1},ieI:function(){return!1},ieJ:function(a,e,k,o,r){this.b=a;this.a.t(a,e._nc(),k,!0,o,r);this.b=null;return!1},ieK:function(){return!1},ieM:function(e,k){var o=0,r=0,r=k.ieQ();if(0==(k.ieR()&2)){var s=new a._p1(o);k.ie1(s,"_Build",o);o=s.a}k.sieQ(o);0!=(k.ieP()&512)&&(this.a=k.ie6("List",this.a,null,580));k.ieW("DefaultFillColor",this.a.v);k.ieW("DefaultBorderColor",this.a.u);o=new a._p1(this.a.w);k.ie4(o,"Enabled",!1);this.a.w=o.a;
this.m_cmdsUI.serialize(e,k);k.sieQ(r);e||this.a.sa(this)}};e._dt("CWAA",a.SA,0,r.icp,r.ieG,r.ieL)})();
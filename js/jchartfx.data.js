(function(){var c=window.cfx,b=window.sfx,k={Version:"7.3.5529.24241"};c.data=k;k.RowHeadingSettings={Auto:0,DatesAsLabels:1,XValues:2,CompressedXValues:3};var e=function(){};e.a=function(b){null==e.b&&e.c();return e.b.d(b)};e.e=function(e){return(new b.aO)._0aO(e,null)};e.d=function(c,l){return e.e(c,l).b(b.aG.c(),!0,!0)};e.c=function(){null==e.b&&(e.b=e.d("StringTable",null))};var f=function l(){l._ic();this.e=0};f.prototype={_0dN:function(b,a){this._bc._0bm.call(this,b,a);this.g=b;switch(this.g){case "Series":this.e=
6;break;case "Point":this.e=7;break;case "Value":this.e=2;break;case "FromValue":this.e=5;break;case "Label":case "XValue":this.e=1}return this},H:function(c){switch(this.e){case 6:return c.f;case 7:return c.c;case 2:return c.n?null:c.u;case 5:return c.p?null:c.v;case 1:return c.m;default:throw(new b.P)._01P(b.b.k(null,e.a("InvalidCrossTabField"),this.e));}}};f._dt("CWDC",c.bm,0);var j=function a(){a._ic();this.b=null;this.u=this.v=0;this.l=this.q=this.h=this.a=null;this.z=0;this.p=!1;this.d=this.o=
this.k=null;this.j=this.n=!1;this.m=this.t=null;this.c=0;this.r=null;this.g=0;this.i=this.w=null;this.f=0;this.e=!1;this.y=0;this._0_1()};k.CrosstabDataProvider=j;j.prototype={_0_1:function(){this.b=(new b.aG)._0aG("en-US");this.q=null;this.g=0;this.i=this.l=this.a=null;this.v=this.u=0;this.r=this.m=null;this.f=this.c=-1;this.d=(new b.Z)._0Z();this.k=(new b.Z)._0Z();this.o=(new b.Z)._0Z();this.j=!1;this.t=e.a("Other");this.e=this.p=this.n=!1;return this},_01_1:function(a){this._0_1();this.setDataSource(a);
return this},ibr:function(){return-1},getCulture:function(){return this.b},setCulture:function(a){this.b=a=b.aG._t(a)},ibs:function(){if(null==this.a)return null;var a=null,d=null,c=null,i=null,g=null,h=null,f=a=null,f=(new b.aQ)._01aQ(256);f.sb(0);g=c=i=h=null;this.p=this.n=!1;for(var a=this.a.ibs(),k=this.a.ibv(),j=this.l.Sb();!0==j.SK();){var m=j.SM(),d=k.I(m.b,!0);if(null!=d){var n=b.V.g(d.G()),d=d.H(a);switch(m.a){case 6:g=null!=d?d:b.J.p;break;case 7:this.j?null!=d&&(0!=f.b()&&null!=this.i&&
""!=this.i&&f.e(this.i),f.e(this.J(d,n))):h=d;break;case 2:c=d;break;case 5:i=d}}}if(0==f.b()){if(null==h)throw(new b.P)._01P(e.a("RowHeadingRequired"));if(h==b.J.p)throw(new b.P)._01P(e.a("NoNullValues"));}this.j?(a=f.toString(),this.A(a)):3==this.g?this.I(h,g):this.A(h);this.H(g);null==c||c==b.J.p?this.n=!0:this.u=this.B(this.y,c);this.e&&(null==i||i==b.J.p)?this.p=!0:this.v=this.B(this.z,i);return this},iby:function(){return 0},siby:function(){},ibz:function(){return this.a},getDataSource:function(){this.D(this.h);
return this.h},setDataSource:function(a){this.h=a;this.D(this.h)},getDateFormat:function(){return this.q},setDateFormat:function(a){this.q=a},ibA:function(){return!1},ibt:function(){return 13},getNullColumnHeading:function(){return this.t},setNullColumnHeading:function(a){this.t=a},ibB:function(){return this.c},sibB:function(){throw(new b.P)._0P("Needs DataProviderFlags.RequiredDataSize in IDataProvider.Flags");},ibu:function(){return-1},sibu:function(a){-1==a&&null!=this.a&&(this.a.sibu(-1),this.v=
this.u=0,this.r=this.m=null,this.f=this.c=-1,this.k=(new b.Z)._0Z(),this.p=this.n=!1)},getRowHeadingSettings:function(){return this.g},setRowHeadingSettings:function(a){this.g=a},getSeparator:function(){return this.i},setSeparator:function(a){this.i=a},ibC:function(){return this.f},sibC:function(){throw(new b.P)._0P("Needs DataProviderFlags.RequiredDataSize in IDataProvider.Flags");},x:function(){return!this.j&&(2==this.g||3==this.g||this.w==b.V.A(b.E)&&1!=this.g)?!0:!1},J:function(a,d){switch(d){case 18:return a.toString();
case 9:return b.u._f(a,this.b);case 14:return b.D._k(a,this.b);case 7:return a.b(this.b);case 13:return b.C._f(a,this.b);case 6:return a.b(this.b);case 3:return a.c(this.b);case 16:return a._nc().o(this.q,this.b);default:return a.toString()}},D:function(a){this.C(a,null)},C:function(a,b){null==a||null!=this.a||(this.a=c.DataSourceSettings.k(a,b))},ibD:function(a){this.C(this.h,a);return this.h},ibv:function(){var a=Array(this.e?5:4);a[0]=(new f)._0dN("Series",b.V.A(b.u));a[1]=(new f)._0dN("Point",
b.V.A(b.u));a[2]=(new f)._0dN("Value",b.V.A(b.D));a[3]=(new f)._0dN(this.x()?"XValue":"Label",this.j?b.V.A(b.b):this.w);this.e&&(a[4]=(new f)._0dN("FromValue",b.V.A(b.D)));return(new b.af)._0af(a)},B:function(a,d){switch(a){case 3:return d?1:0;case 6:return d;case 4:return d;case 16:return d._nc().m();case 15:return b.K.r(d);case 14:return d;case 7:return d;case 9:return d;case 11:return d;case 5:return d;case 13:return d;case 18:return b.D.j(d,this.b);case 8:return d;case 10:return d;case 12:return d;
default:return 0}},A:function(a){this.k.w(a)?this.c=this.k.y(a):(this.c=this.k.Se(),this.k.v(a,this.c));this.r=a.toString();this.m=a},I:function(a,b){if(this.o.w(b)){var c=this.o.y(b);this.c=++c;this.o.sy(b,c)}else this.o.v(b,0),this.c=0;this.r=a.toString();this.m=a},H:function(a){this.d.w(a)?this.f=this.d.y(a):(this.f=this.d.Se(),this.d.v(a,this.f))},G:function(){null==this.q&&this.b.d().b();this.F();for(var a=!1,d=this.a.ibv(),c=this.l.Sb();!0==c.SK();){var e=c.SM(),f=d.I(e.b,!0);if(null!=f){var h=
b.V.g(f.G());switch(e.a){case 7:a?this.j=!0:(this.w=f.G(),a=!0);break;case 2:this.y=h;break;case 5:this.z=h}}}},ibw:function(){if(null==this.a)return!1;try{return this.a.ibw()}catch(a){return!1}},ibE:function(){for(var a=Array(this.d.Se()),d=0,c=this.d.u().Sb();!0==c.SK();){var e=c.SM(),d=this.d.y(e);a[d]=(new f)._0dN(e!=b.J.p?e.toString():this.t,b.V.A(b.b))}this.d=(new b.Z)._0Z();return(new b.af)._0af(a)},ibF:function(a){this.setDataSource(a)},ibG:function(a){this.l=a;if(c.cD.d(this.l)||null==this.a||
null==this.h)return null;this.G();a=(new c.cD)._0cD();a.add((new c.FieldMap)._01_1("Series",6));a.add((new c.FieldMap)._01_1("Point",7));a.add((new c.FieldMap)._01_1("Value",2));this.x()?a.add((new c.FieldMap)._01_1("XValue",3)):a.add((new c.FieldMap)._01_1("Label",1));this.e&&a.add((new c.FieldMap)._01_1("FromValue",5));return a},F:function(){for(var a=!1,c=!1,f=!1,i=this.l.Sb();!0==i.SK();){var g=i.SM();7==g.a?a=!0:6==g.a?c=!0:2==g.a?f=!0:5==g.a&&(this.e=!0)}if(!a)throw(new b.P)._01P(e.a("RowHeadingNotFound"));
if(!c)throw(new b.P)._01P(e.a("ColumnHeadingNotFound"));if(!f)throw(new b.P)._01P(e.a("ValueHeadingNotFound"));}};j._dt("CWDC",b.SA,0,c.ibx,c.ibq)})();

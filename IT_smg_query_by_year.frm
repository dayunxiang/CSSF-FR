<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20141222" releaseVersion="8.0.0">
<TableDataMap>
<TableData name="smg_query_by_year" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2015]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FR]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select MONTH(date_rp_cred) as month, threat_lv, single_threat_count, multi_threat_count,clean_count,content_filtering,malware, invalid_recipients, bad_reputation, spam from dbo.IT_smg_monthly_report where YEAR(date_rp_cred)=${year}]]></Query>
</TableData>
</TableDataMap>
<Layout class="com.fr.form.ui.container.WBorderLayout">
<WidgetName name="form"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<NorthAttr/>
<North class="com.fr.form.ui.container.WParameterLayout">
<WidgetName name="para"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground"/>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="Labelyear"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[年份:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="50" y="25" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.TextEditor">
<WidgetName name="year"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<TextAttr/>
<widgetValue>
<O>
<![CDATA[2015]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="130" y="25" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.parameter.FormSubmitButton">
<WidgetName name="Search"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[查询]]></Text>
<Hotkeys>
<![CDATA[enter]]></Hotkeys>
</InnerWidget>
<BoundsAttr x="230" y="25" width="80" height="21"/>
</Widget>
<Sorted sorted="false"/>
<Display display="true"/>
<DelayDisplayContent delay="true"/>
<Position position="0"/>
<Design_Width design_width="960"/>
<MobileWidgetList>
<Widget widgetName="year"/>
</MobileWidgetList>
<WidgetNameTagMap>
<NameTag name="year" tag="年份:"/>
</WidgetNameTagMap>
</North>
<Center class="com.fr.form.ui.container.WFitLayout">
<WidgetName name="body"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[1409700,1181100,1066800,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[5905500,7772400,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="2" s="0">
<O>
<![CDATA[SMG年趋势报表]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O t="BiasTextPainter">
<IsBackSlash value="false"/>
<![CDATA[月份 |  项目]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="month"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="2" s="3">
<O>
<![CDATA[symantec全球threaton级别]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="threat_lv"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="3" s="3">
<O>
<![CDATA[单个威胁邮件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="single_threat_count"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="4" s="3">
<O>
<![CDATA[多个威胁邮件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="multi_threat_count"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="5" s="3">
<O>
<![CDATA[安全邮件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="5" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="clean_count"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="6" s="3">
<O>
<![CDATA[内容过滤]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="6" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="content_filtering"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="7" s="3">
<O>
<![CDATA[恶意软件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="7" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="malware"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="8" s="3">
<O>
<![CDATA[无效收信人]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="8" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="invalid_recipients"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="9" s="3">
<O>
<![CDATA[不良信誉]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="9" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="bad_reputation"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="10" s="3">
<O>
<![CDATA[垃圾邮件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="10" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="spam"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="5"/>
<Bottom style="5"/>
<Left style="5"/>
<Right style="5"/>
</Border>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<ReportFitAttr/>
<IM>
<![CDATA[c$FXtP^E:WB8eER9e'A#WDi"WWPQfCODLa;bE/J-M*]A^tSN.<o$R+8lOu=I,N9s#g,YWls-J
R0_`lo:SDeNb,SF8Jams34QH%*NK5@4(ITDPs"fDBl$n*@RR>A$Y%[r1'1H./Wb>7F>u1u#B
olaKTX!,t+%rJmf<Xl3!DNkI;0H2P<^f2Sqfc68+l1UAip=)SXGT<S:%=mCaG_X=UEDiY!\9
C]A^5*5*Rj^(`3tCP:1X@ifpkUO4pC,/6T8KVk=:nlf/=Rs_oa9Hte.WY9%5D)!hq+]AC93?gb
Q&'\Vo6#[6T;amnmQd:eJF?*_Yr*;F*3`018OJ1W6/V="HG;(a.mr;H3]AS&_eR2s<28FKtb!
cptME>ijjr#tUupN3QRfY/3qC4R;%hnN?"[Hq!s<&o3j'o2nVC=MGIifQE:Zka(_l9tj!Yk*
TI6I;H:2"g,AMMt^Yc10?K3W(%de-Dtph?*$s-Ni7..[$K!a-)gZu,<mhb#qrNR-epTh-G,F
D<;h5_PD/:o&^gg<%pmm(]ASci>fd]A/WoX,Th[1.B?3T]A(9^BFKq+F(X%Y`$i_j-)I,$Q,$3r
LN:ZJ[=l_S#sts8a[0;W!e^,(*d3r:=;l<U%EgP?+JfoeZmVh+;+IPIdoRG?n2,`fTMW'RLK
>sP%X.h?l[KoeFcQ+KUA&4@*29`$'6<(BVTt%X+HSU.31a=+5^fkETjbLD/l/kMp!jI(b6A$
2&`=[Li+..dQ<rM9nafp"g1u\'UEp(DV$QCMcYU4PN?R=,_95K,6ZT"<HNW5^,<[-g"HY_[<
p04p0[$Y-1VQ;O\Q=>/C0]A$XZ^>t?PsIG(0C:Mq3Bhjp,gdin8Od1$Vf'0[?\<5FFFBE:KFZ
2g@*D[(3Zulpp%nh#BM'b.4*YQ]A`-@h1h.'rk^j%F(\X1OCeS_/=KJbg@K/MNE.0?Ca9hOAF
Z97E,%#-:60.=-Lf\__h+C2$nW(!`_BNEO3PpI##h`]AffD@nF1kh6Up3B!WITGpN*A=a>&_1
l:C?RSeFd'V8N1Ds.>W7s/3u>D(-/Bbu$+Q1TJ=#H9aUu`C_g!!jdqQo[0FR(k-`@jq[8o1f
h\I7!ic[Y&\II=Oh,6,UY3)X1D8q<#")m"(:7*S7jDcuJ2U"lW?oM_sdf-[aje8:4R.hCp$9
.s%.W^s[H3A`KJZ8pq\0_;M:;2W`9:GM=hP&6e)u[,S&##RZDWE/S=bruDW(Zbb>0Y!B&C*S
7lm>*2kj"XG6\jPO-jgnP-EABOTNCbmaFH?1N[TI-`Ij&!AX6Bm@pglYm;1t6I:qGSX[KB)1
Fb]ASD%n>8E7:QJKFdR!bt/*j&;Q#unHh39\c'/18mBl_:je,//*oC.o_.NbXm/pU:0b+IGsQ
'Qd#33.7Q"UYmtckAbDIJC/4;O.O79H)O:1r(>Q4JnFuQ#O2_h46FtQl=a62uBTA^kc2e(8(
8^Uue72MGF[bpVCHp-088PF$H]Acr+SCQCm5]A-(0#(hi;9^sa`.@&qhS*I<a0535oJe%-o&R]A
#n+WYu7]AWP&PRK2pK(E+tXcE;'R&/5iKLQco8mV]AS9ma#'e4Rdrh3-gVV\3b;>-UQL+[+Qu-
ZmBTQro[*!+_dC"6Mk^HQ6T/u/D2.DplQ]AasB!*s6K8Cb[,LIEXe?>"71*Q8-bgiQ9Ka8hF5
O+3ACf&LoFC/k/dcL?mcE%,!?N->&dSWnbfRHbY^&q`qQ,SkB,\2a@;,%]AWgZaD$A!eq_#/(
2`J+m(=iBdRsnp!nnUb<u9@'S*sAM,JK6DG%1g+?0cX-]AstHKo$W4Ht<sS([<K`(_auJHQD0
\)ooD_2A_nbn5P(^Ed"8qTH8Ul(*c.@1GMU<Lmr)m;UX&7uEO9V:J"F*\LDiq>s9U]A3Op7QR
E.'im'<AZOTST^8D*lh0?h+P3,GlqK>38(*?+*GW%<^'"TnB6pJedm-;9ULaPDAI5N0;+OWf
(X0bXcb%tlGnZZP9aN?hdU_H%mQHK_oPRS+-T'pKONnC3-SNY>"-oC#Za/efRO,TK]ATU'2*K
qM(ePU[#_E6Utgo]A$?Z$^L>hbZ'o#Td&/+lN>SDASq`H?.*W"B(08V,&G8B"9;PA!+fnRKEo
-d=3,J"NCm$Ik<#bT.FfrUM&)'D?lP1C:[NPOgK^#;865)(bFh8-#XJ^KXQ_TN6S59DSdL[]A
?<p]Au%AjVgJtY?DP[<6I]A#-&r@.(Q3k@u(0P7je@]AuQ?59NVnmZAkM\7K#hpJVG`;og)Xq>/
Fj)Wf&9@hXnY<q%"j-Ongbtn.l2?Jf9]A_(8G2H-Yq$n(eDi47:Y[gLe7#4Rn9WId5+m]AE>[(
@&2XQhI%r(3j?%</9]AIpK%'[CM3!7tk:8`_0R[WF4U8?Z^UC[4)%QW;QD9(n1*aAIif_q;A^
3.*'q9&'jG+NS+WCMF54L%!F/]A!oZ<(4Dgf!<:r'/O5%QY,P@1c1<Eb@FF]Ai7rGM$tP'.!+)
/n)2SnB?G3D3ch?nAhU>ZXf)Xoq0]AR\McM8f!$5=Xq.R6ALZs/1irMqF_..t!papOu6DDq(H
kLa0?<d6R/@^Zc/)+=K#6[m#0]A*)JWa^eU$VVBsD?;2amq87$Xp3dd]AEW=;a9j8cAY*a/4dL
I1-ekNnC%&JCZPpff6((OUoQW+38/2#@P)Kb0N?C[IVl"LVqad)6MZqWOU$>'8)SbhH@\&Gi
Bo?n^B-'$2=*WY/gC[;q=VfsWW4I*:!fWg#5[FZ4aA".(/@ia(KTogfp;k3,/cDGHM-"!Os'
)''Dc"%#r@@^1#+,JA<D#62k'gs%@XP"4?4a<r"oKJ0D8(q59VR<:O^N.(4p0F'o)YEQK'KI
TM@%0E%hO4-9a*Z\cE>NVH(q\U390R3Pe0;%;2\a3(9I5Z3)gRW,FsXBY#B?ViULtKDNB]AVb
p5QcfPGIFn3-/=X\(pKH%4K/E\eT3u`:i96bOZh&8L)\kJu_O$:@_S>pt&!KlDF#L9ui7Kif
M:&[X#KL7Nu3@:mK`/QH<;_EgAd-\P/RpioK"\)]Aku>(&BKt;f'lpnCqqhX,Us-Sf.-icq8%
PR+]A]AC;g=YBpp<kb7IbXgg.<<!B[@`CBTh\4%KV%,A?n+qk`1I_#b+d&Qa<rT4#H^M>fAL*T
SM0qbK<3uH%<=BhP<qYhP5P+Ui0Z)U4_q3C[VuH^V"oa'O-ad>\O'mVqcL"<sO3e9C8HsTk-
o]A&mC@Om1d6=<K^T`.lU[;rP%k.:kg(&0)anpa'.15T,ksUN[SWf_?Rbfs,?J)7j)QML)]AYQ
9,'uO/chVnj;7Fc>W8tXO_+`gf2sS*ROGukZRbpi:T=V=cqL2m,nUnO[?T\,<eeO+:`9j%nN
+1b1fE@3I(\5lW.fuS*dgQn"u38oaUbB,ZL!tK=O.k6/(f;,b5fsd^C<o.l[U;=:hrEW+#4m
;<m%2J1a&DZhD9O*4ddKqi)P46kPWtTb4%mG!s/"SDpj70DQCPDB]AHg<oGp1W@VD#2dMQHO+
u-ElL`"j.GBGG&QZH2^3`q<,5I$G]ASe8Emjc)DDpr"PH4iQ_c/PWl!M06]A#K.*k0Nn!/64W^
;/ff'q6A*;;h6kq5qp>IZ%.^dU5TaNpHgQG5ck"5aVdH`T^`!D6.]AOs($QhIj&7ilU0&W/m2
"\uh+=Lea6OY;dn?lY7sK)^-ln.6P_>*iK$1^HVmJZigfApHLFWW?X47R<+^/RjA;STE!ERo
h.$!D"H7MS/6TiZ9usMgkZX&RBGUk&[4OF,tLh[&Aj(Ri5hda=Ut24K(oD+WfS>Un+@mS`0G
-q<(@5cmnO_*dc?f'o?PU'!e7R%i_[*\BEdscp"ApES<M%4n.X1<_$JXhp^NU-Rt0e<lI!_X
/kfq2$F0kl$3C^WNnR_:QCbM+VU^C^VQLK4i`&.;,MIo'&Ghfk9KejR[`.@qJ'E4[f"+ZAXn
'$3Tai;8)Q!hOOE*ib@Cc;Of6oLNIs[*;OnIdg6q"\%Dp:qIF"(DVG@O&M`)3I'#&(Hp-gUq
#B`L0(%9\.iTD&OcAe:ApY<Y+d[g[/n*N2Ua@BQ#\kGFY`%oCARpDmog-7C$o`MeC@,8b"54
imRrLL<,i[<(Z[L1uhB;+\\D?G)9D;=tI4S!<'iH>sPZFANb:9Ah_^:UHpZXCnfVNP7oFQnL
fnI]AuK528o`HiE-dR%CD"L[d!+`EA=EFG`Q#!O;F<&lb,AkiMfB9RS^2+?D#CFG(TEL,&EiN
F@P]A0-&?B?Ns'tDkBp:4g7_bC,7oj1gXG&UWkL?L`WAH%'+u<IaBI3@S?FQP<Y\n.)g.$*k+
L-V)+9Ke&$Asqr%FA*O@FN;3hU=6*-7RSIX<(QDQ_9rl[G<aAK_M/EI)<rMrm^JK.re$\s"Q
8;_TQdrFYZhSg9jg0TRB6gM/#_Q(q@2M:PeH8AF7f.UMF\g0fW1S:.`[[s7b3ck)TQe/RkAd
HgGp_*^h[a!sK2"b\]AjNp.`/^\/q_0[h![]Ad`=(YA><eq_VgRni,Z]AU&Y<g0V*<,\Z!/;$tG
GXcdI4C?>@;+X(Cla\)a`EFD\i2J1;[`^1o(;2dgBg4NGfSM,7b:R9b9]A&5<o+)3C=]ABLV=S
hAT5]ALO-jfX9<aa71bK+D#Sss6ZAZ2T>-/RVBKk2ee[hdia'44V\@2)mh_r>+n\rY'C63NGU
ZI/3Kd3-8[:;ja#a+m.^!fWr2kUqm?e?8;!e.ZX*;Ynabb;>DChH[r'<Y="J,cb>7pBAY)U"
Dt*jFK$hXp^^g@X6\jCmHDrE<J>S0A(fg*H)f2je^T!bG=<`t<<p_tsM37I9]AE(=G(@kX"?I
[cQ`<\liXVZ_*R2X9aQRpqERH?qGn[#s[1<>13Q#3EX11^d,f7X<g3au`j%2iLSMe!RJ)KPW
)HU*K``f9U_L6#L;U>Q%5+h`s2(qgFl-TMY,OfQ]A"J`EAi-9L';&/0&4^K.@qB5o@ZotF`B7
Ns&[MbHOj7_+h().Tl*m$Z)!LTkDC`V?h%]AflLS-T>pSX(ZT9[9.Z&hL.6RhJW1`q!)*L'Jm
WXP=Cg3ghNT2MLJ>,>5C+QKJ$'7n`NZB,[4N0Krs_mNn6`rFNT0%e_f>,f[1i%?q!=MRJcD/
1oB9*G7KS`U.An&"ZIW(HFK.2[$ZU2g]AQd#lK4Y%:FC$))*or":<8iReOsj'i:jbNg/-e0i*
Gj1KYF7/d4>hFJ;0:e75l,POknV.AA74$a,1*+Aj%)$_g"oS4U9E$[[leHQBHBf/,]A'9)1cn
?q0KP<4k"$rq._7Q,[rZ6Au>.IlC2h]AC3QSPkO6U[=+0)_%C,4&UP/jlUM@H=C(b[O]A?8H7:
!e</!Gt00_^>T=`%&4=)D5bN^%Ku:h0j]AWDQ<S=$dNr!j4.#A&]AoTq!Xsf(\%s9$Z7P,QCWo
-#k2IEe\G,?3*Ij>eN]A#%6SM$NoW@]A_!EdZl^O8/&l'.FPkPURM0NqDu5-V4Lj[ou-%l7^L?
G7/jc[irT[J>IJ9D4.E,4u]AO2!`-1\!F8PD.J=gA:6D$Em7DOV[*L5VIn>)UJhRn?oNer<kQ
$3VV$YeB$h.Gb4ddLI00c;sc+>X@@)G-QET>%*MM86LH7I9uR%l5<6D`_'*J:uA&qZFKdY$r
U;rHi@"u3/C_^9UdJkf>mZjK<VAU8NZ[&/eQ*kdp&2%^p_!9.s+VL.jDVU"4?D6F8!(]A3F4D
rI*egD68S3IPC'd)eF]A:8)C1+`5VqWu&6;S8._h0r%T1H9kl`(G2VLBBK]AoNZMJnAgSTdYnn
0AYV90Vdl8@21qnm@_JQ\X0\Y&=:QE5-?@Xg_,WlSddu/Eqeq<A4"2^XVY.eOkPjV'pFp&mt
,\Ks=MeP-2p0F+2EHOF,&J<>4@!laNFO(ALI$4Q":g!2Xph8Z<<fV*f<r=>afYjSNI+d]A8T1
dhUVcg;Nq#II56'VO-TYJfImbbts>P:=Tf931K?ZI0nOO?D+/]ATE!2h`-!Q./\^-!_G\c9$s
7F>"@S0?i03C>Dj!lnK>J4.AMMX;iZNGTE:nn&aCZ[dZaVq'\iR&?SKOT(mT+[bEH1n-:,pe
M,hiao%KQi$NlKo:go:ie6IX(K0X4D0gK.=<fd%D^$8@k.lfdCm3]A$CVEa.3r3lI>"@E#mL.
1!gd^L`<abT<CsdZPU+o#?cN)Z+WLl9HAdgj1Gd0\O,T<*c7CbB%AiPrrG/SEp^>A_Cl8B+O
(-gl*]A;p#9Ccjq89OM$*\,Prh2tD"b85[9&(-bA1aUlY\MJcH8+;ePQTeW`lDJmoa>'2a;:o
rQN9\F**@#N#%:D-:1DK60RP8#=iEu*0h<EE@M`D>)<D']AW;n#;XLe-`OpTN@2Mg]A0k]A_%EU
3ojSmZRZXIaaU>0cEA9[,9?6cA&'AtYppYV?1X3di$?OrU=RsKf"8U?^`]A9%$nM>sXCIe82^
7KFi)i(E<SfP$99HB5k*]ANrs]Ap(q!2"NCBMD^ao7kd,<s+`Oq:58_,f?=S*`=RSk<SOJ]Ab9*
OGpuT[sO.C>_R#"FAku4'C<1eESP$"8$4>\G/hmLg_*AE@+5.@BZ\$G5Far54,C>e^n<[4J_
\7sN%90?m>YNR%/54cWI!M@b3_kgMV^;<"\b7N^am?mN*-4BR.g6@%MMIe7`H5m3TM&^\L5T
s=4UN`a&KEFcZoj30)86ibjY>o=_ki-ViT<P\$L;J8oer;U'f!qRC1Gh!\Suje^W1^D?G&hp
Os-o!PE&V%DkZ#-qE$R7>&@c$?q-@5+edhE.2BKJ56FX5#^4JRSB<d5CXq#`iHBhAm)?s)f-
sCV*CtD2;Y9n/EP#R27ntKuu]A:t]AkZ!3`kUHGZ2<O]A9MFaP(b9)Y\g\uhTJ,o)a7m_EjS/f^
A3gkl^L8G<K]A*NMB6a7".u1'MbY5lqt*MM29uV2C[gg\1hN>*$<8BYH6kdc*A.?I4#rf'3iE
430/`+l^EQX4j_A"k&DA60,L)gpePi2)P8[q,o5-5XsL9mYu-3"WT#5Wo![<U(KrnVIuQt<:
8-dn[u'OKGP@,>sLUoO7V6X?/7$>faD/P;1MXG)Xq,jn)BmtVISIGYPH-k`T'h;gPreu[s,V
sgZd(kQHXWf^ZEbR>j%/n_(&O:k*2AZ!PCC^`^[qGa,T\*GrY#$mW.0YfWh3'XFMBTN7TN=K
$SY#s4m5&DTfAMZaBNu6/q_$k4J:.*2\U*lgVhg[4,KFMj4'U^fk&U^)(bdfYjoV318-jiE/
Q+Z!$l+-[MD!fCN+hniNaN>!YP!(fL/*1,6&sDY$@1e_Q<u4JE^8Dc.WJ#,EJ-$aEek%u@"N
;Hf-4Q0aN:Cjg:,SJ3*i`+@:1!'G8*<Ei<`:BfG+lo]AQVNu8.@pcE9*,'qMLbh4B!-:=Mp4S
.>-U?i\5BF<TsY05Dk9u?S95d8Wnpi*bJ*2H,i\+#gf]A3tS->LSV=V0U<G(Q:W)A&'P7gbq!
bimM8QniS)5c2a?0.ef65q*p=::d>ScaZmEf.;.Y_aWjB0"W*?J0+s;<lSN8"p##$mfMHcDP
`^R,Nd6W4BsVfl7Z[^hX\*g9%)ooplD`S4Go%pL8u.]A7)\.3pZZdO?.]A`hM'm$3::e"sJI#<
>FFf\&_<AD_,m"WEW"50UC&g2a$j0r@'WA)!"-)hS,'PVc6DuO\Q\.tRNX7NH7Baol,=]AqR!
;I$rf)7:G...aZ8n'H6!NEZf^\s*;C-U_Gcc%tlQ`ERdRNWh_,N.UpN'Ku>fj,[]AK[Z.H`D4
#+P3U3!MrbrW)i/"BWR%LtuV!;GSJ([8(n/g+/S++1PM1NB*Dhg<1(2TRCF6GjZo\2\#Om#G
&Qj!l):p]Ag375fB06)>77l^%GllaOb#\_H.=5$4rlQh\%N?Fa&EX'aHOYP?f)p$gbUe9]AZr0
!rbUb%)f8Ldbo.,(sQnLM"_ErBoTsEZQlD=soCifQt,RZ,o5;Ji2k"STT3XojQ%!f[t^>X4^
.YoKnL4i]An\!>Ss?ul@#$'P\D(Qm%\JrRt\`U/dJ,nUOBBRq>DDq.M\D]A"AF<]AgK[Zi@5V[Z
5prHW0Z\[frcQoA?R=e&Zb1#%T+BI1,e#Xo6:\F2DT@\q]A!)R#ZOSN5&*oo*[>Y7FDK9aa>s
NL$`$pK7[fE_^:<q=?e!,@_*A=L<r-Fq`QZ`EYWt.4nC6<E@Dt'!3>gK3pJ[HRjGiP*6fiT=
CT0iAhEGXh2Q-F'=]Ak:K!R?K7bP76-TqBPO%IE)M-kJ"![c<C$BYb?Hf;W6Oi6Q>$\l_\gtT
'Bs"#?SWo[,6'mRV_\tMp4J;eVGjoGFp7T)\?Me&Y-fp'g^O$"KL/JfjUI/+Lq'#m>@h1%FH
'f\7sKQpJ/C,n?[aP8<oFm/X"R!YTSgOTZ?-'+a9fs;JaTSBMOBW]Athf97+2muknN?H]A>9YR
4!@B<`r#GY3n'd\m>XfQHj6'PmU;:_1O[mFiM-g'K]A%JQpSG`96ai*4kIn!ZG:1.BFD(5'PW
I31,'=kQFVlE!hUH/cIBZum%$;@3I></:4@g[S:p-E5WDX`g1XdB%E1o&hFN&%;LTXP\9o[n
mNFX4?q+(bF%@*<La86au\+%D/4!1F'@4@'u.&,PURsMEm6pj=YC):bGM9aoM*Db"^d4kPoc
ea[%p8rCDQQ-+%0eUgd\=QhS.F/!`[Omj<`EQp;kfbZrr>p'%q@eRg<fQ&+h:ug!X(A%o4)#
Rl=,-UQ6b0WWGrXBOH8Ek[^"I11I'e=.f3I[`m-1Gp$?mC*+!fc%0qmQS=nS),/Oo?q+W-u"
jq7dfFdG`@g*ukUT1?,I/lpJ5dT\6"p"[8*D+u.:Dbf1o3cinb/e4mAYh_*L)2;_`.,3U_o;
S'RSs@>8@b%)B:L'psKTgBOm)P!<$*Z\n:r_g2LMlfJ%7I#dCK+Lu>S&a3l7tc;5j+''MGbh
Wkb=U#.,OAP#_OjAT^dLR"/YnoTX;+uci4nB>EBW]An%[7.Te3shH`[/AR+58rq`f;?o'NBR,
llP97Plh"UX.D<$RQgg$<b'JE4@2FV=96aYh-fUGGmdk*F1qWf/d<1&X1.=/C>$TiRTGD0YU
r7>Z%imWp`j2VlkaZ6(VFB\/G#D`nO\%&"V==g"B.An$c'gr<lKkgC%cibrUDgVVf!A.0WS0
;7Y3-m3@Ueo:i&4[;9\m>`IdH]A(RAe/cK%:kTJJ\RMh"^Z3GAh0rV,$e+uuTa>D7fj+sWIEM
1\sFWYEp]AISIpeM(]A64(7(R_G&:[Ik4D1XV0-I3r1Vn0Kt17O(T&&,h[p\8@@f7q3p\H#40R
ET$YpHo":CEj`DV\+a11X:eQN&KiDCCNI(G@2c2R'd61)s<5)WB_Cg'`l-(sm@C#@c_XgFu`
XV[kqODF9P#"<I;HRTSBU@Rq^^,/[$Id"gYZOi)cHje"NeW7>U]AdL=>4_9dqIE3e-nFg2LJI
d"Xt%:EQa(BOCNLP^3F$@bIC<k<[<\<LG<sQkY:[%*1n<H=0$7Urcs8rt(KdHY#psblV[iMJ
:j=_K"L`4/>(-/NTcqD<o`%<m=DoDug'oPDh[ZLE=h6a>-7*tdn5R=^S(f\AWfRDEKcDg6I'
]AT*Pk81@L3k&nMO44YbA@u@WH-Vb+dluQ%?qn)>WI;:F"b6jSD/XoZI=<I&kI?rN=&=cq%:a
NKS2<napSS,DbQg/`b;r_bL16o5@TT=/DD8Q;WX#R>ld-j_;sf&)/k_>0#auE%t@C%&FB.;i
r.:\$gp<]AA,F3ad$aOb^%?k(bbXSR2sO@+Y4(de*r,":qcQ9TU#RA&VXr4*/ao?o^7)*[aY=
QJ_0OM]Ag"K#Ec96UL.8!GE#l[lPY\`0CF02FoMAo[$m]AL[Y]AH5.n=r]A$EbqL"US<?.e.>hjm
)DV^W3c48t3cr>V:0#A7&YDcK\nl^)U6edQ`X(Sp'#i2XfIP`6O!@l,a%W`\g$O-9hh#_U(t
cRM@_]A\72E^J?]Al!P[Y`B=chStsT9q@/,P^nE)J%C91n^Kj^i=3B`h0d&LdEct7Hr"q"pQ='
pQYN?tS(aRU6PeVd+5NdXNA"1#B.ej9pXPk]Aa5M8@@@=I4C#G?"$5rOhV?%d&C)'i)kbX%^:
%N(%DSN%M*jPQJ9^90U708)7RYWDA`DtT=Ku.T+5MeI"UYle4G1XRQU/?ib5@X;,&FL`Wq-2
6ml1^``o2`n>@SUrgk-YO]Aq6o\2*@_K`l@+QE<?&qS.=4o9$pTfF`ql"qIY^ueJR*WW?-=@W
)N56?bUX-g+=V@+k4aYDFAquGXhA[d8DDF#GD3"1fRD>iLeqqC-XBa7#1.6@&:e#;/n5F_po
S'OXEZ%4&UK7D-$2g\m/e-:SRd^WGpj31qTE/#(1568\uJi@82)*25gX)V3"ePZPuh-MXgN-
m,.o1sSN`^U1\U!<m"J_lXnLA17"7.c%FAioAHW*FhMV+!hJ#;>?2C[OT"m%^[XCenSdiu4h
.SeDGJM_9p\p,bT6kO:T9mf1'/4us]AneY=-*]AQ;g?)onYFm&bfSg)eApH51iq"e#[9"K0^&#
g,s0KFN;kWbimP-DK!!KE4W)Q*:r\p\U`]ArBZAtK"ehhDVgc@jGl>r^IF#':l=<an/7R%l^_
olF4m23%cAE3(TgN;]At-r$6VQG-GZfKPriQdftfBG%?2QMB[VLI"-%h5<4W_P6U9d]AO?7d+\
!mK:(+,'>f4f8?TMqt=mK3-ntuDOn,DMB9RBtD._DS]AOg6q!pIQj]AQK9b4A3ZLe*L6!C/XA9
73FI!%bB5?4!"0qE3gAHp:=<smbI[e5[Eu5AqO9eD1K.YV,58>dS+`I/:)tWq7Y)ea#2[<cc
)'*[4p&Ue5=g"Lidf(l4'0=pD`:>mhN(HQ^Va[FFF)eP%n1DQ(lWTL'4F4G,EO,I\"i7bbgi
\urhW\<^fk]Ar:")H;]A]A"tu_*dGR!9Ltk)TF]A"Y)RfOnIn8?k5eF+h9sKr*?=^=)<6-]A:C"qn
+s5GOF7Lm&ce[AaLDHQ5LIfu:%^`KrIGT*qda68GNkd0[F8MS@9K&T`7`alp57+lW_\C5q_A
ce]AQbYQuKO2/rs3rV6nGmF\fkXglVHG*FYNi-n=\]Ako`QkQuEhLLWrUoIH>'Xs9Y.Rd9rMor
,k9mg*B[UL83S\9DM0ON"Z5Z=+jIQ,l+!\um^+$B$G@q.>m7[^sY353c'kEd8;g>(gP!&kDZ
ia5&Jf+aY5jWgd5KpK\n#q;g:*B,O$G?/kT!\-p^8bX*3p\i")-T:Eg/[+uE8ZQ)WtL);r>[
_3mTQrjc`bP+\0RC`k^bc$AE>3SA.'E*TD2R*"Wrlt#p7F*^.\(dnW!l*\cN=DdG1>hrQC#)
CAR!_>bka>@>!dF^j+d`!V@1/k#dt<#\bK)G*M8Lpk'Qf0<'_G#1m0DQotG9S\=.%'rAYDEg
sVP)*kgo$3to\"t6`@dX.sI,<kj_^<k@Red^H(qM,dW08$5%^BI$?,q9GlArF=fF;1.,R+JK
RZ&!:X)^\\95=Um=j.+?.<A8Lm]AD6`$&&(/oJ!u"\Qa?G0p<*$nquK(9rM&XEV1O&n.)kmZ7
PR5urHG_P#`b[,l]AMuYYS15QmBlbG_R<6[Inpp<@t!0HIG:'mMnBcID=*Mo&(NP3DM?PRR[7
URp/\O5r\(Rs?c''2(,f[g(s&E/#S.V\HT>QQp^`8D[tbrVX?jGDEG[G@n4b\ijan0c2\[d;
"h.Y*EbGW&KT0dF[ju)>TJ@W993-jI*%km)aS+bek/^gJGqr6a:gc!2M%ngF5s+bL;*Eknr>
_\g(L6*QOgo96LG*>]A-C%ae,I[Sg)>#:kcL!iL,0ig(+[Do3VLLO[/lK]Aee?RcPofUfE$Ge0
`]A>J"3#\C2EaYm2Z*,L\AMY#s9hI+1j4ig\em,3Jfdf!gB%GUVMCe%+nO6!UFR:?s<*&ZAYr
B@3W,`W42!IoZlRl7"TM4_.nMM$5I^fh*F^r<012%K5I&g%sq)[Qo_n"gru!<93ar[]As$s''
MH]ARb4MEOI:L(B@T!b<\%?A.ED5If;,h'T'rn#\XN#OajW6;?8V>Ch%UQQMF*f?T\bNY$pO&
3?:D;/9BubF)fRl5F3L(d=%9LmQqnb<eW1<aAgGQbRVr=34;"(cnCUcA(a17:RX9I%lo&0S5
TI<hq#)MjJ`)me0seTrKr8c(OJ+Ab":C:_lI$dClhcVqd4lCk^NfJ-7AC[>l+-n!!~
]]></IM>
</InnerWidget>
<BoundsAttr x="0" y="0" width="960" height="270"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[1409700,1181100,1066800,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[5905500,7772400,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="2" s="0">
<O>
<![CDATA[SMG年趋势报表]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O t="BiasTextPainter">
<IsBackSlash value="false"/>
<![CDATA[月份 |  项目]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="month"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="2" s="3">
<O>
<![CDATA[symantec全球threaton级别]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="threat_lv"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="3" s="3">
<O>
<![CDATA[单个威胁邮件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="single_threat_count"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="4" s="3">
<O>
<![CDATA[多个威胁邮件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="multi_threat_count"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="5" s="3">
<O>
<![CDATA[安全邮件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="5" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="clean_count"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="6" s="3">
<O>
<![CDATA[内容过滤]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="6" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="content_filtering"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="7" s="3">
<O>
<![CDATA[恶意软件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="7" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="malware"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="8" s="3">
<O>
<![CDATA[无效收信人]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="8" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="invalid_recipients"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="9" s="3">
<O>
<![CDATA[不良信誉]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="9" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="bad_reputation"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="10" s="3">
<O>
<![CDATA[垃圾邮件]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="10" s="2">
<O t="DSColumn">
<Attributes dsName="smg_query_by_year" columnName="spam"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="5"/>
<Bottom style="5"/>
<Left style="5"/>
<Right style="5"/>
</Border>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<ReportFitAttr/>
<IM>
<![CDATA[c$FXtP^E:WB8eER9e'A#WDi"WWPQfCODLa;bE/J-M*]A^tSN.<o$R+8lOu=I,N9s#g,YWls-J
R0_`lo:SDeNb,SF8Jams34QH%*NK5@4(ITDPs"fDBl$n*@RR>A$Y%[r1'1H./Wb>7F>u1u#B
olaKTX!,t+%rJmf<Xl3!DNkI;0H2P<^f2Sqfc68+l1UAip=)SXGT<S:%=mCaG_X=UEDiY!\9
C]A^5*5*Rj^(`3tCP:1X@ifpkUO4pC,/6T8KVk=:nlf/=Rs_oa9Hte.WY9%5D)!hq+]AC93?gb
Q&'\Vo6#[6T;amnmQd:eJF?*_Yr*;F*3`018OJ1W6/V="HG;(a.mr;H3]AS&_eR2s<28FKtb!
cptME>ijjr#tUupN3QRfY/3qC4R;%hnN?"[Hq!s<&o3j'o2nVC=MGIifQE:Zka(_l9tj!Yk*
TI6I;H:2"g,AMMt^Yc10?K3W(%de-Dtph?*$s-Ni7..[$K!a-)gZu,<mhb#qrNR-epTh-G,F
D<;h5_PD/:o&^gg<%pmm(]ASci>fd]A/WoX,Th[1.B?3T]A(9^BFKq+F(X%Y`$i_j-)I,$Q,$3r
LN:ZJ[=l_S#sts8a[0;W!e^,(*d3r:=;l<U%EgP?+JfoeZmVh+;+IPIdoRG?n2,`fTMW'RLK
>sP%X.h?l[KoeFcQ+KUA&4@*29`$'6<(BVTt%X+HSU.31a=+5^fkETjbLD/l/kMp!jI(b6A$
2&`=[Li+..dQ<rM9nafp"g1u\'UEp(DV$QCMcYU4PN?R=,_95K,6ZT"<HNW5^,<[-g"HY_[<
p04p0[$Y-1VQ;O\Q=>/C0]A$XZ^>t?PsIG(0C:Mq3Bhjp,gdin8Od1$Vf'0[?\<5FFFBE:KFZ
2g@*D[(3Zulpp%nh#BM'b.4*YQ]A`-@h1h.'rk^j%F(\X1OCeS_/=KJbg@K/MNE.0?Ca9hOAF
Z97E,%#-:60.=-Lf\__h+C2$nW(!`_BNEO3PpI##h`]AffD@nF1kh6Up3B!WITGpN*A=a>&_1
l:C?RSeFd'V8N1Ds.>W7s/3u>D(-/Bbu$+Q1TJ=#H9aUu`C_g!!jdqQo[0FR(k-`@jq[8o1f
h\I7!ic[Y&\II=Oh,6,UY3)X1D8q<#")m"(:7*S7jDcuJ2U"lW?oM_sdf-[aje8:4R.hCp$9
.s%.W^s[H3A`KJZ8pq\0_;M:;2W`9:GM=hP&6e)u[,S&##RZDWE/S=bruDW(Zbb>0Y!B&C*S
7lm>*2kj"XG6\jPO-jgnP-EABOTNCbmaFH?1N[TI-`Ij&!AX6Bm@pglYm;1t6I:qGSX[KB)1
Fb]ASD%n>8E7:QJKFdR!bt/*j&;Q#unHh39\c'/18mBl_:je,//*oC.o_.NbXm/pU:0b+IGsQ
'Qd#33.7Q"UYmtckAbDIJC/4;O.O79H)O:1r(>Q4JnFuQ#O2_h46FtQl=a62uBTA^kc2e(8(
8^Uue72MGF[bpVCHp-088PF$H]Acr+SCQCm5]A-(0#(hi;9^sa`.@&qhS*I<a0535oJe%-o&R]A
#n+WYu7]AWP&PRK2pK(E+tXcE;'R&/5iKLQco8mV]AS9ma#'e4Rdrh3-gVV\3b;>-UQL+[+Qu-
ZmBTQro[*!+_dC"6Mk^HQ6T/u/D2.DplQ]AasB!*s6K8Cb[,LIEXe?>"71*Q8-bgiQ9Ka8hF5
O+3ACf&LoFC/k/dcL?mcE%,!?N->&dSWnbfRHbY^&q`qQ,SkB,\2a@;,%]AWgZaD$A!eq_#/(
2`J+m(=iBdRsnp!nnUb<u9@'S*sAM,JK6DG%1g+?0cX-]AstHKo$W4Ht<sS([<K`(_auJHQD0
\)ooD_2A_nbn5P(^Ed"8qTH8Ul(*c.@1GMU<Lmr)m;UX&7uEO9V:J"F*\LDiq>s9U]A3Op7QR
E.'im'<AZOTST^8D*lh0?h+P3,GlqK>38(*?+*GW%<^'"TnB6pJedm-;9ULaPDAI5N0;+OWf
(X0bXcb%tlGnZZP9aN?hdU_H%mQHK_oPRS+-T'pKONnC3-SNY>"-oC#Za/efRO,TK]ATU'2*K
qM(ePU[#_E6Utgo]A$?Z$^L>hbZ'o#Td&/+lN>SDASq`H?.*W"B(08V,&G8B"9;PA!+fnRKEo
-d=3,J"NCm$Ik<#bT.FfrUM&)'D?lP1C:[NPOgK^#;865)(bFh8-#XJ^KXQ_TN6S59DSdL[]A
?<p]Au%AjVgJtY?DP[<6I]A#-&r@.(Q3k@u(0P7je@]AuQ?59NVnmZAkM\7K#hpJVG`;og)Xq>/
Fj)Wf&9@hXnY<q%"j-Ongbtn.l2?Jf9]A_(8G2H-Yq$n(eDi47:Y[gLe7#4Rn9WId5+m]AE>[(
@&2XQhI%r(3j?%</9]AIpK%'[CM3!7tk:8`_0R[WF4U8?Z^UC[4)%QW;QD9(n1*aAIif_q;A^
3.*'q9&'jG+NS+WCMF54L%!F/]A!oZ<(4Dgf!<:r'/O5%QY,P@1c1<Eb@FF]Ai7rGM$tP'.!+)
/n)2SnB?G3D3ch?nAhU>ZXf)Xoq0]AR\McM8f!$5=Xq.R6ALZs/1irMqF_..t!papOu6DDq(H
kLa0?<d6R/@^Zc/)+=K#6[m#0]A*)JWa^eU$VVBsD?;2amq87$Xp3dd]AEW=;a9j8cAY*a/4dL
I1-ekNnC%&JCZPpff6((OUoQW+38/2#@P)Kb0N?C[IVl"LVqad)6MZqWOU$>'8)SbhH@\&Gi
Bo?n^B-'$2=*WY/gC[;q=VfsWW4I*:!fWg#5[FZ4aA".(/@ia(KTogfp;k3,/cDGHM-"!Os'
)''Dc"%#r@@^1#+,JA<D#62k'gs%@XP"4?4a<r"oKJ0D8(q59VR<:O^N.(4p0F'o)YEQK'KI
TM@%0E%hO4-9a*Z\cE>NVH(q\U390R3Pe0;%;2\a3(9I5Z3)gRW,FsXBY#B?ViULtKDNB]AVb
p5QcfPGIFn3-/=X\(pKH%4K/E\eT3u`:i96bOZh&8L)\kJu_O$:@_S>pt&!KlDF#L9ui7Kif
M:&[X#KL7Nu3@:mK`/QH<;_EgAd-\P/RpioK"\)]Aku>(&BKt;f'lpnCqqhX,Us-Sf.-icq8%
PR+]A]AC;g=YBpp<kb7IbXgg.<<!B[@`CBTh\4%KV%,A?n+qk`1I_#b+d&Qa<rT4#H^M>fAL*T
SM0qbK<3uH%<=BhP<qYhP5P+Ui0Z)U4_q3C[VuH^V"oa'O-ad>\O'mVqcL"<sO3e9C8HsTk-
o]A&mC@Om1d6=<K^T`.lU[;rP%k.:kg(&0)anpa'.15T,ksUN[SWf_?Rbfs,?J)7j)QML)]AYQ
9,'uO/chVnj;7Fc>W8tXO_+`gf2sS*ROGukZRbpi:T=V=cqL2m,nUnO[?T\,<eeO+:`9j%nN
+1b1fE@3I(\5lW.fuS*dgQn"u38oaUbB,ZL!tK=O.k6/(f;,b5fsd^C<o.l[U;=:hrEW+#4m
;<m%2J1a&DZhD9O*4ddKqi)P46kPWtTb4%mG!s/"SDpj70DQCPDB]AHg<oGp1W@VD#2dMQHO+
u-ElL`"j.GBGG&QZH2^3`q<,5I$G]ASe8Emjc)DDpr"PH4iQ_c/PWl!M06]A#K.*k0Nn!/64W^
;/ff'q6A*;;h6kq5qp>IZ%.^dU5TaNpHgQG5ck"5aVdH`T^`!D6.]AOs($QhIj&7ilU0&W/m2
"\uh+=Lea6OY;dn?lY7sK)^-ln.6P_>*iK$1^HVmJZigfApHLFWW?X47R<+^/RjA;STE!ERo
h.$!D"H7MS/6TiZ9usMgkZX&RBGUk&[4OF,tLh[&Aj(Ri5hda=Ut24K(oD+WfS>Un+@mS`0G
-q<(@5cmnO_*dc?f'o?PU'!e7R%i_[*\BEdscp"ApES<M%4n.X1<_$JXhp^NU-Rt0e<lI!_X
/kfq2$F0kl$3C^WNnR_:QCbM+VU^C^VQLK4i`&.;,MIo'&Ghfk9KejR[`.@qJ'E4[f"+ZAXn
'$3Tai;8)Q!hOOE*ib@Cc;Of6oLNIs[*;OnIdg6q"\%Dp:qIF"(DVG@O&M`)3I'#&(Hp-gUq
#B`L0(%9\.iTD&OcAe:ApY<Y+d[g[/n*N2Ua@BQ#\kGFY`%oCARpDmog-7C$o`MeC@,8b"54
imRrLL<,i[<(Z[L1uhB;+\\D?G)9D;=tI4S!<'iH>sPZFANb:9Ah_^:UHpZXCnfVNP7oFQnL
fnI]AuK528o`HiE-dR%CD"L[d!+`EA=EFG`Q#!O;F<&lb,AkiMfB9RS^2+?D#CFG(TEL,&EiN
F@P]A0-&?B?Ns'tDkBp:4g7_bC,7oj1gXG&UWkL?L`WAH%'+u<IaBI3@S?FQP<Y\n.)g.$*k+
L-V)+9Ke&$Asqr%FA*O@FN;3hU=6*-7RSIX<(QDQ_9rl[G<aAK_M/EI)<rMrm^JK.re$\s"Q
8;_TQdrFYZhSg9jg0TRB6gM/#_Q(q@2M:PeH8AF7f.UMF\g0fW1S:.`[[s7b3ck)TQe/RkAd
HgGp_*^h[a!sK2"b\]AjNp.`/^\/q_0[h![]Ad`=(YA><eq_VgRni,Z]AU&Y<g0V*<,\Z!/;$tG
GXcdI4C?>@;+X(Cla\)a`EFD\i2J1;[`^1o(;2dgBg4NGfSM,7b:R9b9]A&5<o+)3C=]ABLV=S
hAT5]ALO-jfX9<aa71bK+D#Sss6ZAZ2T>-/RVBKk2ee[hdia'44V\@2)mh_r>+n\rY'C63NGU
ZI/3Kd3-8[:;ja#a+m.^!fWr2kUqm?e?8;!e.ZX*;Ynabb;>DChH[r'<Y="J,cb>7pBAY)U"
Dt*jFK$hXp^^g@X6\jCmHDrE<J>S0A(fg*H)f2je^T!bG=<`t<<p_tsM37I9]AE(=G(@kX"?I
[cQ`<\liXVZ_*R2X9aQRpqERH?qGn[#s[1<>13Q#3EX11^d,f7X<g3au`j%2iLSMe!RJ)KPW
)HU*K``f9U_L6#L;U>Q%5+h`s2(qgFl-TMY,OfQ]A"J`EAi-9L';&/0&4^K.@qB5o@ZotF`B7
Ns&[MbHOj7_+h().Tl*m$Z)!LTkDC`V?h%]AflLS-T>pSX(ZT9[9.Z&hL.6RhJW1`q!)*L'Jm
WXP=Cg3ghNT2MLJ>,>5C+QKJ$'7n`NZB,[4N0Krs_mNn6`rFNT0%e_f>,f[1i%?q!=MRJcD/
1oB9*G7KS`U.An&"ZIW(HFK.2[$ZU2g]AQd#lK4Y%:FC$))*or":<8iReOsj'i:jbNg/-e0i*
Gj1KYF7/d4>hFJ;0:e75l,POknV.AA74$a,1*+Aj%)$_g"oS4U9E$[[leHQBHBf/,]A'9)1cn
?q0KP<4k"$rq._7Q,[rZ6Au>.IlC2h]AC3QSPkO6U[=+0)_%C,4&UP/jlUM@H=C(b[O]A?8H7:
!e</!Gt00_^>T=`%&4=)D5bN^%Ku:h0j]AWDQ<S=$dNr!j4.#A&]AoTq!Xsf(\%s9$Z7P,QCWo
-#k2IEe\G,?3*Ij>eN]A#%6SM$NoW@]A_!EdZl^O8/&l'.FPkPURM0NqDu5-V4Lj[ou-%l7^L?
G7/jc[irT[J>IJ9D4.E,4u]AO2!`-1\!F8PD.J=gA:6D$Em7DOV[*L5VIn>)UJhRn?oNer<kQ
$3VV$YeB$h.Gb4ddLI00c;sc+>X@@)G-QET>%*MM86LH7I9uR%l5<6D`_'*J:uA&qZFKdY$r
U;rHi@"u3/C_^9UdJkf>mZjK<VAU8NZ[&/eQ*kdp&2%^p_!9.s+VL.jDVU"4?D6F8!(]A3F4D
rI*egD68S3IPC'd)eF]A:8)C1+`5VqWu&6;S8._h0r%T1H9kl`(G2VLBBK]AoNZMJnAgSTdYnn
0AYV90Vdl8@21qnm@_JQ\X0\Y&=:QE5-?@Xg_,WlSddu/Eqeq<A4"2^XVY.eOkPjV'pFp&mt
,\Ks=MeP-2p0F+2EHOF,&J<>4@!laNFO(ALI$4Q":g!2Xph8Z<<fV*f<r=>afYjSNI+d]A8T1
dhUVcg;Nq#II56'VO-TYJfImbbts>P:=Tf931K?ZI0nOO?D+/]ATE!2h`-!Q./\^-!_G\c9$s
7F>"@S0?i03C>Dj!lnK>J4.AMMX;iZNGTE:nn&aCZ[dZaVq'\iR&?SKOT(mT+[bEH1n-:,pe
M,hiao%KQi$NlKo:go:ie6IX(K0X4D0gK.=<fd%D^$8@k.lfdCm3]A$CVEa.3r3lI>"@E#mL.
1!gd^L`<abT<CsdZPU+o#?cN)Z+WLl9HAdgj1Gd0\O,T<*c7CbB%AiPrrG/SEp^>A_Cl8B+O
(-gl*]A;p#9Ccjq89OM$*\,Prh2tD"b85[9&(-bA1aUlY\MJcH8+;ePQTeW`lDJmoa>'2a;:o
rQN9\F**@#N#%:D-:1DK60RP8#=iEu*0h<EE@M`D>)<D']AW;n#;XLe-`OpTN@2Mg]A0k]A_%EU
3ojSmZRZXIaaU>0cEA9[,9?6cA&'AtYppYV?1X3di$?OrU=RsKf"8U?^`]A9%$nM>sXCIe82^
7KFi)i(E<SfP$99HB5k*]ANrs]Ap(q!2"NCBMD^ao7kd,<s+`Oq:58_,f?=S*`=RSk<SOJ]Ab9*
OGpuT[sO.C>_R#"FAku4'C<1eESP$"8$4>\G/hmLg_*AE@+5.@BZ\$G5Far54,C>e^n<[4J_
\7sN%90?m>YNR%/54cWI!M@b3_kgMV^;<"\b7N^am?mN*-4BR.g6@%MMIe7`H5m3TM&^\L5T
s=4UN`a&KEFcZoj30)86ibjY>o=_ki-ViT<P\$L;J8oer;U'f!qRC1Gh!\Suje^W1^D?G&hp
Os-o!PE&V%DkZ#-qE$R7>&@c$?q-@5+edhE.2BKJ56FX5#^4JRSB<d5CXq#`iHBhAm)?s)f-
sCV*CtD2;Y9n/EP#R27ntKuu]A:t]AkZ!3`kUHGZ2<O]A9MFaP(b9)Y\g\uhTJ,o)a7m_EjS/f^
A3gkl^L8G<K]A*NMB6a7".u1'MbY5lqt*MM29uV2C[gg\1hN>*$<8BYH6kdc*A.?I4#rf'3iE
430/`+l^EQX4j_A"k&DA60,L)gpePi2)P8[q,o5-5XsL9mYu-3"WT#5Wo![<U(KrnVIuQt<:
8-dn[u'OKGP@,>sLUoO7V6X?/7$>faD/P;1MXG)Xq,jn)BmtVISIGYPH-k`T'h;gPreu[s,V
sgZd(kQHXWf^ZEbR>j%/n_(&O:k*2AZ!PCC^`^[qGa,T\*GrY#$mW.0YfWh3'XFMBTN7TN=K
$SY#s4m5&DTfAMZaBNu6/q_$k4J:.*2\U*lgVhg[4,KFMj4'U^fk&U^)(bdfYjoV318-jiE/
Q+Z!$l+-[MD!fCN+hniNaN>!YP!(fL/*1,6&sDY$@1e_Q<u4JE^8Dc.WJ#,EJ-$aEek%u@"N
;Hf-4Q0aN:Cjg:,SJ3*i`+@:1!'G8*<Ei<`:BfG+lo]AQVNu8.@pcE9*,'qMLbh4B!-:=Mp4S
.>-U?i\5BF<TsY05Dk9u?S95d8Wnpi*bJ*2H,i\+#gf]A3tS->LSV=V0U<G(Q:W)A&'P7gbq!
bimM8QniS)5c2a?0.ef65q*p=::d>ScaZmEf.;.Y_aWjB0"W*?J0+s;<lSN8"p##$mfMHcDP
`^R,Nd6W4BsVfl7Z[^hX\*g9%)ooplD`S4Go%pL8u.]A7)\.3pZZdO?.]A`hM'm$3::e"sJI#<
>FFf\&_<AD_,m"WEW"50UC&g2a$j0r@'WA)!"-)hS,'PVc6DuO\Q\.tRNX7NH7Baol,=]AqR!
;I$rf)7:G...aZ8n'H6!NEZf^\s*;C-U_Gcc%tlQ`ERdRNWh_,N.UpN'Ku>fj,[]AK[Z.H`D4
#+P3U3!MrbrW)i/"BWR%LtuV!;GSJ([8(n/g+/S++1PM1NB*Dhg<1(2TRCF6GjZo\2\#Om#G
&Qj!l):p]Ag375fB06)>77l^%GllaOb#\_H.=5$4rlQh\%N?Fa&EX'aHOYP?f)p$gbUe9]AZr0
!rbUb%)f8Ldbo.,(sQnLM"_ErBoTsEZQlD=soCifQt,RZ,o5;Ji2k"STT3XojQ%!f[t^>X4^
.YoKnL4i]An\!>Ss?ul@#$'P\D(Qm%\JrRt\`U/dJ,nUOBBRq>DDq.M\D]A"AF<]AgK[Zi@5V[Z
5prHW0Z\[frcQoA?R=e&Zb1#%T+BI1,e#Xo6:\F2DT@\q]A!)R#ZOSN5&*oo*[>Y7FDK9aa>s
NL$`$pK7[fE_^:<q=?e!,@_*A=L<r-Fq`QZ`EYWt.4nC6<E@Dt'!3>gK3pJ[HRjGiP*6fiT=
CT0iAhEGXh2Q-F'=]Ak:K!R?K7bP76-TqBPO%IE)M-kJ"![c<C$BYb?Hf;W6Oi6Q>$\l_\gtT
'Bs"#?SWo[,6'mRV_\tMp4J;eVGjoGFp7T)\?Me&Y-fp'g^O$"KL/JfjUI/+Lq'#m>@h1%FH
'f\7sKQpJ/C,n?[aP8<oFm/X"R!YTSgOTZ?-'+a9fs;JaTSBMOBW]Athf97+2muknN?H]A>9YR
4!@B<`r#GY3n'd\m>XfQHj6'PmU;:_1O[mFiM-g'K]A%JQpSG`96ai*4kIn!ZG:1.BFD(5'PW
I31,'=kQFVlE!hUH/cIBZum%$;@3I></:4@g[S:p-E5WDX`g1XdB%E1o&hFN&%;LTXP\9o[n
mNFX4?q+(bF%@*<La86au\+%D/4!1F'@4@'u.&,PURsMEm6pj=YC):bGM9aoM*Db"^d4kPoc
ea[%p8rCDQQ-+%0eUgd\=QhS.F/!`[Omj<`EQp;kfbZrr>p'%q@eRg<fQ&+h:ug!X(A%o4)#
Rl=,-UQ6b0WWGrXBOH8Ek[^"I11I'e=.f3I[`m-1Gp$?mC*+!fc%0qmQS=nS),/Oo?q+W-u"
jq7dfFdG`@g*ukUT1?,I/lpJ5dT\6"p"[8*D+u.:Dbf1o3cinb/e4mAYh_*L)2;_`.,3U_o;
S'RSs@>8@b%)B:L'psKTgBOm)P!<$*Z\n:r_g2LMlfJ%7I#dCK+Lu>S&a3l7tc;5j+''MGbh
Wkb=U#.,OAP#_OjAT^dLR"/YnoTX;+uci4nB>EBW]An%[7.Te3shH`[/AR+58rq`f;?o'NBR,
llP97Plh"UX.D<$RQgg$<b'JE4@2FV=96aYh-fUGGmdk*F1qWf/d<1&X1.=/C>$TiRTGD0YU
r7>Z%imWp`j2VlkaZ6(VFB\/G#D`nO\%&"V==g"B.An$c'gr<lKkgC%cibrUDgVVf!A.0WS0
;7Y3-m3@Ueo:i&4[;9\m>`IdH]A(RAe/cK%:kTJJ\RMh"^Z3GAh0rV,$e+uuTa>D7fj+sWIEM
1\sFWYEp]AISIpeM(]A64(7(R_G&:[Ik4D1XV0-I3r1Vn0Kt17O(T&&,h[p\8@@f7q3p\H#40R
ET$YpHo":CEj`DV\+a11X:eQN&KiDCCNI(G@2c2R'd61)s<5)WB_Cg'`l-(sm@C#@c_XgFu`
XV[kqODF9P#"<I;HRTSBU@Rq^^,/[$Id"gYZOi)cHje"NeW7>U]AdL=>4_9dqIE3e-nFg2LJI
d"Xt%:EQa(BOCNLP^3F$@bIC<k<[<\<LG<sQkY:[%*1n<H=0$7Urcs8rt(KdHY#psblV[iMJ
:j=_K"L`4/>(-/NTcqD<o`%<m=DoDug'oPDh[ZLE=h6a>-7*tdn5R=^S(f\AWfRDEKcDg6I'
]AT*Pk81@L3k&nMO44YbA@u@WH-Vb+dluQ%?qn)>WI;:F"b6jSD/XoZI=<I&kI?rN=&=cq%:a
NKS2<napSS,DbQg/`b;r_bL16o5@TT=/DD8Q;WX#R>ld-j_;sf&)/k_>0#auE%t@C%&FB.;i
r.:\$gp<]AA,F3ad$aOb^%?k(bbXSR2sO@+Y4(de*r,":qcQ9TU#RA&VXr4*/ao?o^7)*[aY=
QJ_0OM]Ag"K#Ec96UL.8!GE#l[lPY\`0CF02FoMAo[$m]AL[Y]AH5.n=r]A$EbqL"US<?.e.>hjm
)DV^W3c48t3cr>V:0#A7&YDcK\nl^)U6edQ`X(Sp'#i2XfIP`6O!@l,a%W`\g$O-9hh#_U(t
cRM@_]A\72E^J?]Al!P[Y`B=chStsT9q@/,P^nE)J%C91n^Kj^i=3B`h0d&LdEct7Hr"q"pQ='
pQYN?tS(aRU6PeVd+5NdXNA"1#B.ej9pXPk]Aa5M8@@@=I4C#G?"$5rOhV?%d&C)'i)kbX%^:
%N(%DSN%M*jPQJ9^90U708)7RYWDA`DtT=Ku.T+5MeI"UYle4G1XRQU/?ib5@X;,&FL`Wq-2
6ml1^``o2`n>@SUrgk-YO]Aq6o\2*@_K`l@+QE<?&qS.=4o9$pTfF`ql"qIY^ueJR*WW?-=@W
)N56?bUX-g+=V@+k4aYDFAquGXhA[d8DDF#GD3"1fRD>iLeqqC-XBa7#1.6@&:e#;/n5F_po
S'OXEZ%4&UK7D-$2g\m/e-:SRd^WGpj31qTE/#(1568\uJi@82)*25gX)V3"ePZPuh-MXgN-
m,.o1sSN`^U1\U!<m"J_lXnLA17"7.c%FAioAHW*FhMV+!hJ#;>?2C[OT"m%^[XCenSdiu4h
.SeDGJM_9p\p,bT6kO:T9mf1'/4us]AneY=-*]AQ;g?)onYFm&bfSg)eApH51iq"e#[9"K0^&#
g,s0KFN;kWbimP-DK!!KE4W)Q*:r\p\U`]ArBZAtK"ehhDVgc@jGl>r^IF#':l=<an/7R%l^_
olF4m23%cAE3(TgN;]At-r$6VQG-GZfKPriQdftfBG%?2QMB[VLI"-%h5<4W_P6U9d]AO?7d+\
!mK:(+,'>f4f8?TMqt=mK3-ntuDOn,DMB9RBtD._DS]AOg6q!pIQj]AQK9b4A3ZLe*L6!C/XA9
73FI!%bB5?4!"0qE3gAHp:=<smbI[e5[Eu5AqO9eD1K.YV,58>dS+`I/:)tWq7Y)ea#2[<cc
)'*[4p&Ue5=g"Lidf(l4'0=pD`:>mhN(HQ^Va[FFF)eP%n1DQ(lWTL'4F4G,EO,I\"i7bbgi
\urhW\<^fk]Ar:")H;]A]A"tu_*dGR!9Ltk)TF]A"Y)RfOnIn8?k5eF+h9sKr*?=^=)<6-]A:C"qn
+s5GOF7Lm&ce[AaLDHQ5LIfu:%^`KrIGT*qda68GNkd0[F8MS@9K&T`7`alp57+lW_\C5q_A
ce]AQbYQuKO2/rs3rV6nGmF\fkXglVHG*FYNi-n=\]Ako`QkQuEhLLWrUoIH>'Xs9Y.Rd9rMor
,k9mg*B[UL83S\9DM0ON"Z5Z=+jIQ,l+!\um^+$B$G@q.>m7[^sY353c'kEd8;g>(gP!&kDZ
ia5&Jf+aY5jWgd5KpK\n#q;g:*B,O$G?/kT!\-p^8bX*3p\i")-T:Eg/[+uE8ZQ)WtL);r>[
_3mTQrjc`bP+\0RC`k^bc$AE>3SA.'E*TD2R*"Wrlt#p7F*^.\(dnW!l*\cN=DdG1>hrQC#)
CAR!_>bka>@>!dF^j+d`!V@1/k#dt<#\bK)G*M8Lpk'Qf0<'_G#1m0DQotG9S\=.%'rAYDEg
sVP)*kgo$3to\"t6`@dX.sI,<kj_^<k@Red^H(qM,dW08$5%^BI$?,q9GlArF=fF;1.,R+JK
RZ&!:X)^\\95=Um=j.+?.<A8Lm]AD6`$&&(/oJ!u"\Qa?G0p<*$nquK(9rM&XEV1O&n.)kmZ7
PR5urHG_P#`b[,l]AMuYYS15QmBlbG_R<6[Inpp<@t!0HIG:'mMnBcID=*Mo&(NP3DM?PRR[7
URp/\O5r\(Rs?c''2(,f[g(s&E/#S.V\HT>QQp^`8D[tbrVX?jGDEG[G@n4b\ijan0c2\[d;
"h.Y*EbGW&KT0dF[ju)>TJ@W993-jI*%km)aS+bek/^gJGqr6a:gc!2M%ngF5s+bL;*Eknr>
_\g(L6*QOgo96LG*>]A-C%ae,I[Sg)>#:kcL!iL,0ig(+[Do3VLLO[/lK]Aee?RcPofUfE$Ge0
`]A>J"3#\C2EaYm2Z*,L\AMY#s9hI+1j4ig\em,3Jfdf!gB%GUVMCe%+nO6!UFR:?s<*&ZAYr
B@3W,`W42!IoZlRl7"TM4_.nMM$5I^fh*F^r<012%K5I&g%sq)[Qo_n"gru!<93ar[]As$s''
MH]ARb4MEOI:L(B@T!b<\%?A.ED5If;,h'T'rn#\XN#OajW6;?8V>Ch%UQQMF*f?T\bNY$pO&
3?:D;/9BubF)fRl5F3L(d=%9LmQqnb<eW1<aAgGQbRVr=34;"(cnCUcA(a17:RX9I%lo&0S5
TI<hq#)MjJ`)me0seTrKr8c(OJ+Ab":C:_lI$dClhcVqd4lCk^NfJ-7AC[>l+-n!!~
]]></IM>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="960" height="270"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.chart.chartattr.Chart">
<Chart class="com.fr.chart.chartattr.Chart" wrapperName="FineChart" requiredJS="" chartImagePath="">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[邮件类型趋势]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.LinePlot">
<CategoryPlot>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.chart.base.AttrMarkerType">
<AttrMarkerType>
<Attr markerType="NullMarker"/>
</AttrMarkerType>
</Attr>
<Attr class="com.fr.chart.base.AttrLineStyle">
<AttrLineStyle>
<newAttr lineStyle="5"/>
</AttrLineStyle>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="SimSun" style="0" size="72"/>
</Legend>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
</AttrFillStyle>
</newPlotFillStyle>
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<CategoryAxis class="com.fr.chart.chartattr.CategoryAxis">
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="0"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</CategoryAxis>
</xAxis>
<yAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</yAxis>
<secondAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</secondAxis>
<CateAttr isStacked="false"/>
<Show Curve="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[单个威胁邮件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B4]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[多个威胁邮件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B5]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[安全邮件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B6]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B2]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</ChartDefinition>
</Chart>
</Chart>
</InnerWidget>
<BoundsAttr x="0" y="0" width="480" height="270"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.chart.chartattr.Chart">
<Chart class="com.fr.chart.chartattr.Chart" wrapperName="FineChart" requiredJS="" chartImagePath="">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[邮件类型趋势]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.LinePlot">
<CategoryPlot>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.chart.base.AttrMarkerType">
<AttrMarkerType>
<Attr markerType="NullMarker"/>
</AttrMarkerType>
</Attr>
<Attr class="com.fr.chart.base.AttrLineStyle">
<AttrLineStyle>
<newAttr lineStyle="5"/>
</AttrLineStyle>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="SimSun" style="0" size="72"/>
</Legend>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
</AttrFillStyle>
</newPlotFillStyle>
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<CategoryAxis class="com.fr.chart.chartattr.CategoryAxis">
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="0"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</CategoryAxis>
</xAxis>
<yAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</yAxis>
<secondAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</secondAxis>
<CateAttr isStacked="false"/>
<Show Curve="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[单个威胁邮件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B4]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[多个威胁邮件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B5]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[安全邮件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B6]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B2]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</ChartDefinition>
</Chart>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="0" y="270" width="480" height="270"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart1"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart1"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.chart.chartattr.Chart">
<Chart class="com.fr.chart.chartattr.Chart" wrapperName="FineChart" requiredJS="" chartImagePath="">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[威胁邮件分类趋势]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.LinePlot">
<CategoryPlot>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.chart.base.AttrMarkerType">
<AttrMarkerType>
<Attr markerType="NullMarker"/>
</AttrMarkerType>
</Attr>
<Attr class="com.fr.chart.base.AttrLineStyle">
<AttrLineStyle>
<newAttr lineStyle="5"/>
</AttrLineStyle>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="SimSun" style="0" size="72"/>
</Legend>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
</AttrFillStyle>
</newPlotFillStyle>
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<CategoryAxis class="com.fr.chart.chartattr.CategoryAxis">
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="0"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</CategoryAxis>
</xAxis>
<yAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</yAxis>
<secondAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</secondAxis>
<CateAttr isStacked="false"/>
<Show Curve="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[内容过滤]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B7]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[恶意软件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B8]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[无效收信人]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B9]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[不良信誉]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B10]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[垃圾邮件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B11]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B2]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</ChartDefinition>
</Chart>
</Chart>
</InnerWidget>
<BoundsAttr x="480" y="0" width="480" height="270"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart1"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.chart.chartattr.Chart">
<Chart class="com.fr.chart.chartattr.Chart" wrapperName="FineChart" requiredJS="" chartImagePath="">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[威胁邮件分类趋势]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.LinePlot">
<CategoryPlot>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.chart.base.AttrMarkerType">
<AttrMarkerType>
<Attr markerType="NullMarker"/>
</AttrMarkerType>
</Attr>
<Attr class="com.fr.chart.base.AttrLineStyle">
<AttrLineStyle>
<newAttr lineStyle="5"/>
</AttrLineStyle>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="SimSun" style="0" size="72"/>
</Legend>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
</AttrFillStyle>
</newPlotFillStyle>
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<CategoryAxis class="com.fr.chart.chartattr.CategoryAxis">
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="0"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</CategoryAxis>
</xAxis>
<yAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</yAxis>
<secondAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</secondAxis>
<CateAttr isStacked="false"/>
<Show Curve="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[内容过滤]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B7]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[恶意软件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B8]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[无效收信人]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B9]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[不良信誉]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B10]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[垃圾邮件]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B11]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B2]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</ChartDefinition>
</Chart>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="480" y="270" width="480" height="270"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<Size width="960" height="540"/>
<MobileWidgetList/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="IAA"/>
<PreviewType PreviewType="0"/>
</Form>

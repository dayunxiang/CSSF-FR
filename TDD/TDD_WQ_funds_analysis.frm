<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20151125" releaseVersion="8.0.0">
<TableDataMap>
<TableData name="ds1" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FR]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select month(date) as yue,category1,category2,sum(price) as total from dbo.TDD_WQ_funds where 1=1 and year(date)='${year}' group by month(date),category2,category1 order by CHARINDEX(category1,'化验费用,应酬费用,维修费用,行政费用')]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FR]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select category1,sum(price) as total from dbo.TDD_WQ_funds where 1=1 and year(date)='${year}' group by category1 order by sum(price) desc ]]></Query>
</TableData>
</TableDataMap>
<Parameters/>
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
<NorthAttr size="57"/>
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
<![CDATA[年 份:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="50" y="13" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ComboBox">
<WidgetName name="year"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Dictionary class="com.fr.data.impl.DatabaseDictionary">
<FormulaDictAttr kiName="Year" viName="YearCN"/>
<DBDictAttr tableName="Year_list" schemaName="" ki="-1" vi="-1" kiName="Year" viName="YearCN"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FR]]></DatabaseName>
</Connection>
</Dictionary>
<widgetValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=year(today())]]></Attributes>
</O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="130" y="13" width="80" height="21"/>
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
<BoundsAttr x="561" y="13" width="80" height="21"/>
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
<NameTag name="year" tag="年 份:"/>
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
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[费用分类]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[采购类别]]></O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
<Expand/>
</C>
<C c="2" r="0" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="yue"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$+'月']]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
<Expand dir="1"/>
</C>
<C c="3" r="0" cs="2" s="2">
<O>
<![CDATA[合计]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="category1"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="4">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="category2"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 != 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ColorBackground" color="-3342337"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="total"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 != 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ColorBackground" color="-3342337"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="3">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(C2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand leftParentDefault="false" left="B2"/>
</C>
<C c="4" r="1" s="3">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(D2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand leftParentDefault="false" left="A2"/>
</C>
<C c="0" r="2" s="5">
<O>
<![CDATA[总和]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="5">
<PrivilegeControl/>
</C>
<C c="2" r="2" s="5">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(C2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="2" s="5">
<PrivilegeControl/>
</C>
<C c="4" r="2" s="5">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(E2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-16737895"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-16737895"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-16737895"/>
<Border/>
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
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-13108"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[eQR5t;qL`OPQ$f@"be?[<"T@si'7E6iFrB.Z.Q&f)(tPE.Lo=q0FrG)&S-&5VCG,2WY$JB3Z
rAb_2<aU:a6EXVT]Ajn%$;E6&:p@pCV&A,Yh"m6+#iASHd:L*hVYfg+m`D@;qWHh9,9'\+D^[
.n^)jkT*?iKn8[UjI4Tgks46DiJcu8l1ZI795%SSrm"]A`\e,NRgfmo-*%?:8JN@gqjSlu='V
mQYG=LVne]A%cQ&T(@&]AH,)e8Q'V`Zgb/#O%C`=k;c)t>mr.%P=IWGGP4p"5-HiFCg"G25?*o
sXhOEFA[&H3Rnpm3nUOhbqkr)sYG[,uo*M%OGEFKUkFVg+c5QX':C>YLC7$!.[0W4]A[SbThj
\f<QXj4N`1JJT9/_(9'4=C(.i9a%X)2g,q$(_=C1D.83_\NL:p:e0!Vef4Vf0`Lk@l^g;0bH
<b.pmrdMF4r^*+F%nK49C#bj?+DAC:dY>kHk_Ngs)u"@H^QuJBFpW6G:)_>bQDA.eq2q,<%)
nnMaft<g3H$)7GD54cbcfFp)cK8t/VeS)/!Lh)S-obPJQ.$TX-;o]A_pHhP#[.72MQXnQcZY_
i2+d-lO+kLCu@$<cfGTM.54f6a7+Y#_U_jjM#W1&;K#Uja!^l5WfL/84.6!fl$aFg^[o:$]A3
=eJ4=VYC)iUo5+AhM$'E4/3PhhBpldt<dlJ8c7e(8(*1N,R;]AWE@e%#Ql2cq`\;r)4,D&]Ak$
PMQ8=HC6K^r*cu=]A\XE*FkJ*ZPcigQ!?UO3j1f3,gNA20Kq5u;"f_thS?J02$[6,\S?;;D=)
?nbg#hSq4t(?sp=:`h5F./g#?7>b;0c'g_A4KL`8FF-[SYs'$]As=)I!%2-/O7't9h9qV*S`Q
-PRWGdZn'e!P$ZQZNo/+%BkbtI!rf7"n4E['9H:p!cm7X%&)k4MdtfiIG.S&:NIlY_e&rYFF
OaHYM9abB]A@-5b=3H"mT>3lK%<X5hi`?8A3=kXq>pj6C4lA[FGt/lJ:8t!g'.s]AZMXl]Aq#):
pIIGk_oi8&V:>sO:n"oJT=4$b;"2C3^i/4@]A2@JGI5+$N:UVj'(mBcS9LL"5tCLaqYg<q<e[
Z+aWe"h3CK#7+IB%)ISq(gYO0,g3)1p$T/:dC!^BP/;p&Ifi+O8PYS_]AsNjb+##0\ji&:H=U
AZor1k4!C;enZfIpHtFk;-$`gB9gBQ,HcojMTF_(q;_#s[@5iLsTbBbO&qq/R#oh.'n#._Ce
O0o9%%"O!XnkSo:[,OI*RqR5W8ppplN.69Ise8mi?=jBR:Vm*kr9j=4<]A<iko)A2c0MY+:M(
;1>iGp,hn+5A*(Jk/IcU65"Ws-(#$()k]AB4f5$A=llWlfqgHp91SD5M`nClHL!$&OGh"GJmQ
9Bp`$o0AkcW0h=%+=(%H5e:90r.,bJ:fC,<.iV0pV9?A$VhC_j*\OGb\AJcm$rW3+?SP"Ss#
4nZ]A!4,Zk:Y5!%.8(L*@06TV8UjCPfE]Aj7N<I\GH0RPncTjb1uK<7J@<=O9FG<KM]A.4lNA&Q
]Ab6<usJ#9tl24=IjM91Z4rSN!Njrnr$XapFeN?jr'1o<]A"SieZERc\PB,de-qbJ*D[E"k;):
*4en&E0#:^D8_,pR"6\SWUUW21`TECGo%'S'_^%/H2"V8YGFL"k$m!rJ*&;W3_4+dpC8,fE(
:Htd^+i8hFH?Xm=:R4@g<(`AU@95an*N[lS>$diBheD^?(G*dXV5tk3$E!\q6_TfEA5`9BN4
l&X0%:dZ1h<!m]AllX^8<?1/hNm(b4A:o'.(*(qc9sdZG1hXGQ"]Ad>:3L=pLdk((4CC[DtLL?
Y)G)PKD#Fo@7O8EBTfcXhPJh,QX/@@Stouos8?O,?r`K_m[fGbPc)=?D(9DjhDl%<0K@ZQ0e
]AH`Ms2N$Bb<Q(ctVs*Y+Z,sZT!q;(UbV!-nc%3bNfLj-hE?s,`8:U%`M6LHhtb-2"h0Fm#Q-
'm2YBRMs;K+QGIo'P\brsA@,5]AOcs+IJS75S9[g2-TDk^]A.`?*t.4(X8e`\<=Yn74#0LK+?V
UiP,VZ^UW;3bY$c[XNgdFS,_R__2"%!QmFMKO_CBjaEJWMFJB_'K:[O:\f>N_b!7"']AF6<#V
01_=K#$d":\8D*;hO/eD1#jQ$\-:oKAae:t5]A5!q9CLI,m('qP8,Z<c(fU0l+l<unK"+A%l!
:bo&=V/Q8!T[=Pp@RobO$AkQB:/guQXttPUdHT"g?COlV_VmoS\)$EG^tcn\rM7I2T]A4S"qT
,5T4hE_XL2HC9RS"MVY-ZgW-YV_!3k*:dU:h/IVoUnY4`PL%<q8gKpi9IM*^2elRrG2\eX@C
tYo@o&`0:r`;&mc&+\iArE`BA+EFX]A>M-6@L[]A?j\]Ak?l7WRMaOakK8(<B$mO[VqK&(W$D>(
Sqdb*tg;j6$@F0,mqp5Cs;`tq"m&&6I.nuVUd,sUVXj&YOCL(3'SmubXlNNIP`'uP]A_fA$<#
n*kV/97cZ,.Ap&DF^IF'SJ3o;+%cfAg5$mM%I'n"_7MhVJAWYWJ-\Ead\X$C;8OPB.qSfZ3l
YIS`*N_a43,!Ucg)90EoW+T<11mWHLQ@\XsgtBA@&D9n5QRhE0?PcDup)-?-hbqODq0Sh#\L
M4V^U,&e=4PJ]Ae($Ge%l[kt4jKVp276)#:[WP!q!b]AOA29Q-Gb.7;@fQ<;Q,hg`GgogsEMAm
.eCW5gno/OSc)s?4P>PkuA)u3G?/7+8LcXVcR$VXYH/Ym4[!/Z!bo`7"b(D.bF-?n6ND#HS#
1Lc"P8$"Y-CsK:V=2N%lX?4?\p394#j_$Y\OQbt0SP2fe@_"3Kcmnc%,#k$X]AoldD*#'q_qF
krMfq*SnOY'gIjV/,]Au>ZS\=Ro3j>)h$*a.bUB=+/M?ll/OeHA:"lE0^=9VK7g6.UGKA5'!`
n(:_(S005uf*YQ?3eR[fYc,[';`su>4f6AH4cN<g8s6Ar9f\[2E]A+?WL0VCA=[YP9<>.(qie
/RKE+=n7/KWd*&_@CL1H@+o3]AHfcr`FS2B:u=`i)nOO<><`#9U8KcOug%"7qk'A<.@A[fi[N
W`'b%>W>R]AMN7RV*KRJXjgg_NF>^c05#NE?m6[MF0*l7H0PmOF6_]AjL6+bT]A+g0(U[6Rg<]A'
%3,Z%Tn@.2-f$]Apb8jd^]AXE"Gfid:Lt<nlh/9\lVhCd+-#)#>r\Km'Df5TH/CP7ab-?-9A#c
K>SR%*WC]AZRCe0&j@)JUfB8o,jHgk''#;-C\"&I$M-r%Vl`#(Hr*mbsJ,Z:SP`D2A<'e3n"U
c+Ifa46&Ut0:c(Ck*41cB\>8GR<p::6K7Pu1[NF?'jOo\b38bLP=RS04n]Aq8CUPfdMl,\gT?
e/VB^q;3EUlS6l!-#aN&9'1nXl#31M%KGAjcL'nJ]Auh9j8H^a_XnC`6W]A',.c[QK]A4==#TjW
l0kJ4?H(l,/]AOP4[,PWuIM$smC>)+6cPQ#iGVbG$sDA-D:D)Jt99Q"]AQm?B2Z`2c>!meYCNR
o=L!8\?]A/!7m>)d=KE^gaJFAmH6OnaDoXcgr`SPJAMsF<p7hnqS)l,AcM7:@-g]ALgtQlNn6A
/#47\K-)K*\#>8cLFZA^M5_?>IsnbA.,=p_g=$utZ1Tor8n.rBaf0B#Ji'rWn<e+]ANr9V`9M
]Al,"V/Bm8#C4XW$>:PCOoO<<MipA_a]A:C/mc%h$"-G*e2p&,E/m`tsp8@bi,@\^nATTtt<!A
(L!s.aNc=%6Bq^$o=7]A,TCuQ6qc_q$+bKr0\%GE`mGZ<mVQfd4i\spE5PE$M%$*rJB3ZT(cJ
V0-^PtI2+D*_CTmTLe%X;kWV$X1Q<f>&/kn+aD3g..,8'"U1771N_KkQ2lS;#=0M0'IuOgt$
i*$]AO#Y8J5sUr!'j"^8NPg9b7`KNJJas28T\VIY^f1?K8u,a</m5f_eT*Xr<7'd:GZXchTB3
6J(jo/%]A0C^iZF/P=_$(rl^p,=+@_jT#Ui@r<<Gp8^#quW3lsr7#6)Y=r3*)-o8&80/IIrqq
h879]A;^irrr%q,H6%ucQ85Ht4L?qRe^b1Xu.,5@\M$0fF*f>]Aq7Il\#W!V*6p,XtR]A0)r<1N
',g2`ZG/KrMT.D]A.fp$=K'FL*@NueNsK0.+[&*DFk4j"qnBT%,Bu0GCdm@,Xh*Q2qLRJDl73
rDi;Kpg2DF-(Jm[UY`X^0oBOjk4N]A@f(B9*>RB^8DYHl$`E.>EF/J&%R'A>4j-iL@cQ?A"i_
#01]AhF+sS<"p",cZq+Y5iY#uAn_hY0S?>..`S:_M1+'&THm+fnV+'_A5I>P7e;89U);/&OJ@
B[3m#ST9YKLsH>d*dp46[M;[6QnaO7!T)2W`&_0#,/@b94Q8J_Tin;i>c6=W9^OVo\Nl0uW:
o@3IkGd1[\_"P`&_VY9GjF`_ZQ^#G^I#PY;b5sqNU<'ond;cQeo':Za2cSU6g5[F/m^W1X_D
+^FTi@]AiR^RN/h%_d0=jUoQVC)bTBU8KYOTp=@_g0XOXkQABIg1X4a,..sa5%[87lZnDcoW?
[_o(HGA]A>QilPHLZ<Ak%Hr59XLpV/$=<QjccM-`e)J3\S9r'Fe`YT:r!9--<LQ&;7A-_eDA$
!,O$9Lq#sg5P@tU!:r?!RZ99gV;NJ"_E%m@eu%Jfi0ZgLi]AP')!LrnZ>-EKBAi40A:()%EX8
F<io/(d?nk:lmk-4^@+l(J_%n<Ri@hc"1&,s!1Bk.qi7\&!U*usI$1"!rDW#<L-A!IcCi-.&
2.DMU($VO<8!V^2R35Q_LCBG@V=gGJQbd/(nBVEroA[]A6?fct(*%d,^O;14tBWnn,qS"pCdT
W^ed&,Ptb:pVIYmDj>q$on,TGM[\eoD_6Wju&UI=\DqTSfG+)(Ks0iX"fDU\cBe*Xfga=[:I
#XEn\-nnbrNOTa-r0YEE@4ifnU>a\4X7IZ4E7X":Cnc>$$?hmPk,%.3\b+(5m4^DjLL7T9/R
U*!/8<i7c.Z_rV"`DI<)GYZ)Ntk,0/!/TT.72_^_*sFmd?\J#>X6.;(pbW*U6j36$^lF9W3K
J7<MoQqmQ%ra4Bp0%YegK;bQiR9ViuTk$>-mR-0ebe=QmJL%V&+I$^'M`:%&]A)R-`5uEo[1S
`7SZR0N#eG^r7:#"iaSjm:_Jr>.XSZKc!]A#)'[/q6-M)bc6f[3bpBL)PQ)/Fi\K5N;N.W.TX
(8=1NF>b3l(g,1RQJlN`kcf$]A[2sF]A"+bCC`_TZKPJ%L)>3C"$u4TG%'rh(55K=S-g4(\Dpq
-L^/Z:)3[teqgiT*VQdPo,MPW=]AG.#)1i2lke+Oa"J07dEY2+S0"I+g%Le/\c<O'1jS#qRe>
dc-]A@;p-ieZt-FiL%WP?[+5"i:<.4IUC#<ge[>R."^p9;5JGSfrQ(fkcbf#""Yn,O7L-Y+*$
0Si_k[H4M,3(nDqini6gN&hV91A/`u*sG.)"(<.ib0WSll)&9=5uE8haoSe4mUHXu9FCtfU.
7b#8sTS%o"cYNS3?WIa*JHZcXcS'CkW)kSQ]AAZe1XgDh:!+C)B-[Gi#Qj?5?reTQJbQ0O@[B
[">4t:*nRjaiJA:Q=oTKnr3nPrrMcg+7X!""Br7M4=8Hf_'4I"ESo^:nBu1P?MU?Pr&cUOU4
DG7'C-TS^3oNeH/8%Uub.5l]AdoSHB8mhd=2qr.guuO`<[hPYFFVCO-RGp&4FW+b`!7OLH:c@
P2&H,rpfp.[BRE:c>3T;Z\e4,TYN$*SZ:3mbA%UHk04ticf^'J>)S2GVY%)0h;eM%(Q9j>F3
EKoXVV&2Q,>JqE\*k_\+MO%0PYIo/snQ>@t5sm1G895nr]AS>,>ht%41sN#geX9KUc,S8C!\\
J*m]As7$=02a5.\[c:p.Z=7SL4bLs1*YTmdc]AAj?r2AV1s@8)HZ.990sFf$d,Fb%M6M=\oINH
3[H#eqY%bjH[%_/cb)DEsHg\)*k<gbHJd9aP?n6([189U_+PUNC/0Gh&.8,J12nBbo0Cn,Jl
!<qm`jk/]AS'5TA!YDG6k^%DiN`g?Okl-(XQZ?3@'k3Bb.4pUM1Pe$6/oXk9#a^G7YGe"<iLW
pJnt!SZ1djocS!O'sWffP]AiUhV2DBmE?Sj;.O-hcb/gYDbs"JW55mZ?tZN'S=nE",?e@ujJ2
AjY4?i@;>36qegFcp-51I3gOQiZhG2[sWlnjIfgAX^eM)b'g6)!h->PquT>O\U:Mu(]Ae1$$P
RirkV4o>b9^I@G2#u9pUmbS3BFG*b#n=nI]A#Vi=Hd_K2^CjCP>FZuAOHaSc_4[h1,M]A:6Q7,
ccgWq6[W\;?dV=<KLX@gaKnn,'Hk"o~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="958" height="264"/>
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
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[费用分类]]></O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="1"/>
<CellPageAttr/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[采购类别]]></O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
<Expand/>
</C>
<C c="2" r="0" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="yue"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$+'月']]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
<Expand dir="1"/>
</C>
<C c="3" r="0" cs="2" s="2">
<O>
<![CDATA[合计]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="category1"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="4">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="category2"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 != 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ColorBackground" color="-3342337"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="total"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 != 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ColorBackground" color="-3342337"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="3">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(C2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand leftParentDefault="false" left="B2"/>
</C>
<C c="4" r="1" s="3">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(D2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand leftParentDefault="false" left="A2"/>
</C>
<C c="0" r="2" s="5">
<O>
<![CDATA[总和]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="5">
<PrivilegeControl/>
</C>
<C c="2" r="2" s="5">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(C2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="2" s="5">
<PrivilegeControl/>
</C>
<C c="4" r="2" s="5">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(E2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="14" r="26">
<PrivilegeControl/>
<CellGUIAttr adjustmode="1"/>
<CellPageAttr/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-16737895"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-16737895"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-16737895"/>
<Border/>
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
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-13108"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[h-#),'6h%->1XfX@V\cX)gZ%1'r%M4+r(j$e6?o-N?ge49YCGW#RH4tifLU7\k9e+CP\_#+t
A7:7P4]AR(p#>t8JN!"LaZ+T+rN'I(m*^b6Uf(7XE!u;]A)2-trnr&WbiSSIhtt+Eqp$0`^M_S
Ho;UkaAnL'f>J6PDB(i+Sbj5eB\)*d<(eu8TAnH4u5$S#CHc5<;]A5,0"pc.ifc$+UT#I,i-2
hV)JD39.e1=U,P)XH6bm',ZiA'T"rIcKfmbFlE7kLA.b]A,#:'7DE.Mh&S1.]AN`kBoX(BRGT;
*KGTC&`XB4:,s#G]AXs1aqp[0Dr%`'qRVeOW8!!VgTne!ZnKDpQgDQqh5inA3Hq'1h^t]A=H;N
&!O:OOp`e-0lj?]ArIa#bhAe8b1uI:p`,WISJiIZlEl@c0c<Q@hM%tg.Ptaf@g$uH?;P+F8?L
WU$Zd!cl:Du.XUE5'fS@6C2;7R6&S%@T^]APFrEdS(`g6s*23kG&DJ/NY$"W__A3M21kEkZq6
Z81u:BcjY[J?73Q$g17Jp-/,BmKu46fj3;5[<cuAIUMrBBX+H34@3-ep'2G5Yf[7.[8!*4@0
ME1JX*JE&<LXAP::[BGo^8m-26cSqHAH"G7@^2h?BM`SnlGM7<E(IGpIEno]A4tD^nFb9ar)u
H;ok5@0;$>PgPV0*)Xs9[3,tS+ZqfqGX^g[0R\#P^g\eQbb+HDZ,dc5mF:0h5JR'q9c=-L+J
Q?>p]Ao95#ko+k$4Vj@k3=2`*eRqF3cQ_ZY84WN:f5;kO#I92gj-3)722d\X]A.I?gtb(W!t<1
Ro^aB4*RaDt\Ynk!+T:otsB&Sa6SNSX)u69X?1rpFJ</mK_FM@SukKu@DHa.5s<:>Yj'K(@$
W?eIgekdZKX-:\jE-9FRX4[")]ABDSNX4k'1WC[XYOg\0oeJ/.1s9'Vj\Skdbn;a,,&FC_$Yg
;5!aSWAGNkFLIB[ZT:1)f'[3c*7&H%gFr@rW5DFaiJ#aPbk^Lq_SakpEq'I*=2P<9:?eYK07
`\4BbV>.1$@&5ZCd6e+Ue;Q<&_Es0?0k=;-tj^==+^flGmaq6p-<.j>l@0uX9jhh`_p<;19Q
Q@?))FbZ!b0,Z]AqD;\bldN`f++-)G8O(C]ALVQaOZg>C6B^Y\c;k*u"C`r6Wu)`>Z(OA04oK0
q8$B<,?p"kiF:)@NGBZ%%_KV$9TM;_h5HeaP.+GG5a4PrU^(h+q]A3UHdEr2NP3$7MEoi,R-t
E5SPluXMDeJg(!l<)j4S#Pr8^n5[85SD7<)l)'(-[B6']AOTcdSn^r*koBRrt(>Y_6LLR2_:,
K4e"_j<s_FM!DJ>ILBSm1\5rU<$BdQf%bgTF$&8QECEJA@.SgYC7U$=O>*M#?eW*fGA023s5
]A[Y<-:aI_Kq!DR^uKNfU/@Mc8EjEhA5)Ga6K;'_FC:Yi(Lf\5*6-9Pg8<)`9bu:.9(kL7K_1
WZ%"*K![TFAgdKFMB;E>q3.8#>@6bMFFdNC=64Z&IT<)Z>O^>bCod_BY8C'"4^Y,6I"h&0o0
N[HBa[tflZ"S(`,VaUp=bPbq;I2MXNLNGH/S8ki]AUf,8.H58no8f1F\40Z:a[4-YL"_kckC"
Z]A"(m_*%%]ABlROtAk2&XQdL->pLKnpH#[3DD2q->#]A\+=N]AAqr]A?!#l)c<-52.H*9?kn6<@Q
@>/,'KI/>ni]AqdJ>p,MSpd;qOr#n-/=2("<IX4<1'hVmL-2Le?n4F/.?;/Mc\*u\>^la#jdm
U\I[Jl>XPFmHgp[UP$hUGg3;<Xg>t%SkVE>XYgV/VjOPHOV1qWuB":5Ld`MhA)>torc$-P`/
'Vo'Y.Nltp$P+h6^O,31lYUc<qKe03OrDf]A-f&X7(:0o9;p`qE\Og.V,?8&ih_9JIjn#&[M4
cSiSqKf^oXS7NI_"\<`H[PLRObbO)[aJ]ALA6P-m4[,d6[gI+EP6iC?#sc4cjnQ7GZbs!\>h.
0-(SgYFXpV%gfk[0)`37cj#u27Qs6DG;gAAl#s8'QdC?T9,aA(WWpZZg_S_AZ$`(s9/\L+e&
hk$7;1:JRU"/,J@Xi7&Z;`Wd9N!2,#j06kdGg8YTPmhE9*]A[56J0=.g<GrMZJF9*'(o?"\X`
8O)+`5DCB)RA05->lol(UY#+C$aD0<?ZZ,t"4%R5DP&&0qa":jW)O,1+,64W&3Z8UO(g*aU'
_q-0VOO6erE^\*`G-s>KhPGQ<,o7k=%-IiX*`5*>H[3'[<K'G&-fYf%:`4'41++\RF9<&(HX
5rq,"*qM1=uD`pDga!"/=_Hd[ut+EetNTAr+@<;pT+348?$9I5k$d$+/_LcP<m7*8;P2irlM
Fk(AZ\7'/+!"oUmIdi@&H4fJRPVqB^!eL8CLYSYc2pn&`ZAlB=",*KRDYjq.7j&R<piNppRV
SV`fjY_AX`!,MgrOBMRY06NDeEkUJE/"rMa[K!\5"aV6IZV-:r!r1Qpc@#F-`7T&N384Rb1q
46*^o[GY2)q;hn=jeFn9nlF=o>EN0WWQRKXG4oBkDfoXJEb_`N<pQ!<3$X0RO:ifo$JNi:QZ
1K:`40fs?LW5odBVrf/l)rY,j6@Vs9:H@`ehbZHa)/re(XE8i3i/a)2G#V`c(bqqhD2LC]A6q
i7m4Et7l%q?Li;.F&KMgEgueSF*^\Foq_<.6!ETr7J-U'YmM]A[@<n3bRhd"H`fEr7IpdMDZ)
.j9(CL>;`B09._KgM_("u/UDl7;ECX@?IGKpdA6Ol>VMH#1hr-q/$%5U2Pts9Tmg8$@lU3MZ
%WIADGZMTB?OKgF/tl[T=@393EqA_bgue(M>TR8b.HF,g\bsq3l2r`D'YmR,9Mc3S+Tu]A%H!
f;+eeUY*I0=e7YW0<$G(`>7+%he#FaoDUO$_j%O[GdJi(Hp&!muF8F+".]AZ[/&]AdMs]AnWXIk
Tn?^SnLZa5)Q\5Q#+4l*dK[p(ofJD2>Wm#`QL`I'E498(RF@W&J&q;4XN&,i]AuFfr_32NZUF
PcHYhI33(rq>D#X?rj`,S85$d>eRL7QQ'qP^)3n"N%XfOt4-?;K]A?L%')nj^>o8Ugr!mWj24
cqL`XtW0u7U/oY*D$nBp\/A/Tt!e8qhg"U9a-XA$G0g[/=.(c(a75(9c.@cai_]AM8p_i'M/q
'CV9mO0Lmp%<7pp@dSedEp8RQ@I#lr%\n^!saQlKu3=03"qiRP8"pli4f&*2T2.t3OGSm8DZ
?lr]AW#>i46KnKX*CE>MQ%56^H@<dW*ljmAj]A*N(*?8B^ao6aXJ,4A[MAV3;,B]AbnN0k^"&%7
q9.cf7(q?X)=-W_*n13s1mQEg-Y*5bc^,4V4LAY#<AC[Xo2KdV)JujW#4#Re5NeC315Vqoha
ui93jjmjN1W&UTuL;G6cSA85nPacGjZ%E^$**9%Q7LR!ORLPa>#V'=<p>rX<kK<96>%^L1S7
E!#ZTSJutaa-dmt&VbEjb-;XtpSUeApdWZX3f[^.&#e,F81Q`l";pk2;4\+F`Xb.L-O?@?1K
be#6'u%>P(1E3PGh8090`i.S)kL3R;h*^.hN-aI+p%.*E0Eq:!dt-+A4I`_#E4jtY`P]A,`ja
i&K4XXd3<H\Teu@r2SBFC#/4Rh-g/&@+45n%HWQ&SuD23;HERdd\fLek*+n,;j7:?[PE>t95
)4B]A4"A"l]A(Sq76f3cc+(^Ci[7K2?"T^Tu==/F7;MZ,!+2SiQrQVb,?[qP=Tn><Gh(o15eRM
fVM"0I]A;'q.<.1kt/n*]A-&^]Aa^"A10@#D/(aq*N^)fkM7V\N#d%W%5bKE6:+*hQOt8X"BhtV
-\-BmD%,H7lkBDS:_+Rm7M(-Y8o3S!U0K"-fqn]A1PL0Ilh#2i7r)1(]A\@T^6Q^I!1uG`$%+(
<$a@Pu]AY@9)d,n$0b0L,B$q*Q<%i&nm&4/9_.h-j8^Se&e#^@@"t,g"sn>=?_%=F2<j?-eMA
,'on*:/\p<DP)R$#*!Q.rVL$o4oRTaoLY\elM(aTk^aeS;B%K,S<f1#2oBGKViju6'tAcS`*
^@PgV!DOKZm8n3u95";*#,_raO%HQhGgLm9GS-#AXHk\jTe\@b:!,(Lfq"h#h>`Kdfm1B\Du
5gfN<?Ugab=c=h'P:96mQ=fX/Toc]AVoA,!"Yi$.66AiMT/]AFeI>>e1&0pNM^s%.WC6\=l%K'
#5QN1qYN%iG_1@G>beWbIC$'VPPRf+IHqe0X[pck9;1$?LY[/\+m9V5+mCCTFDe`E(+P_"ef
Y"kEPRB<i\rOnhUbe%';ADOc/7\+,V8e8s]AQ`9`NWX7=RSXcp`QYBV7RbcMY9Q81&V8?Q/'.
=NDd<_D&'g4\X`#%;d%t5*)"I&q4h[<b?,;8;-G2^IRePC7eob@.T;>`dZbh\EV'CdW!9?=9
W?mnB"%aPd$[P&D9<sX+E3`[]Ag-fmpa-3*=++]AiH'`OCHPZNf+$Ce87E.S@<!q%D)12rkM[g
:B6Co>QDg8.iC.^$PjR*uY_DM4QKfhZk.'Duj]AG!:a0kR@_1aEPsG/_iQSd0L8]AZYoa%NXl=
mq2s!qlKb:+Ak!C#BJs]A/9ldp0Rl$`p:VWl8#%T:q_`l9pLJGSjVF9DRj]A8tL0n9UFMGD-\?
p%?u@T)'A&2<-l`!%uG('>cg9H1n4h*TI_->!/$>'k=G.N"D*alGb^"T%3LP"<:l-O=R<g-O
):VLLr,C:KA\;@9/kk\D2qWG')gFkOOBh/:n.W!WE[,E#2s<MO^T(&?Fqng7s!_/ME_CKM!]A
M<P1NE=q+1]A&9ij27]AcV!h?1YmKq%t!bJ#-9BE&u'[`28R"=^)%ru.DDomjr0)m:HZSsk3,N
.8=ZYP(SG%<tj:Y<$go2;L$lq\m0BEBK[9CERIgu/Q""k8/!"4:T#GL7ta+hC)[1W&Tl16JJ
kQ^7_5_VO0$-Nq?r;Z_B1:,'X#gpo!AntNsCTIAJ9==C*o^pKS6'D>J>irsrTX;O=5ncdjOE
(8E\,j:W7IXBN-gfIcA[FD)oHok755oi4J5/]A-mTStcNPWS%A1sNo9'V''p1ItOmRmr#3a*>
EXcr`2bi/A0;UsE`"aNj!JUcEJR%bTG"-k)[0l8P)V=-8ADVeROT_.;K9BJ6o,7+hAnK6*2t
4:7)rh@=e457RKuq'/FklX#a5,AUPKm_@ajARsd-9F&!d;[`p'D?L%n7e9o!b\*RK]A"PPAL@
+cNZ"]AAcg#iH(M5&&>%0tX$H@4f/Zsslr9d@(kl_`?S1cA.UUJ(&DO'G(iJp\1[C]A,j;d6A;
eo:o(`cO.4>S]ARRT;t/$s<^X6!Dh@%Cp`6_WInOf-,"A.D4&epGoGP!D>LsVP)Jfc(Hj!02P
)oM.#N%hcOe,@_S6u-@XT.,Z"LoC5^Us&J*u!.!o.`K0hDg\d@LP-H_X);2$>%TDP+:"L>[e
.cZ^bW2Zj9QFETEs+>%1?X?Te*4`WK,4[.iJe):GlsnHhOg<PQ$5/Z`\o8*<4Rl\qug:d2%:
:S!`uXl:<*OB*&r7+fPe8Q/!&Ni*?Z>Vt=R/@DY_;<'-FJ04ec_7?WXfg>S]A/H/_PiI!L9@d
V("?JPB_=%45djbh%i9$(Ze:gTK_I]A<$h2aD_R:Yp8CC!QXVU==DMr7_p^TU@.L/,s+R]AUB#
XnuH:FkN4?[h/9B_8CNbX`#"jQI@UD=di*&s%8A@D6iR*sP*1%rZVQ5<A/"ZU;CZoYb(,uZh
U$jGjaeK2VgB/RdC=Z@Y.rq2ZaQiTC<ZK43?(Hu'X[#K+J$V]Ar_EL)oO2"YB8PZ%1:!uS:%p
NkH=jls*d#h?EqN9cC43O"h/\4mk?n60~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="958" height="264"/>
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
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
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
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=$year + "年水质中心费用分类图"]]></Attributes>
</O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="true" maxHeight="5.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.PiePlot4VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
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
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" position="6" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="1" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</labelDetail>
</AttrLabel>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="微软雅黑" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="true" maxHeight="15.0"/>
</Legend4VanChart>
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
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<PieAttr4VanChart roseType="normal" startAngle="0.0" endAngle="360.0" innerRadius="0.0" supportRotation="false"/>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<OneValueCDDefinition seriesName="category1" valueName="total" function="com.fr.data.util.function.SumFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value=""/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</InnerWidget>
<BoundsAttr x="0" y="0" width="479" height="158"/>
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
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
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
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=$year + "年水质中心费用分类图"]]></Attributes>
</O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="true" maxHeight="5.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.PiePlot4VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
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
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" position="6" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="1" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</labelDetail>
</AttrLabel>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="微软雅黑" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="true" maxHeight="15.0"/>
</Legend4VanChart>
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
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<PieAttr4VanChart roseType="normal" startAngle="0.0" endAngle="360.0" innerRadius="0.0" supportRotation="false"/>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<OneValueCDDefinition seriesName="category1" valueName="total" function="com.fr.data.util.function.SumFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value=""/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="0" y="264" width="479" height="158"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report1"/>
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
<WidgetName name="report1"/>
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
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[项目]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[金额]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[占比]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O t="DSColumn">
<Attributes dsName="ds2" columnName="category1"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="ds2" columnName="total"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="2">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=round(B2/B3,4)*100+"%"]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="3">
<O>
<![CDATA[合计]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="4">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(B2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
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
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-16737895"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
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
<Style horizontal_alignment="4" imageLayout="1">
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
<Background name="ColorBackground" color="-13108"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-13108"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[eQQZh'B^..X]AED='oRkUe0<=-8[L@2<hLp.+VLdiJsZS<$e8Ju@#uCF'fE'r$F*,n9a%K3`!
$jP/?K7mOQ&M_U7sL^8W5&o+qRoFY\(VCk4Uu?TBGeDnqf0[b^%N]AhXc2/i-rLIWM_gF=%>b
NcY8Z^=rj.giAs#<(6*eWs$a]ABrje'7V^s3NAa=qd2q9F>1g!Q.]AB3PY"Eh\rhqmVM[qre(\
3K0&H\3W-=Ic`)k>'_mk19T&rXI>\MMRca[bXFL#3^?1+=1Y9,%[*Y:Q&[Pot!<-Pubg5/EI
c1n5GO3Qj!s^\N\Ma>ro4^+fPRfV-pT#<g8/hRIsq9>4ppkN=>a"nK1U5Spaq]A^tRfk1$SXB
>p8G3:X-S/=D58FMtLf]AIp4i@P13Aj">^28A!#ghl_["GX=a28.Kf;Yo<9T+lglZ%7%WeD1J
RRR9lf-SaGN5@\@8F4P;pCP4qSXV!AZECfr_*u,td:m[Uir'eRJ_$(RPEY[g)a*j^*H7K)/,
\GB;MfO[pL<X8)&?-D)9aS;rn6%o6_oV]AJ?^fk7W"DpF)^#*Lacm=*QR(P/+tF&p)b<iAH='
BUWZ#]A-c%TjXl^eL_"!HD7`K/hr/]ATG0=[o.kpQm,F(!jek-R57+V'9_Qj1!#$c1Xe&[-?[Q
$,pTH;=r=;cLTsF+HDR+f\m&iu&E,rc\-E=,,o^GV&B+9<Z82PsU,,Oo*iV+\=+DSj<ULfTc
@.3VL+DolE^ZYbPE!(L*d%#,c%dG-oGZ%="34QU3l0ntWlXqgrXQ-l_,iF%&/H$61Ek9]A#+Z
:nGp/pc@'I.Oq=[RA!c\7jIVd;@a=+ddUed.u!2Wk]A)oZ!5/]A-'3>lb]AiKbRc1$*a&?Cat@U
XFJ[44Mp6G$%JB:uqu4R3j%6\I!XT]A_kDIpElp#gL9e?HpfFK;DJ"b'@4p3?04P9g0^e!59G
KI,9%/Uk,,aL!R(3an"kbbinjjQ.O4gs63Z)9O]A54`<+\Qc'hX1Yd$&N<8!f^/,fT]AUjK72%
*aJ9/?:AIh!*p>]A'=O!u%o>_+jHWB4h:]AG]A7%mHq3ioH"ILYIiGlos_6CjlQh-($i.I)BXC>
]AWL#eLG#8uF_Bkm1\F(^gM'%0Z55Mn^1$BNEr!!.IX&c+G,+W/c0]A5e$(dH_`nb&Wh.k:7O,
'</TR-r)k)-aJZS0Cgc2Ws)g=CU'H",0uLu)MjE]A=me(^^MOJYiPQZ;(.qFs:_DG4fcL(9eJ
s`Jc%L$ZcW8(+?qJF2Pc&><B*skBDZtXY+p.c-dUi!!qfaLn<>4@VbU`g(O&I!<O=q7<4<aO
/'DU)`&C]A_LoI3[Xs<:FWBC%riQiT:=9bu`CWtFiBKMZ^q@q\6,V$pE0+&d8go9qio4%.A[%
):9=Aql'#dA0Y[gONF?""?<aJV:7=3PsaWs_UH@SLimCY"$musH.$3#AUMi54ZEmF\1NX1%U
ku9;e9(f3\*TQ,C>W*Qmi$BaBnKOc`?*\pghp?3S^Pb(ZV`l(7Sl6"o>d*(BjUW.ApMhNt6+
b>-,_U<@]A;<AtQL(M9`8saK6VC<ghFCS9':K%aa!7[MGBtoibKm$QJMJaXREWaU1hk'\,S-_
Wj`oJQbYq=$&=_`k+k>BdE]A`P-Yn^1Ukq;69ae_?T'MhKmR&(bY1j]A&I>1asuE^&c+Qi/%Q_
>15CZ[5@icM]AbFV8`>q]ABo&LTBEgAm,(?mr2rOQ[BmNqI[e/g^.3/?cIhhtmjIqH\RTM?O(&
Z,B!6U%q4#^&HJ1mB*&\1O<r/$J:9<:PWb%^jSI$mR0%AsFI=X#5S#\=>ordnd+>!#;S[.p8
Id'Ge:H+((pB+rR>'H?\O)/qQ?WHC/i5H,r#C07@r7ir3^eqF,:ufRLhIlBdFdQ#$<P>uM]A!
Ko<p5J%^]AGc9@H^i6>X/^#.`0=RW;pit57gU]Al9:51*'IY3IL0g$\R_cWha7@JudYALP1;`T
8'V'B/1oJCK)c=67,i6MP.t*U_"\G40.P/>OJuEI;m;m[p6DAWM+E*P,\#(?lL<m&K*VY]APp
i96X`o<RhA0O.b>En$V>h$]AqQ:)TEps!8VC"nip)*EIMpPjE'XGg!6HB$No9Vh)=0'HSQfXp
-JHr:XXei171:5oT+e);B9!Zn?P`"L^YldWaYMIn4lZtj]A)RI&T'K+[dU]A6$917Y15hNrlp?
oC'3^e9'<j#qX#4jLY[Ubb(6#M!l^.i@]AOBgth36E?Q(^@D&^nW@b*aB+Fsgrtpp]AiLPL6Th
1lZJ>3BB^W2ZF>d6cm7""Z/0+u"=Dg:5W)+PR^qiL&Bg/S&.PR5\(aP#8LFUEjp/4Ih1"1e6
H^T8GWST;L>)iRh):>IHnGWJ8<")K3nAF3]A:(,RZ"[c=UIo@-@NaZl>K\.m27*"sgFZOE8)g
G5P4<VeE:0NuD!hRM4!*JU7gBR)9<&`nJ9HeQ@hTZThM56n/H<_a[YlB*+8lpSYuHEUm#8j\
\*SC+*UVcm%t156*N,2+dU>0L;aqQ[(/Mjie)A*OKk.(gjj'B68`r<kN-+e6_QnaY50-dJf7
@:8n\D#Au:H57GU>[0lhNcnJE\\Ph!Y>X`a!p>tcM$Tl!]A;3+:2P$4d:gAFJ0.oK[[XU]AXr@
/TXdm@OHBF;B4k@)dS(sdl0NB[O[Vr'OLME9=/4WLsV8Nq"a[b@,OSPNY!ZJ4&9HrP.rhB(8
&&M_teWHgtjN`*aBLJe`kgIpV=F,5'=OL^_c4]AS0:T'W*2Ts>C.fl0[*fe#O%Xf%ht<J.rV)
&IPumX,_44cT`<*Wduq!;fG$<ZX'QTIlON>[lJn8nCF/U$b*&d3O?E5#=k`iWd=cdDR#^i=h
e8F5haJJ,sTq'g6SY0?bQe"Lu6T0q+sk&`PdG\Cuhe0C`U<NenN_&lKT_kmu)M4*@&1Ao+:W
:Y%ehlt>M_Wj4Js!4RRh/t!EZAO&`,YnD%M%dGFtbsB?TCT)438K0O24,;=9BTR4E&5$o[k*
t;mW0P.%AVl6/c5k4ZPOo:j#iBZ4VgEhd6uX`KQY#APL^I:?aV5koI,N\ort.H,H5R0n""1T
4oJl@jORil?j=j\7>)4Dm%7,4#U8i[nPu%F\_lkD^UQ?$V\lR\]A.007ARr:$7I-(f-N6tRUL
uYnpK^W(E]AJ;3&nN:oSJMppZZNo9E8`q[/H!X_>&6%6ud*)/Qie6!T@h'=C%A:,NfUdr6B2@
H:3,+$OJ;F?S+Dq*G?s*VqNLk[qE6)Q7jYLQrR:m*cfa3hS;-^)G08C\'#kFu!?G"5I'nTKY
rs)_uK*:_8*_NMtK'1+@V!<$PLIP7NUfe:hG[1?XoQa"X8F!'Sb-$DIBoC)X/kFY-''0IE2j
Tan/u`&0)!NKc+H/lr:F/mcSa"%4HYRW6[u91s-]Ab)&20d[u`#Zk#2!!=R,X0TD"8ju=gbEc
l02E]AqJZ"S1%mNfjBXrW,>/nBQ)pdY4X(j?B5\nk(,/<LR?B=sFm#mOJn.H]Adc<p>!-GPHo,
r&>#fp53`KSIQ=3s7s2msXmPJReHr@>!dT0jtm`jCdAXYh?N22'0-foKd.^YE%X-o]AcPW6f7
h;@:JO[6_Df_lB6nYGX*%b[QBIS1t3E!!eslMc0>Rn7M#=/cddJI[GUk]AUJZR!@Kd5r&0!B_
;:@5#MZe5cZHH58]A<#G"l7VL8_M^_6cK6=qcZ8HC!oimU,;2Whr3j<M\c==)FQru#@[K78Ib
F(-YL:A5H(?;%&MmNQ]At9O6Lk5,(E4gM/@M<]Aji*=c[3J4C>j<jK$UEi88Ft`_"b)$@aUPV2
q#rl@B>en&Bj&sm74SOjA+Q8KIo%$<4?BM4,>P1$Obo/QfZ=@Tn4O?umb_1WqSn\ck-^+p'N
1:$9[1`iNTg6ARU6LuWa>oPq=EBr+EXRPjcu4M]AEJ/S41"2eBZg(j,L`*dG'c<PYo;]Au&O<+
2jK@@<>O=hKkg+L7u+1\+V2$WZleIp1U1!&F6je'qOgm?*)H[eg7rV0?`CAS5AhFW8r`;kn-
4_eUB901SLAqAQ]AMR&/D'>Z,U6g@]ASR0.g5#t@o@7kOst%(&8?rD^-dYc&2qWTdeOOSr:194
9ZU!fbg%GS5&5>IB*nmN^I1*(>Qm!U3/8$&8Y"IRT-00t2Y2V]A6P6/9o[mE.ZIMTXd-oWT([
4Z6WZP+hE&KD-1CH$kQu57Vg/LVO$WNdN-NAmj(JMMaE/GC%5V@n8<29kT&Tmk+_cscajjaP
6)\$TJmkHSo]A*DgNn#9EOk!bg;c0=^WZ-nCUkhE'#_p29p%X%ph>qHel]Aj_lUcgfS%'nC/RD
<XW,Tu1;5JncSd;\:^-^*e/-\\m9X/tn:\$4o"?aO^)ad:!\aLM/a-r.,NV;?HHC$SmU@i"Y
ZGtWKia^od@:r<),im.-%KIj^A=j.:VaSNOcQ-0EH@.A+k\kkGRW1j1,h<NK6N;Ujs4lqO0j
^cC@Jl,[i.1cr^\-7o/V=@t+]AMZ4RP+HS<m`?@/C@VK<M$G<3G2/TNoL#+(O#ne33TP&07KJ
*R"?42q\9!l9LBnFKO)1^;,EaZO\/U<+Bc;[AEMJ\c/iH^]AU5Hu?T<\Oq%/]ATEg;(TNfBmo&
Wh[\N%,Ofq'Ud\d>*B6;b;a,&q.IPgpZ8p6[tgZi?Fa^9dK9lHW>\'q%V7&;V^-E#(9;bXQT
K9(i3IKdA"Tm?dZ57H0T18(<Z9C#I]ArcLIf+2[QV)P%+#qoT%m88%7JJJJuqut,jDR)7L?#M
GSbQ?K4Om7##Rr_fUa&T'j^0#%ao!<]A\PD]AZeAQDV94a%hbQSS_/%8*86DNh8n,@dA@Z#i!p
ISGiMq"F@Kl#Q=6FG=YLD8$F-5U,N-^RrX`5t"4!glq?D4bQ/V@>nS/22>_8BY-IZOkVYm3(
h;S^Dq+Zn$"Xi[6R`fGV;<%7&FM@Co53au[k&"Bek<\Ui.jH"6*_f?P&PkEF]A`$@rX2'JdH'
E>sO4.]A^Ofamg@,0f0pVfV2u>jWo&]A0PHsi+BIUK,>?iFE$/QKfV+Y,C[hs?2%/O5[!TrgU.
k<lGaZ,Qduro!e'h1fqXFo$JS2uL(,s0Di24;!'D&'Q(/H(/!4;_mV?4(>LOm2aJ5sKPS7\5
R"3QE;t2XTW1J7CWge5N[/8lR'fFSZNYo[:iDeVheRmZX*$1<@?imq#B9?IK9Pud<0at@sg?
-[,fCsh#dO2c2YOWfGr]A1QFAq)U9`c^YZcZ<JA+*goDk,h.Rs!\#pHS#/%II`NkmmQ_9>K?i
lqul'Bk='P;G\R&USB<Ve09.gJKU`o!_=s`Q+:jV^cp=4lL"g`%Dj*KM:#+l>#>E]AZhmEG@g
bEQhdsX&p,kYs.`l2Lj=4FrIQ,HEDB.qs-NVkV/qJ-V)&Y91]ANe9"W!Uc8t)LSM+:e<)U/Yb
#.^p;$_Ak`2gig<@H,Pf%;:p&#Bo'*^-mYC,$-K>$0k"@k1:U.Ll[lrC)iGJ5(&bYPa^0R'G
Ghor.7E0hOM9%k3s1OBndKn$M^KRc?L,>9JoO43<,kL*rF7]AGeR?+X<\OWGu7f<;a6!CUh*E
Wqim`rX5<%VGqR0J-T8I4X/F0.L'I=,#X^^@5^M^2)u%r@r%5#1(=1g+H@fg(#T+\DkdQR5M
a@>0h5@g>Ok]A2DN?]AeF<AR"A37R::9`BE,S"bRWEolm:>J`FqlTf8!mrX8/5</ZLMq<u]AK6_
ZrHOkkjDso'1RsofGIS3/2%-A%Hb_*PSoXF0^GR[WfdO5=$7[R=Nbkq4_XQklXSIgf&%N8ps
7kQjIk0e=fYVKlL!R^in#GPG]A17mWq3L#bD0ZBQlS[C8gm/<6F8Lc38;+*IKlpR1@=/NSj^S
~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="479" height="116"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1"/>
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
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[项目]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[金额]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[占比]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O t="DSColumn">
<Attributes dsName="ds2" columnName="category1"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="ds2" columnName="total"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="2">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=round(B2/B3,4)*100+"%"]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="3">
<O>
<![CDATA[合计]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="4">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(B2)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
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
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-16737895"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
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
<Style horizontal_alignment="4" imageLayout="1">
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
<Background name="ColorBackground" color="-13108"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="ColorBackground" color="-13108"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[h-,/1;cgE)p,05mkI/8^b!W;j""J#)J1;kEMXhCY'T1=XB^JVXNJKh#3=mso;+;B:_3bQ2<f
'f'UgbR0E'ffr(*[3TiMaCG(bg]A"KS3u/mL^t>]Ai3s9VuCS%rEo-McYn5IX`*TTp:f_U5&9<
9R3j7-ZTLD+r(TkV9/85iU&!LQiZIHGmikG!S@Ul><X8!(dF6fjTVMA[Sfb/c]AQ?(YleNA3G
Kp0dhe'Oq-a2tBLVA9:jYY,=O(e..]A3<-$_lZDm\u'BnceQtCmZ#3!rKWYVM;"!%%(_g-afm
W%\HQj4rF%,H%BP)T<h7H*qmh!ISeQnVr>-OKii"XFWAcjNn:UL%Zai:C';:j`7K2)Z4SZ9H
i@K4#V0bLif?%L0fC?XD#i8rRI,&^iUO(V1E@UF"WYe72c?V#k-*A\A"0Vb<jAfcLDWcbGY2
ogAH$i8)"I$Bql=Enj2rFSd#3n/=Z0F^0;It>$6abW&IqDhtWVt5a+hdeI\+_iWpUZ5MP^%Z
O?b5+4(S''MJPiq_Fu0lc/1i>0[qlt\eHh=E$>e>7p%1hel8e.W^FB:0rOr"*4C%6e&bY5Rr
X]AAu&]ACKXI1Y)&Pfd'QVqZr4HS6!@eBZ^F#]A/I!81.f%)-*QW6?d7'7*CfQR$JIoG/`b+W9D
3q[Brc0Uhc8?k(<AmL;i*UIE`CQ?E2LchZlrO?_kG,EP+q=+_FlF6Cm:.;:o9N,D^X,of[&T
P6L=p/!G8L()faq&NJWIQ/2/^\%QP0W>-7m8]A\s\(7`ra<MrI5SDF**McWcA\<gi4H2EQ?&i
i,%jc,!B[XBrJflS`+d5aHc]A7%'=mGtMB)cS<?+#(3d4minoDf<u!OEkkV(pQ&k:62<!:2D&
Xp81M1X(<Mfm=DO>"J?E?Q)4RM+M-7_Q9Amp4Rf0-4-VpF4:hEgG6d(QF9U(;78WCe8Qh=Li
Rp$MdCEg[NMS2^59=hjdd2-(o'/8XjPU43,`rke,ST>>jRr`L(/,>t>p1V%okN,]A:ssUSr%S
YaB&M\cWs`:>s1.YTV91kPi\4\Zr25laj6<[&bdt+73oFbk>4O]AmNI"V)imtFPc4-]AEBj]AEZ
g$>;P2!8Jm;K]A.!Y#o\Fcu0Em@1sI8S3AdBU1J\"qU(g">aEPH=G6)Xh:tl2R9BO^&o@.."a
H#Q<BsYkdY1okIHkL8.cc/U6`A<ADhTX^hD727F.t;SI6Js/,o;p_Fb`%q5s,jSJ%<<4AfXe
/_fq*0O4EXfg\l(Id\<A`[_5_=mCGE-q^g`O=0Sn.5se8UU_("^;03XHldH9Em7#>Tr;s&7A
jbb1Vp&7b>!8n>++PUjdW8'/]A]A)kiejbV=%HK#C2!e<Qg"^#IAXhaA%sa5TAd3b0)l("U%Lb
4,O<!)?0.aoJ\?j5=X%F#E/llM@E5l)l>RkJc8k'dI)S9]Af#=afOFK)'TbsSh^b<SC_T6&8i
mb3nHQtX]AsZZ2@Tr6V9cXIfQ/)MPU[6=eLe-)Jb@Lne/IjlDQ8e`ab_L@lYD1E.&",[Zf2*1
Y:MKQLaq)Eh3oaaQkQQQf@j8tmk8C(ckuj3F]A0QZ#jfGh2`9$LoB'3i%]Ahj\<"&l,QPs\NuA
>(+8V:^<a4Mk9T9:m*gGU%GNU/i@JM2gDeoE'94r,9_/m&`s7m0>^bUE(7.BQhjM3,s3SMod
8fHN5C>Pq5?)#Sal9cDNqU,*NIXT_\K.qclB7]Am;gU`.33jG,Rnqu)P*S[Mm!4g^r3fKJi8:
?DOqY[N_ogHu<iaWM8TH#BN&j#cKUqt_eWiWopufY0GFs84l55'kd+g]AF:UD`r4Q]ADq2(d'a
7&CVI@a8j56`tUs0?8P(F7HHSmngDNO3$gP:kF6+-I">F_(/Ar(lAi=FIcuC6R^DFDO!^rg\
[tI5B\O[9-UoFBCSs>Hm]Amb^kWH`L<eh?YJMfjDWS82B(UNhL[k<;K(aQAQ&X2YF1\<nO"Zh
Lh;Z9bq7+XOqhBo,<?2msm$B,IqD@=&Q4/_;3f0H]AVXNj9WD'ui]AJ25DPMIY_k0/'cmS)()r
6b/1)Ac&"m^>l/*hj*4S)(75/R8.=a-&"'\eLp"*2qD`VbPR`SqniPnb,m[&M\-*]Ai\#2J;?
n2-"'uOl,SK5GNNX?X4uL9#S)]AP*dh:=Z?8iL:iXuPqC5Sua4:'&qp=kqX^SQr;C5mAl&7fJ
?"$PHo6!b(UMR5!aJe/j#SPo3AS34`obU&&\?<i[62CE1O`iW7G]AF>eFrro>,A+MreoflA'.
*IK\Jb*ETuqf3"k&WL%p3If?ti.#[FZsCDdq6/Vl2Xbf%)9bRc?P/`ptU+?iFj=-/&M05uYR
LbMOm.2H*JUFSc(a2"AF7mCkVu6r2Lhk^7N]Ar`U_K&BZ:Br"?8%c+!?7kdh=S9j___Q`_%'Q
=8'*dS'g15C*""Q7<%Cep">^dUT1Jg?1(3YB1>4gR49)SLD,;edgNoT/K=[obM>U./%3?Y\K
s!XpSqoIJ2c%el;seSDiJDH``GH-F(:SRRr`rK^')tNfDl+@r\o)0EM&\`";(K+/'ChB"`sp
VBd@Ybo9B[OsHSrWJ9%Ma2K<]Apo;pVWb7>QpA&XYI5Wrlr1:L4WZsu27*Sb.g!eLU3u.3M+`
H=3@1_ipE'gSKG;r9Cs8#-@>`lI?e7G,B<AUX`kl*Tr2)W:2(u3CX]A.4;WMIQ<oYVLLHk!TL
:aoDoCroa")n+(TLpE7SbKX6,\]A!em-V"53HVRU84/PpO`NOj,Z;9tM%D>]Ac#)+Y"1T"0F0&
'h7TX%ZIcbpO*;SO1W^/Gro`6F/d"WM#XVNt#^3g>8F^Q2\S='_:-M);-D]AAFKFUiGXLT^DV
h*6mHP=)e(LiPF;\()1,b&EaSM@6nngdi+8j^DubG_KRDFF&OhYiE=^`%C!%H0DX"Kuj<I)s
H17RXe1XR_P+$(c7gMku'2>ZHPmd\*>0#aC^&8,f/-R")9"HVM5XqGY+.5[/%iDgnU6EV@1G
?.6q)H9J`K)bu&Lm*ZAK`=^dPiX4WC5O(_apkO('5Jm8(=R"[:CN:3FNX]AY6)Z6j1bd#\;q"
"\.-FF')2LAZ:c@M1::<a8>@+:KY.t:Zn-_aREYh@DS&$Yp67#:3g+&bIE"bjU#(S1IRTJk0
_silImj\s'E0rI8rh"I*F^;Z<Bl0;I!f2c+SW9JKP<Td^`ts-jFNi]AXJ/SMF7m'7"P_4Mgl%
b7O\Rhd1`1(J2Dt>[/uA_$PPa&d`h_#OeuQcA8eKtkOKD`R_7V7)MR@,JW&LJ;o!1!aYk&G=
(_XtursqC?+$6F`2[>cRAr:_;,p,F]A.KeqFP6lNHr:q&J)q./ugp&U\JQo^?W70bc6(4uRaP
C]A=Orq5O_]At>2+d*U$.X:baLb`cj4WL%.NI-^V:Rsr0Xt_u+&773G,Ph7rK'f24Q%&j%k_K#
e13u+b@Uff]AF,Da8m=pa3jeDi9AV5+pf_!_9a[eH,EorqZIWV<;<\TDFOP*PXh0dH(.jFund
&!eZDH:i,H2o)M6)<*L$K.Z@OB<siGa%XK4=dg\/a<9_@*R)q:ZSE/UJ*]A0nJgTCmK-YF$Q<
Os(XIa5l=s^CN<@uj9-L6e&p'O']A7QS5aojZ/(*s;<k\uS@KlO@6Gi7g8Or7.Zm[lupQU&BU
Vp5cc\oA%@Cl)j#U-hbSV,6$_:&`%k&n`K[#"G<V3O8\t_a<\C^"RKP,[Nlnq,1o*f,pP>+e
BMcHTYMH&L6J;Hc2fqXf=hMY:#aJ57W%1<&AWcGDR4^QF[LgEhsmlmeJJ2OF[m08[SY2&lD;
8\H&(t?@3`GglA="6+Ju'+E=YkPmmT.k^S.."F@1dOR*L6rO;I(;6a2eqXeM/ZOC@^\,T>2L
s.@V8'fX1AK^Q@Kt*ER"p@9\k45&Q_ChmuHBZ!o2!"qK-Q[P,'I?T*jbAS1!<)-GjMS&pFTh
b-Wt$?V[HP-5Gnfn:=>%>OlsNIF)!g<T#t7?ZSQd#*5;!SqVTfUU"iI%(#6^&^[9%eO3su)<
;8&ih4"k3*A-4O:Afqk9_-s>F4Eq7b@rKR<$&&TJ`)rnVlTP('T`^hLlc(fUeAX+6"iX3c6a
2%m/-0gO#9&*NCS3fELmBL3d$fB:+?T!.\aK6!S^#m2l-fWU47YcU.`R0N@):;BC&b((>3;S
Y]A`kWs]A`_Q`((?c<4ZX[iJAU<3#"Cbn'QhJ4$HIQ;2pKtXJ3T.qa?_l2/^]AfjjDjW:**IG0\
UABmJ0bCq9FhS<Sq(jnSFU%sc1%X/eU&-ADlX8sabIGe6QI^\DI=#&eEaEWEPEMRRG<k\?Vs
iiVB)0".k9i14eJ1;``jDK>b0pR!NsR.q2nl8C*!Vm@Nh8B([SV^05(EhF1?d0*=U)YXm#<d
5Qt;;#[p!G2<k=YdiuXH,ba\18]A'T(8J4);64&tYU'sX;#n>$1TSb!_U%*g8_A&#IZ5'$W5H
\$=AH1CCI)[U-PhP6^?UE9REj4$S&;m?V'O+]A7PME$$IH18#lB^]AME96&Bb35H"3oio78]AQG
u%tcH`4p>ESRGnu91LqXE9TX<*"o.!eKH_!<o:.g\jRfK&S45'rXS7H\F`1.%-"GjHAb#UM5
no>-"?ZLrr"\A=pY<W&?NQ*I++ANM'W@Wg7$kB*)#X-oC$N^^Vl-MJKgFpG'rPOJ(V5<mH`=
9F"0PClqrMnaD!,TF+:Bh&b%DHLPs^T.9`UQkIf+:"/B&LX6,-6geA:h"f'.i6<1OT+\jM-+
hpK1Hk7Lejj^XW<==?+Ml_luq?9/WDi[guS*LL89AK_/Pd/-dZ511$Ld96Q@O'b[:$D*hs<;
%foGr`5H8RSF@h8&cD%+g5a6'?u1`I^\]A"rk[&;1X[Q;6$E2j:K/)bu2W*ce(M9q_40K@0:-
,@d\_oVJ_iLfmn>O`<]A,QK.bQ'Q1hG<m#6Uf6VF5C54E]A+>,@YeX5\<P]Aka!8Y[cOor;=Ot3
"TU0``BhY7`BVagudj$0#%Q0H2FFs]AT8bi%6XIbP*``;`rqgM?O:OM@MO$4T[+/&k\^@9KAH
R^6bnnM/OTU[Z!mgbP<o:7*Os`E$)&1r[nS"e]AH%EHgD#7u:/r3;Zs5'X0<:Tb_*9Zp*5/S,
*;Zh:K+n*rL2XPBTi_%l/j@q#bl_"G/@uMe(jJQXkLZeA?N1I60:ImaR4s8^HGBO%cGt<9;k
oG03s#0<Sm'[D!Z]A/FM4T`eMo`\VBMA2:l8s,%\n9\u6KE#J8L!AC7Ru3@J6AS[]Am5F.Ch*N
p7nXs$>Qru:h(R^K/;>ee(4BgYcPs#m2UNW<TTXd+^X9]Ar'Y&'l0?9N;BG^eF2N:P7$/Lqdn
1\;h["!RP-_ub5+TnoYJXl9rcX8]AhK9NW,Ld:(B,4%Ga@\(r_(^kP>>rTC$9`%em,G)>2CVe
Ubp&_=aW>XNkgBAskJQJ;8c[cGCb4g@2%Xk2fXC#!d0UA&,grpo$BoDqpo!Jq2W/pt[9F3rt
k0"Q&F$^OonaJ('1s4FO:ULD1<EZUH_a9G3ImM!PhUL<g="B5Y_/B$[YpUSb37+rS"QIeO_g
-BD@WX_[X#,6$KYQ=c(mlTW:,M`Tj;0ouH?(1i?WI5V?oEhe'n]A9lUCH)KhnbuOm[/.GjOJA
3<ha(6lpQcNJmj:-@QK?f"$I4>XfU0Kh.:Pnr?E_1N_'[5FfV"@m=\hQ"T=mk,Tam!iuuk;j
sVg$DYIttS(_rtU3Wp5FlTV"./A>n~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</body>
</InnerWidget>
<BoundsAttr x="0" y="422" width="479" height="116"/>
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
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
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
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=$year+"年水质中心费用排行"]]></Attributes>
</O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.column.VanChartColumnPlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
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
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.chart.base.AttrAlpha">
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" position="0" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</labelDetail>
</AttrLabel>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
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
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="20.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<OneValueCDDefinition seriesName="category1" valueName="total" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value=""/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</InnerWidget>
<BoundsAttr x="479" y="0" width="479" height="153"/>
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
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
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
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=$year+"年水质中心费用排行"]]></Attributes>
</O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.column.VanChartColumnPlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
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
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.chart.base.AttrAlpha">
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" position="0" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</labelDetail>
</AttrLabel>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
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
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="20.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<OneValueCDDefinition seriesName="category1" valueName="total" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value=""/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="479" y="385" width="479" height="153"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report2"/>
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
<WidgetName name="report2"/>
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
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList/>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList/>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</InnerWidget>
<BoundsAttr x="479" y="0" width="479" height="121"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report2"/>
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
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList/>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList/>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</body>
</InnerWidget>
<BoundsAttr x="479" y="264" width="479" height="121"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="958" height="538"/>
<MobileWidgetList/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="IAA"/>
<PreviewType PreviewType="0"/>
</Form>

<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20141222" releaseVersion="8.0.0">
<TableDataMap>
<TableData name="按年查询" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="年"/>
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
<![CDATA[select MONTH(日期) as 月,SUM(借方) as 月总和 FROM dbo.IT_maintenance_costs where YEAR(日期)=${年} GROUP BY MONTH(日期)]]></Query>
</TableData>
<TableData name="每年分类查询" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="年"/>
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
<![CDATA[select 分类, sum(借方) as 总额 from dbo.IT_maintenance_costs where YEAR(日期)=${年}  GROUP BY 分类]]></Query>
</TableData>
<TableData name="年IT预算" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="年"/>
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
<![CDATA[select 预算总额/12 as 月预算,预算总额 as 年预算总额 from dbo.IT_maintenance_costs_budget where 年份=${年}]]></Query>
</TableData>
<TableData name="年实际支出" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="年"/>
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
<![CDATA[select sum(借方) as 实际年使用总额 from dbo.IT_maintenance_costs where YEAR(日期)=${年}]]></Query>
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
<NorthAttr size="81"/>
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
<WidgetName name="Label年"/>
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
<InnerWidget class="com.fr.form.ui.EditorHolder">
<WidgetName name="年"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[]]></O>
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
<BoundsAttr x="308" y="25" width="80" height="21"/>
</Widget>
<Sorted sorted="false"/>
<Display display="true"/>
<DelayDisplayContent delay="true"/>
<Position position="0"/>
<Design_Width design_width="960"/>
<MobileWidgetList>
<Widget widgetName="年"/>
</MobileWidgetList>
<WidgetNameTagMap>
<NameTag name="年" tag="年份:"/>
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
<![CDATA[IT费用月报]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.Bar2DPlot">
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
<Attr isNullValueBreak="true" autoRefreshPerSecond="-1" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${SERIES}${BR}${CATEGORY}${BR}${VALUE}"/>
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
<ConditionAttr name=""/>
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
<BarAttr isHorizontal="false" overlap="-0.25" interval="1.0"/>
<Bar2DAttr isSimulation3D="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[实际支出]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B3]]></Attributes>
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
<BoundsAttr x="0" y="0" width="372" height="157"/>
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
<![CDATA[IT费用月报]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.Bar2DPlot">
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
<Attr isNullValueBreak="true" autoRefreshPerSecond="-1" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${SERIES}${BR}${CATEGORY}${BR}${VALUE}"/>
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
<ConditionAttr name=""/>
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
<BarAttr isHorizontal="false" overlap="-0.25" interval="1.0"/>
<Bar2DAttr isSimulation3D="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[实际支出]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~B3]]></Attributes>
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
<BoundsAttr x="0" y="573" width="498" height="317"/>
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
<![CDATA[年IT费用分布]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.PiePlot">
<Plot>
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
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}${PERCENT}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
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
<Attr class="com.fr.chart.base.AttrContents">
<AttrContents>
<Attr showLine="true" position="6" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${SERIES},${VALUE}"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</PercentFormat>
</AttrContents>
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
<PieAttr subType="1" smallPercent="0.05"/>
</Plot>
</Plot>
<ChartDefinition>
<OneValueCDDefinition seriesName="分类" valueName="总额" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[每年分类查询]]></Name>
</TableData>
<CategoryName value=""/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
</Chart>
</InnerWidget>
<BoundsAttr x="372" y="0" width="352" height="157"/>
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
<![CDATA[年IT费用分布]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.PiePlot">
<Plot>
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
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}${PERCENT}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
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
<PieAttr subType="1" smallPercent="0.05"/>
</Plot>
</Plot>
<ChartDefinition>
<OneValueCDDefinition seriesName="分类" valueName="总额" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[每年分类查询]]></Name>
</TableData>
<CategoryName value=""/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="498" y="573" width="471" height="317"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart2"/>
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
<WidgetName name="chart2"/>
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
<![CDATA[年实际支出与预算比]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.Bar2DPlot">
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
<Attr class="com.fr.chart.base.AttrContents">
<AttrContents>
<Attr showLine="false" position="6" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${CATEGORY},${VALUE}"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</PercentFormat>
</AttrContents>
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
<AxisPosition value="2"/>
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
<AxisPosition value="3"/>
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
<BarAttr isHorizontal="true" overlap="-0.25" interval="1.0"/>
<Bar2DAttr isSimulation3D="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[预算总额]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~G7]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[实际支出]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~H7]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O>
<![CDATA[]]></O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</ChartDefinition>
</Chart>
</Chart>
</InnerWidget>
<BoundsAttr x="724" y="0" width="232" height="157"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart2"/>
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
<![CDATA[新建图表标题]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.Bar2DPlot">
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
<ConditionAttr name=""/>
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
<AxisPosition value="2"/>
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
<AxisPosition value="3"/>
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
<BarAttr isHorizontal="true" overlap="-0.25" interval="1.0"/>
<Bar2DAttr isSimulation3D="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[预算总额]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~G7]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[实际支出]]></O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=report0~H7]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O>
<![CDATA[]]></O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</ChartDefinition>
</Chart>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="969" y="573" width="311" height="317"/>
</Widget>
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
<![CDATA[1943100,1714500,1676400,1562100,1752600,1714500,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[6096000,14668500,2019300,2743200,1905000,2019300,0,0,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="2" s="0">
<O>
<![CDATA[IT维修费年报表]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O t="BiasTextPainter">
<IsBackSlash value="false"/>
<![CDATA[月份|   支出]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" s="1">
<O t="DSColumn">
<Attributes dsName="按年查询" columnName="月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="2" s="1">
<O>
<![CDATA[实际支出]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="2">
<O t="DSColumn">
<Attributes dsName="按年查询" columnName="月总和"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="3" s="1">
<O>
<![CDATA[计划支出]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="年IT预算" columnName="月预算"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="1"/>
<CellPageAttr/>
<Expand dir="0"/>
</C>
<C c="0" r="4" s="1">
<O>
<![CDATA[累计支出]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="4" s="2">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=LAYERTOTAL(B2, B3, B5, false)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="5" s="1">
<O>
<![CDATA[预算使用比率]]></O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="1"/>
<CellPageAttr/>
<Expand/>
</C>
<C c="1" r="5" s="3">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=round(B3 / B4, 4) * 100 + "%"]]></Attributes>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="1"/>
<CellPageAttr/>
<Expand/>
</C>
<C c="6" r="6">
<O t="DSColumn">
<Attributes dsName="年IT预算" columnName="年预算总额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="6">
<O t="DSColumn">
<Attributes dsName="年实际支出" columnName="实际年使用总额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
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
<FRFont name="SimSun" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="80"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[¤#,##0.00]]></Format>
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
</StyleList>
<showToolbar showtoolbar="false"/>
<ReportFitAttr/>
<IM>
<![CDATA[eQR5\P\o.rfg7)%@nfDb,_Su;g4gAWZSY@!7LV`*DN\ZfPGLT\Pbq>m8B.6,Q@t!SYn`P@OC
[7_l^gQ*H(X9uQM:@<rI4EpHX+a>*S5QXa)TtrlHpi2_Lb[;0GmLYJC2*k0GsO)(i5&RdO!h
8#c3T3^gO2A#PROKkt@dqQon5"DnRj;6m>XtI.W_9=5`K9\"&W54V4&E^LGrgqsn3ViWll]Ae
s=qE?RqB"Fd@>K@]A`Y>0UHOQNE4hXSu\^2($.mX//9smDg9/E-=Dlj:2ln$H1da#-4Y>b_hl
AZH#sc*Fa6]ADa+L8GIXfrCb9;29?Y8AA^Q=#^c7Hfd]AfA;O_OF_dS.+4@T/H,(qbgJ3Cab?A
l<BAV+`Cd+S:"'@M5W]AfS`W+^nPUZ:;OQT:Z(\sNb--i!WmfN2`k(t!H"\>b4Q%H;dUk2?f>
,n#-Eu:kU"`W4W[&Y)2q<4%X$UBVo-722XFK*(Y6puTU0UDKOSL)>A^]Am)&b4ln1("t\8TpM
T[Ehd\d4*A$Pj_tm4Bs<9?Dh$W,M%;Q7pq./4bTnW_,D'5&blV8Tekr+N^QuQ>]AuhYbd?X''
LDr87He,[`!6VUOtunf:sWr7_!8`H/go2@V3.bB86<rEl4-rq0]A!$3_eWP$\JMa[3fIJJ,/?
o2JQb*^EJGgm,b0miA^!3N_'0u["DiV3fTTDR8S,gYeM6>MV5jhLhO_!,NG<YF;YH6ca&EU:
#_;"+[5DuE8m?=.Q]AT)^KqW,`:3\Q8/stW5lEtCMJ1%M(@^NBMoWe2RV(b=_?[OD)/tKR^l5
:"B`()_UCS.4IC:8T(::#d^Ub!9LIT%a$]A>3IRBkK?i*SZt6S)]Ao--Vt>.J(>%%/qLhV42c`
9@5.3""$<_>%#-`P#:DT`$\BO"=uDtBP>m9B!.u+QOa(<m?<slS5@'pS8W[gA"1*m4RK4DCB
Dlq')?WJX8]A$a$0RRpOSF#5DX]Agq6g_cJ+8U^_J4;-AIa,]A_X\1#/%\L3hQqKSFLVmmL""ie
Jb&'U1aOupCFDj^',b_:5!,#Y\'A+CmcGC2K`B7;jtQTZ?$1&9)]A@FOEtq\`DJ\aH;g,&(<8
f-[r8nUW8mY6MlQ`3_6(/M*h,7p933UD()"mp&(C2\UT?DMN3K]AlbUM/Q%Tr"^.UW`Iq!WJ9
tq,]A7.tX9E\3ZnQCXA/buHo--YF.[&*Dm<hS!Q8bCQp$1k@0<:\/q<c.$&U"jV!r5>f6A4.^
ODauci'.FSeD&sB3gA+I6p@SW=::Km')(^WH']A<+"mQ*[\mbVbBMP&,EHKK*2Z9Z1/a#b`/_
)k5"%ZJQXL3Jo!>(\G69Y+_H+2!elcG'4nXj&h4`q'4T!d'P&Y9B8gWE@@hHH.D4UMVJ<149
a]A$!Lt#>b7<F[j@8ebt$fnHu`D(!d4fkc[b3U5*q\mC4CTpo;3GQr>\b2"VS&!&sCC4DNrLk
'fQJF^-t7fo6UD>]AkQ!cQ6aH"bg=&@Gia?E(t=(p"!p!2@]A?N^)%pB&gcOo\#oEWXYq3E<>P
Q*sO^EqUYtoVb:=!;o81:R)Bi=A#>2ShRo*=+U+B6:$hb06RTru$M>Z$`HmnD<s^0qt4iHlj
\+CGn?NCZCjkQR1cp>$WikI0>-!OU:L4BGKlrP[Wjl=)Rd$u_HjbY\W3h^`'AV8PWA;N)qj:
_U&=+i%m;FK0n(Yr:Y_#q%f[=Q,_u)B:7^VjX(Y&("2ZQMl6N3&8X/GtY6%EI]A98*\e8A>.>
FSM`E0E:g\c3hLDCGQ+Cb@I&6MkcT'_8aM%C&Wjq[+>?c>^+s^,$KON,=1A0??.Jd6"4i^,[
]AgSL(]A"6gVZ8J0R6NuN;?M.m(qD/3konB_^D.eU\d]A-Z4DVYS.@SBIi]A$ET]AD+R1XSc@Pb4[
2C-l(#u"%iS-mTD`)k=qoWH9\'lJ(sF'/rYWMU@[6P[<(Q]AMh7J5GH$?U[QI>m,>NVj^`]AJQ
OZG!H>@Qi1->e$/D:;9H;Q@T=I?WJ,K$2RX]A4db-!RU8$Hp<]A<-e`]Ajiq6fhJa4AhmWNj_Ca
IiS22Z86Cae&h:>"%u\8,N.o>-)_BhJ\d@kJ^TG;s?heHQG._?8U1H._9DI)B&H'j50-QIAG
_%GD'_ir7ppqLlZP0^E/A,d18:Anc+nC1J'sqA&#[eeU%fC/DJjEf\_kS.Mm[gFlWUJ!44-3
4X/e70c^Ko'E%IA]Alr3/m$c$G_nsN!O'SOL:]A/UVaR)U!f,]A.kQgF6W\>$/7SCK?mpX,\EAt
QdpNgVD+#G[gS)2.O*'&=9^;@=U`l'`R7*m3eE28N!El;)sjkGPqL`]AF8tX=e5<Ud8B)plFi
K1\GX^M=,=.DPee_/[.aVbP-(b@;!qHC,V<fjQK#lK.:HiikT)D(FK"-XnB<g-gSDBHAU5%[
$KY/#j[o3+l&O>9.al/f)%u7;USI$3_kl83!?,:*7d3e]A;O3T*idD!nu#tLF%Ji0@*LccVs.
JC?a[MC43%SIHP9,hg%?^b7"_Dl\dCsmFS724,Xq.DS'7>&IaQ*)C6e\e<C,'cm!+k>LP=UD
&VcZ/1RK"X1cLk8Z>9$;H/[(R3eKHYk6+6M1X:ORH@&G;XhBqX;.!C;k%UY+SQ7R+Fmt@hkY
i.8+_p4T:d6seRj]AP9G)X#+.?n&'I&\;[Vt`RrmP]A=ThVJ0c7u&k=-G^jFQibfi?O_F#anLC
L]Ac7&pnDCZ(g&5,3BrE$SX(?f-@09&ZRC-?X5[f0q-peStD;*5cdL@/10:L7mjp!YNpK,nrY
nXNYXWLOn9KEhFY>5kATiAZo.rphaM\XI^^,p?lMTWD#"/2'eoLs]A)FO_k(d/8n@1(V;#7+S
$=M)M>hr7W-emHBP!WmG<I,^Z,G77B+8TEEue=,eUrqnsUC9Rneu[NP.+?Oe10$/Mfea3.9A
RETl5o*LIV/h8fg`!HZ.UrZN4nIMUpiQVM:/JqmKDkgaB8j]AJ!AZfUEh=$.$j9Lj=hTKssG5
^40!hl>cZ^eS5NYb8F.H<K24%cL()fJdirNO0:X:8`O.h-AI6hqr+lEW#"hWn)qD:_^,=U?j
hNOF23:(ju+Q/B[\Y)fDf6;"_go]ASJm,K(oqfBf/+8m>K8)!u;aO[paEkg%M5[#I<:M,4"N$
kq-dV2Dj/96S#gV4K$UVYAu7e-E"TWIf)c<PmujM*rlqgU8:jeg>`.ecV$fq^EOc'#Je_gWS
eJ&,-^@U99_WR@Q+]A,ZA;'L1_q#cXVI!pn>k9/GA?c.Hp)7kJ<[[le7oDp*5RFg@!8lkPNJ]A
nq)dJMP`I)$2S_\Ojj%CfB6K$k2,ae[;:mLmRX?rdIZ$$4_aaOSL!@r327p>1?E21NkA'c;M
\4Lg6CSn*JL(lhL&&Kp?2nffr=)s?@^+Xq,hfNn.g&TCK`R8EEp!:b6$RM9S`(pA\end%!8+
\;'E6>XgFkY[^,k]A2*X&!V'`>kC`olok0$k;@_cBS8RV9b9p2*.cLaN$IU_uaqB8-:L&5Nr_
0TAlC'*(?jut[A4Qe&"!f;^r,=GC6m>G2ueASWa9"C/r>Z]A9scmL"&-^+,9P*B[?_\`9erU\
flOqC%A"3>n[]A2Y;d4>PVnAE5;`d_EUVZus`/;^OMI0'Ge3^INWGqBXTD4U2NQi1)Z=\&OUa
b98qu-G.0K,WtD0++R:10@WFEkNp]A3S9=<HTUG5>8H$E\Ok15sJUjN>E8C0eZ_*pWPZf`<TW
]A:.r.$[FXN#I^IK]AMi?JkkSGj<>1UV-=%jN#&u,(_rc08?o+>S&Du8fh?hVq!Q+$5_Cr[@"j
j$#H++3`Tcc:uo"VK(L+eSkJ)`Y^c83(GC9,l@Oi3h"\9j_SE;=72'"^`qM&'+HqUb[,l`>4
pQsb_62Q/o38SSkJfcIB<S37aVuJu=g*RrWjhT7FLJ(I0A_XgX613"_XL"9Q-tVO6ka%/(Os
nP/8-kJCeTLI(W<`qHZZdco=0aa9Z1j]A6m>Nb%"$rT#<\Y<1B#<\53A5e!TnN_j2E0L)%Z1r
r&32dmL8S#kTb=Di%E;l@CZp^n)">C`cC.mVTNZNlaXN+3$S%3R!NB'RF'E$3h>:iX+g!t)&
Yoo0DBTM`F:r$N$#oWs1>81joC)'R1YW_%b^ik,a<c@bW=,jZl;,J)%fq"FYOZXf7uhF?lht
]ARFJJnFAe8Sh_@C21*$0,SR*E4<*M3;eiBq1>PM3;@rdSXSC3qNqTI(BQX?k+*c=B8L5@7qd
4S&Ym6?&oT0#1(1%<[r.G6)S%h70^DJmbtcs0/1]A8Z4j**#S2R.m57Yj@4Zb6-0*@a:<nX;^
iilq"5cFPP_5CX!4YqNb7+b(2SGd:\as\7QgILCrP1OcmE<)15W2QD#i8m6W@rNutuc`s1^b
pe,,WW8ST^]A?*t]An1bGGF<Q$"`VgDaqkuan\J;t6Ao//\Xt2I&`C!%ca*eU1&79U2q'O!,[Z
.?=qoG'2I5s<Ic@962?nWb>=n1*SdJ7Pb*BR5:L%XPI,u(.i%LebR?hVE]AVPM%jP,Vr@>k-u
8hY_r60((L]AR/p=oSS=;Wd=VpCeE[dZP,-]AderQjg0`0[%G''C(Ln=)7=QP$8B!,M-%W`k-=
,N>NJ9dZ-\Fp934*G=iOV[&='Vf+0f6;jImT+h+IqR$h,C<!=`Mcd=fBJj]A.H_k?4p/oh[+<
mXT#`LmgeTQpa1Y4-kP:rnk>;#+fCEISRl`G(N@-=n+PHmCYM9UrVkRY'>KVkCICk4e:IF=!
j\a8m[Vgul=1)>*K8U[=jX6[ipq2RP/p6![;]AU/^28`>a8qA;o`mcZ'=(LY1(hh&0rP5$<S*
dmkmhaWR)MgJeB+4s,RD.C03Mn]As\SMS)VjO<h3;m7k=/MhOM?NfWZB/Z\r,iRoRJN6:>5Gp
Y*S$YrAtWHH1=-@U5;aWu+p[ZI4GUQCB5eSYJ_okJ.?^9T0dE!</qp_TZdCY5@nm*FDL49)-
X+2-#]AMBfbFiKU\*;ZAkp0gkN;Ob"_Brjf!R9-'6<*NBJCH8[kpV3P&,DP*/0ZkI9^$P):%E
oOB1UOnpICTh!]A9.dXbSWG#jFQG$52rB)cPL)!nVg<,J1ZOY4ar)kp=cKnN%i!'Q(S<@1:Wp
+m[YJ46f`&e-F=[T#ToT-Y9sU^V*`&qWP`+Rqtjh,,&1Pf5&is63G;&HB8md,3Z(/S4H*Gaq
o!2dYeE$W52W[&=ne^O4pjF<fiR'U'"SXbD^j-PNXE"_i_(OY,eQ@S.99IdsT_mm?>[Vj7q<
l6L"rNaJ6t8,jB1L/H'.7'o@qrp8N6M'2Z87)p=tQGd"*oiWGKG<o$i=>\,ZYh.D#Udum;?F
cC)%FZLQhiB*('W%+K-"aKQOP9F9>I!V3<ThHLO5JgHDhC$C"[e*3.1\ll<Wd>W;<Dg*>3e4
<6^5U?)Z@:TVK$L!PFa1]Au.-jR;@CRbUaXl(4K[,[G/:KY:r,!@5pc1q-KA1&h50pE]A^S4:]A
4X?6CD\KVPM\\*Yl<;TK:n8ne4J&MHi1/g7KPkY<rK/5I>>u3pR&ZDqj_<41\YO6nAq&R%VQ
3kS-B60dWYHPHIbQ@PabF7]A)\Z90[^57h]At3+1gPKLNA(U*V1FsSOf1Qa"$R+`3bfBlV;UqZ
njG&m^o3h$7pND_$7+--((B*Hu"M$N2'@pa.Ih5-:o5mA0?dbe^..:<'DQM%c\[lL!JfaLls
&9P4SU(n\R.>(pMtDo&d)8P'k^b=)^mHptr0;jh7$H/X1Y;`V[fY!4]A89b1JkTT,KcZY^6io
7)g3X3*QmO6S-qtt_h*T]Am>q,_Jc3BPR.tDGECHs_80n4=(G3M<hcGlT`N`hr/&Y-9*f0QWJ
]AQ#iD=/ffD'-`cc23,rj8#&#sXF;_;-:N9o<abp#SNbc7h)LWoLeLgsdIRN6=s4?;O?ra.:<
C.Kdpkfj\9XP6i5H(I]Ahd:J.G\%SG5+Mto*E+KrRN#U\X)u[-(5='l\:;DMmk&!aiNhda-LX
4<kn,HAKl6CXW)_hiPeY4XmOpRX(m+q;K691!]A-VA9C3BI;7dnH-E_[+CMHbuO?'9W]AhsD_p
%nX$I$"d,En?:Z@iq2T1j-MI:i_Df?-eY(kiZ$B;?*QtQnl3IR(bBU9<Q@I(;p'\HL:Su_hi
e#Co'U]AiWt`RP:I3m:EPbOgh]A3`Q^dVUfFQa%\U;=Yb>la#Md,@*PP&eA&3=t<=Z6lV+a;YL
CDSI7d+3\";0/Rq`squo\Hl?u\,!e+k%W8Be*%i?WMR4s%/H;?)HDg#U`4-MX1(ImcD637mj
Alls-0`3DXTPI(5u5X]ANl\;nI"fte4ZF<IHj/7`k<1;AP`pe;"XPZHKM&P8>4W1'!Ugm6>-m
kC$2nr+4Quc,Z`AHg>T$iVOhe&YKpL<l'0SD^FqiV0KD,_MgGdgZu\*_o,FLh@qH-LDE)BU=
4F\VROUl^0ic4p]A;[rsA'-Qjs88tO>J6+B0oL:h^5p6lgElaBqN5-s9II]AQo;9KpLe"kJSHD
rGh@SOfT.<YrnAD$p7Tjg:r$L;-`P_-:4\O<mR(;AO0VdcFSRGa:Mli;`l_[4UJ$$lnF)8$s
?c#tGQU\_`\R89Z0DPT"K^7d\p&sntW6V'&CIjV/i;[!tn(ps&]ANZ>:(G$=!q+?e)jJDd"'L
IWSL*+m'Yf%NN`_Oj.%CKH9?]A%U@?]AWOEAtW(3Ac7!PB\3,#Z>6t<No@2]A`RS`[RZQVeSEZ9
0.CV)-CmnfZr9S(HE5Ns\II6ku\;iq3[2>bMnD+R'HA,kTUTkW<PY?R`N&^W@DlqJMq'@a+:
&)Vu'(:ks=D?:BW@k3-OP=o$K?Tp&5.MqOql"/PSJmKcR-D!V!`]AAk:hr_NHBfp$9[Ck_hk*
NC(u"dRcd2NOHdK+),;0]ADE64gr0GDi\Xa`K/=0A'O/)@@Jh9Vb5fC3XrrH"`S*DAL'T9[@m
!B`oMlLS5gUK1N>e+b^N]A,u&f3*9#MHpsn#pCOQU*-L^K/#KpO#gLE4R!QTP7D"A@h',"s^2
)92(!,1e+NeY:_\&f-3RL2+a;Zf/alX8CD-+`:$=81K9"t5r5`:EeD#\]AA[QHh!Q,5#T#jV'
n+]A1t5Tr1J80#P+8po0cZ_Atk,pZV!`dsW$Nkj6h!>nbnLXd$!ahMglB9[EYOYj_?'2bMClr
>W.kQu<*/"q[*XUbFB!Anbk5`,+%<-K2gS]AWnb\$e=Ocd"ZG;98dD9k.fdWmDXG2X[o]AP[,P
Cf;MPkH&*G+8o.Mat.5joA0'U2b4lmun3TdXUW-8t;Y/I-LEaCt<As;'+e@Qa'5psf>,BO,a
SQMSX[36tpJ^u)0j]AOmFjS@?bSZ'VC$&&e@:.FNL)X/'WGOCm,aS6H5X"mPPE1"`"EEf-eXs
.j^\N:#uB?G8JYS>)bAXlMgY0r7oie5ZYiKrP[LsR?(X*)'INL[;UBU#2"3GHTbh>dMYln1?
j\)%"$2#!V!%,"@A)K4tlO<t7Fi,G$p2+%gu,!+ZqBX`RG?h6oH!*86X&`bBU/4#(^e%f^f(
&j=eSh>XMRLdL=>_KAs5SYVPF63C,m'NC0X<iT1'@?!r1R-jhXE/oL=(a/hBmfi*2#m;%9Zr
ZNARP.,IDL^*.H%ha,7qt:7Rg>qC.NCR(^ITj`3o:S(W0i5KE@OLmpf*IIcD,oNNE3iG$GX[
k]A5#<UaFKO;GA#*jUhBm?Np`3\B.0s]A]A6fDd52)dZ4)@3Y\(7^5%M!s/N<_b<mHAmg<:!.>u
e:l'jb/+(qA`NE:ON!Msd=u`t!c0,\6!CF$)gG3:o=j*<ruh@!=Tf+_hl>'I3Od"+36<V.f^
#`c7S>JR!G(!]AZ`:k!o+n$=s[Ggd[;XH*t[@FX'*6W!3=he1).YnZMVc1dfjG[?>'U9q>s^/
Jl@Pqs=#*JeS>I7_p$D,Sdg\@41kY@eNhW,ropUR0Uqh]A*0G4NT8P([iDCtcmI*U4*=d^fS*
\JB5/*R@1?+B@7XWqf*\hWZ!i+k>^kcWaBQsB/oP3H%;b0bcaqN%`KUa"0Q/cbDafa&,bQno
e`\a"feXKN3DPa6$t%om-PoP(Wo8bO;Zds^(;/:MQ4P_&$Z(puqB9t+o.uq]AGs!uP=n8Bn4%
5e[%,>4t'pM(5bS7Ta%Zb\`Wko*'b^iZ,:Z7-(V&G=j/RC+J9O=n?rQ0:/1lMK.>7`RGB<Nk
;$AMFBd&,0T4G[G'WCu#%O<k=R`8jIij[bc7B?rgJ%OYcR`'EiC+ATp%_+<X%f+ndj]A<"`W2
/*k5X!?lj$8CVAf_7j6$jES"]A`Ar?8I]As?!n7MQ&qNA*$B#'T/>>kj4>+N!A-&&"LjhW5p>7
g5>WY#6.$(R3rNeVX_(QK.bU?@&l.[TdAH<YS<b]Ab7L9W^U#$-7&_CEs!:S']AgQWnju546kh
Xis#=&6lo[3[tTk);^'N@.</?<fA'^W[t#udda2AC+(D;doj\A8`>.;!b6=$!'r^X41C-qY!
6XWGF1eAf^pj`b9e6/R@4*`Q(s2cMZ,1Il2=PE"t)15"I-ECQK$cATU!T+'IMJ?2TqeOMXL"
HO>hi!C[A?*E"(P0eMLXU!R9R&:M<WB61^%-o7fO^a='>EBsQl>hI':l.t'$g7G_7g]Ab(.RH
LIUZ:JEWFKi*tOkRRfhWDS8t:qmLRSblX6@'Eo&DjoN%N!Or-]A!hr1j'edKnuM4A:_#DdTCW
@k/LH4rKioGsg6@RQP7\[Q"dfSn=$C?0g2A2@\$Sb:7_.#re2^-T7*SW/jCH@Cka!iDUi-hA
6q3u4FskFn.<^YG&c'9`986$$3B8q-G:2,C;'nUX9pK!Z[Zo8XYQ]A_hZqjL"<m.i2V'fjmE)
E6no.jkQ:QeWUn!0-AB@!kG4N\H$YGF_3km.b]Af;aufWLQ7jC.#2NQ=1=5aDC7PR'e;4"R@m
7?"W=$FkhmD8:0SSW\#@jN2g:HfB6BNA9J("E,f3iV"WagFk40tJ!@>H:'kn;]AjfJSC*N:^L
WBp&ja0$TaC?UY/fnaOX,g"H.?hXBY$+qpjY-Y(bFBl8&Mc5o*-1;FjoFO)U?uPcD0Ea8`lh
7,R,MW)Qs)$;==;+W+L1BCWh]A,$'b@K))9)XQjB8.D0sKV%l8leIn67.KWmggO63?)[6`b%u
&&Y6CYbQG?^.<0"rtE60^WeTZk(&,[el0%$Ue.)Pb1[2P80'>!$qET"U%E*52Q_8$[i.cb<W
'nrJ:d(K#.sGOi>CV(q<f.@AFbu-[ft3<%9s:4%@JkIb[s@LOi;OJan\S)()rp@n)QRX3HQG
Lhn3.*Qt>,Wc.(Vh;daQ.WNfc(0LD=pUdJKo[-Rd#7*2u;IQUpCSK8)<$;1JdcF3LUiRm$KZ
.SPcn5In8;cA"3jrsu>5]A-LjfrrB2N45W;`HIE7G0Pb0B_<t>W29SX[`rg>&0k(b5AU?D5qN
uq`F%eVIo3Z1l0Z*[lRfqe<4B/mlMnimI!2A@^>eM`kSX(ZVj?1"!m-B/_+]A8W+cp!La]AT!m
po_T\!BZEd&XLOa`ZP4kck<@a3;jPhIN-s=N;Y^k(YBGg.EJA+?G_S<Pmp.q_`=H0(['oJQ_
J9GFn..I+#:=8n7TrAkIuX]A-Z8j9l*b^]Al04a:R+fXmi+T>BLj,Ft_JF$uP(%'gJ%L,jYoH*
Q.X@>_rD#`6c6gaQ+&5+UOZKjQC?^dDEm-]Ac_fi,?Cq%;p*O=e6U^e)K*%(f4C=X=MNX>"GX
;WUL$*3DAD*2sSY8>U^^Z*_N&H8dqXoDq?5WbkN5=SbXCi/=a!DY+b_/%/j@:bAofm!?4:>`
e,\r%_SOIQ`,esFmkTC[]A60WKJp^F2U#:.gY6[P43ZWsN"/96T98o`%TP`S''aqmU`mj:`OQ
cAF5d%q>jf+ktn_,Y<PTTDF1Ma:9Xmgac.a<KmV.+TGD%>bH1P<tDOKD`^8NQ-UY7pA?nr7?
aV88G9g1"rmhj@/l@;WI&G6rYG~
]]></IM>
</InnerWidget>
<BoundsAttr x="0" y="0" width="956" height="284"/>
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
<![CDATA[2400300,2057400,1638300,1828800,2514600,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[8115300,14782800,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="2" s="0">
<O>
<![CDATA[IT维修费年报表]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O t="BiasTextPainter">
<IsBackSlash value="false"/>
<![CDATA[月份|支出]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" s="1">
<O t="DSColumn">
<Attributes dsName="按年查询" columnName="月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="1"/>
</C>
<C c="0" r="2" s="1">
<O>
<![CDATA[实际支出]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="2">
<O t="DSColumn">
<Attributes dsName="按年查询" columnName="月总和"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="3" s="1">
<O>
<![CDATA[计划支出]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="2">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="1">
<O>
<![CDATA[累计支出]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="4" s="2">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=LAYERTOTAL(B2, B3, B5, false)]]></Attributes>
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
<FRFont name="SimSun" style="1" size="108" foreground="-16737895"/>
<Background name="GradientBackground" color1="-4144960" color2="-16777216" direction="1" useCell="true" begin="0.0" finish="0.0" cyclic="false"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="80"/>
<Background name="ImageBackground" specifiedImageWidth="-1.0" specifiedImageHeight="-1.0" layout="2">
<IM>
<![CDATA[!<WZ+p5)U@7h#eD$31&+%7s)Y;?-[sfDkmO0*hUZ!!!MZP8aK%#g,_,5u`*_mG-rI<TP7:nW
O\56@aqnZsYuT<*F(<'kseX[SUKh&@N-.K4'30L!UA:&3pU\2LlPm;P9-4g`)uJ1S%/3Q'ah
f]AB&DWOp,KG+To:LS7h;3K)H3TVJi%^T/lY;9O<22pWR^(S1EE,N5WRA0F_Is:lH6dKMj?,]A
#0mJ7M/WS6\n$^!6D>]APF1p#kDLeWW_)W9A@F+DN%%-b[#lk:YTd'YF;H[/qMiU'=UH*GK*M
<$EO^&[8=:an3o*dLJLQqr:TE7bn\Db\"!<*0hdGZL+QuSjQR^DS@.5`<SHGIIWrE>Af]A/s$
+n>4b:m"@U7u=ttqTkqp`GZt;f^M<H'ngQ\pi1-FOtuYanQf#JV''l3\ak.`Hm3#6/PARi1N
@n!Nr4Na0ARY7;<6VFYY#IKa.d/8W!l2!Z1-p-GW?g)_]A4/_b*+)E=enrQ7nW2>8kI[NJd2"
pB/jWoG<QZCh6E[RJ?QKj)QEqf$hoBJJ`f1WS1$*YIDuu^3=_g^ET@`RXoQA)FJK9$&Hr'+Y
:DUkoE?3`-]As<<F;fC"p^JZUM#7@cO25ca%fI%MQ,-l2*B'XSl[gf#N:;ji%=SeAbAd4X%@.
(anaAg:)Np6[-jZ*rhutt400!(R"tT2)5nNZI>QKU1=JQ96?,iT0b[1G-a+@eE1+bmq&IP$P
JTH3B_WV^M]Ao!'<"@7N)=8B(1TaEdS#mm27^/NC$A1U-g6VN*W6KCAVr-Z8"%Ri"sn3n<3"T
@j^LSLKGckRDn&Gt?4h@m\M-mU1$KkO.FNr@%'7(js>YS;gU@\Ij&oQNUJSMo`L+0r\-)#f'
\hBea;i$aE&P!gbm(aS=tK00Bpq`+;A!eCkQn2(K;$A.]Ac-=$rLSH5GYYic:3'gR+ppd'^R=
T\:Zi8.+4LO#]ABs&Tg]A6%Sb66$G:jU?tF_-#0Y$Gn+:r5-XJcBhqbX%NA<.2&k7m;qF4s3<X
aXR'2m%NsWZ_35G^7rZ^>MVTo80ge#cDI(QK9^>U5%b;qJaP;r;%G9QSuAaUa+2?cBj`*Ee!
8!'p9fFJR,5'#]AsdlK'K^,5FE$Sno>eoupu#B9)5Y!TjC,?LQ]Ak`.V5!Y6Arql$WIfQSLn(>
?OS2n!KK4@Ejd"jLs_gY:);a'6KBh:T,:&9Psj+E7;d]A(;k;&$]Au,[Z.)$Q-YO;;8tqW7+e,
_9H2X""uOmTETA=a%RJG^Z0+F9%clD3XLZuP"0>Y$2^9Fmn.8/f:;D;$:u>Gg?Af"G6H<,9c
QW"k"[R@^[M@H(@-7`/aWZsd?s-3MQ3ObO2d2"Ml<Aje=#*]A$Zt)JWAj!;h(F]AX$UXm\?0>.
!9I'\c+X+;]A%G;%N6`/O3sfXhF^/n_$iA6oSDl`_ZC=gJ8tGM3b<nmT"ZR'Vl';sdqL]A&!]AV
\=r:H,dH3mM.se>rt7)k68bt+78hT,6-pY<bMm:j1bXX89OM$nqA7S_?]AONB1%WP%[,WI`q3
p$JOS(.Nh3kA-:">a_#eFNCjg9LT0eFQGA[)%@E-hWRGU6aF7&!*Bac]AR%YYmFMDI(\(Sb-c
I_YlNP<[S0)mdAn%\6ghIeg)Y$amg;`PoFGAG044',S<@j7YtKI02pEdA6:G&CF?(2M+ULB+
QtFYT;4@jWHAiP9i.lhj'PQ=f1q;Da#5H!:O.>O:j!,H9h%7q\hs*""J2A2kUoo&U=:R^8I'
!nG]A0i*rg372%hTH:1\0jGYU0f9Uqum69#EKnDG%QMOs&rueYV<[Bt-3pe4cRDPI9[jVFJ_8
qhW%;>uDUgo*Suel(E%mBYtKuh+Y6U;*iRb^#ns6:")TO+,r/&Lc%sKD+YmeSF2`O([P:$:-
]A8L_><V[2Eh23B>g:26qr`;QH'+oGE=c7oE9!#V.l;')SV9tB+A3?PpiI0K/D<[,LAC`[f/O
+SctQqa.)81>@n8[GYhS9;Hmb6/[I^cPA9^LnYV]AT3D"R1716AC%VhFAgO?*.4q1`Z.'7PV]A
-*&fB=2g8Z`*93W9n;j*,'b8ln(E$Kc"`tMqXagm;l_5F/]A$td/FF"rdl9V%Y"'pVg[N`h>A
.(q[$q]A-;ZGeIj)9#*8Pu`FhFYrcGQ2+K?dQJNaE0GmQfs9>$[]Aj6-"@lEur!i!hYK:3HZl@
3C2nS$%4[<\b2uVom:fXGO"Q!T_f7OTYIX`T_nBei2tU=kH@_&:]A8:D/OZe4W8@M*mn`3EUX
HI_FtZmBhGeig#f8Q'VOdT"WI9]ATgP^<!W:TiR6M/CA4AXbG=RF@0qH(SKQ)\O-k[,nI\qBt
IpfT>Rd*CI8W,",u2:);1Zbf(_4UZ5t;XIgCl]AEWST<U7D&B;O%AD%*f)u(<CDBQVC8_7k^Q
"er6/)I<>m`U-ofsj7>[;Ca\G/WdYWca(>k`.[p'\c[=^(FMW6L1MYAI[p1mPcIb(pS&U7,!
u%qfA0:40n:+p3^?(UH/NDJ'a^Hlj&>f&%1cAQL1\t'CNulDJ2BQ$WK\Po88oX/$S-TCjQo[
!TGTINl-IA42nU7%2?fE]A+s(Le[[2Bc[jY)Sgs-L$47]A7JT[Mmh[Q+Q<:=87?&W#WEUQ1Zd%
0G`&G%!Vn(nFX4L9[8et'U`fdT^[(gu=GM6)1i)9@H]AmFYL5]A(nbL%p_VUTKBm?C-QLob%H_
Y3fjk'gR*8mhsf"FZf^g(m0tR9Smp@_g^!:0Ne"B<"[R@bFe%%e49a)4T\=RgY&1g7V]AeW0G
_f?1hs4DG/NIA"/aRkh=ijb4Ihi1Cd=K!HSqgS>i.5.mfV[@\a1GCXY,=pWJ8i%50MW.CVaY
1=?S;-_;HT5OL.">ST/"<#8Fh6[q;bMh,.ku>MAg*^\L)#`ZT,nnIm<o?nP?^SQ,^r^z8OZB
BY!QNJ~
]]></IM>
</Background>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="72"/>
<Background name="ColorBackground" color="-1577999"/>
<Border>
<Top style="1" color="-6697729"/>
<Bottom style="1" color="-6697729"/>
<Left style="1" color="-6697729"/>
<Right style="1" color="-6697729"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<ReportFitAttr/>
<IM>
<![CDATA[e@]Ap+<:AQp\cr;%&.fBU!>QnK8d(qA6kH/i;iiW.CL@8[,t7'_md;,a5[(ap)&e5JC5>$Oi5
#*Qqg6Z^Spg;rfB"*W2=%fF4$IjO_0bDoU'.uj\,ZL?Lcp&,$NR(I!.[pr)?]AZp^1?OW!71t
/4h1C=Y(+1`N87Fb@&<?CU(?hCdP=fKq<]AYc.@p;10fe\FQS*Pg_L3e[qAp7=?"T-J8W<,Va
W@u.jf9felb/JQ-LI#"?4Iq%>#,=7Z:t1n^@;+LJ_Q?u'(jL6MWl_0XYh[TGV(;4MV[7b.o*
Q<]AjL8>Jb.6Si*BglmL4IZYDr?WV.;O]AL0VWVX08e_$'*!(FU8*NFGNN6Q7[O$@k0XCFU,\b
/jVJp%\Auh5X7_6!!:Y6^dUD7nH9m7Ql$M;!:kG3Wdu@iaGHH&0+S/?!8+4%;$'[0r1nckMq
b:8Dd;iGj=VQt7r$`D:=s9_XtX_qH<D#lXqcqrD)dr:#1pNRr,Crt9eaO5?o'68mAke(!Q+;
4j8E#.3aERH+8,P2hq,a4;oAo>Vk/aYU'U_qEZ`eg]AQ:jk&QE?"WS<i.athTE#)t0hQd3Ord
or)VXm5P:!cHge9Flks;0(GLWK7b1)Qm&(G(+o+?#/T!]Al+*SB=7B&Ds^5*K+LBnbUA<j>TX
",\4WcS=tCif[k!@jC<>*Y:gtLPKgA#qQ$Z$dD3/Ab-8dlB6a%&)+t07>kd6WYdIJ$n1Am+U
&QT[F0W"AEA:9O7$Xtah>O;kX7^-g6pW-[_\eY@V+Z#Rk!jKe_W_=mlZX9l`la,mPP;qXO)(
cWK?PXf>!iNF+'Jif#Sjl-KbQH<6C)WpJp4I!%B^hdHqj]A2IPSR.R$:>sGpi&`X<('2XOjgl
?VXR4i!8M8ab\W7.$sVoXaF&eQ/l%`44:7PhU=[1bnt23N0U++&KE0rUl$G\gJaL3+"/'plL
TDk0h.V_b"99WI,3Vh</E,FdpqnIT!Pms3VmUtFJoqAd/T-PWjRo?Jm([Ln5m0>t<?H>B<Q4
!QP68X0"umu:?+VM.o$r>b5OJh)"t\H4!8u;)bE1+Y$@r0\F/;r6b.+boMdl&DBb:8p4F!:0
WN;iGF=1EI3"hhD[:"R[oSG#ZH9J\a8%O)%T4A^2('L-IM=^h@*6D6k!'3+qgR8@,Xlg<R;&
.#IT"2Kr;^%Y___qkF2u;s\7e"(l:"]A,&iA&\B'&r5`C3%D=_bgNL60l/O]AcGDFC,XXo\JO6
k._KHS#jjZ,gc9fEgma:RI%I1)pnG=Y[&:t_CCP4i$!X9i%]A<p7.N#g+=sfbC08fLprY!pYo
u"4'SrAdnLlJX>pf1/$]AVaK6>kcg1D=45?*6h$N@HQr?eul-^KS<?k$k<MG56Nk.j`4X]AR-k
F95e+MB@3a4Lb,'kF^f5LN27%Q'E!M`F%6)2nD+J,ii<4$N)Pd*<YW_<C0Z]As`3\Z38;aQ>6
g(h<2h\1gb5$%mJP>eJ1%h$VkfHXM@"gT/mP$\uF=5\)EmOmrHK^DkAVParW&uZ)rr9b=2?q
TZR5`&$0)AhGs$7ptqY3-^'"pU&?YG>UE\a9MuWe+:G1q5Gt3_Y@$UZ6-2V?\uEpc9_<!:g$
1@^hN+>JF\5Spu6*H::0NGd8UtJVROi]A'd:e7Ri='k6`iB96of9`\d'g+hJE]An10/u@+P=Hj
]Al.fKmqX>J%sLeMAhu]Am!.9n[efJupMFQs%6<K.Y_tB7)]AoM1^>/SgT-`a9gsMfi0<a$*KHj
'f3es.TH]AXg/8`d@g`0rkmlXm,]A)8=2Qlr6Se"(?fl2"jp`=0YT.?[_TD:k^O7ZT)S<4+BV#
-b;3g;Legd98-2P)sFQYl6:FmEh*#Hq+fRH1p&E))4:Iqp2.tT]A4$"IjAc?h/`pr_ZIR'V?\
[;RVeo7GQH]Ab=ck?$rja_fS6_(PXj!o3<&Zm7VKWtqHhEC_,-^nd&%=V!/R[Fh,)jU[,PWh$
fPO1_V*QU$)doH60()BNp.sFQu&?!2;<Olt@1i-R(pI"GkpXW_PLVQkI4+#L\VgsQP%!RZfr
pfI6IU?td'K07*>8jcK1H$_-i)6!*MUjUn&NC+g&ZWC8?5AccJdQ!;`n0pg1%KS:BAG>WE@:
#A(H46aY`f0@#hEZLpS4]A_E76g#h`%AXBIS_)9uEGr"k%f'bqQRm?J#6!0`u!$4G3OnjpegM
pB$&tE7;gE<'<hk\7eX8i0&6F7#Y=</g31l$$_2e'IQ897C+<j3ntr@6M"nCo<M8_PLR$R$%
Wb^AX;fa,HQ+Z$tGlb2(YcHfI*Z#:r+k]AKL$%P0\8m22*F=Z-`PcD,Ys*M?G+K=N"_fim]ATH
XP[;9s)0@'-Wc!h7TDVAIM"P;O'e*M,4i*W0hO#p1AFu;-!_7qT,+(I:G4=qee;C!-`i7i%[
*&I`V=Zi@*#lj_LGZWATbY6kcC@mf>,\DGe"Z-uH_aN<eR-$uEe$e"Q&[NRP-Ol%I/#]A=.nt
:oI;;'o\L_VUO-hu'>Th:S@/ubm-1ZY1pFplrKocQ"O&I:1inAK)3n9P$VDT@3D`G>sQ0'n6
?C/OcW4ZP90jg'0U)*HVq0dfLBoPj<D48;$Z*+X:nB8U!dg9JB?OE.'6k^BnTZJ5FG.,.klq
)k-M8ilOg/Q&JAm:n_r`\Qj`fKc4Fer^3@l=+$SWG^+NN3DF,,lD';3iLq_UCVF?Mh>u_)'b
`M0TG;%3<Zsk!0`bQOQ.P_Bg,]AN?A7e,SJip>h^.qQ#(`@+X>hm>p^B&E/mD_b4tmhg&"IOa
W_p/T'%!\L2oK9BhSi)Jg>RKBJ0sYqbjp2`-r83R2hC"rQC!dI=PW2<nJ/bWE"^:m;)UKq(D
q&+*WM*cL'.6G:QQ[qLnH7QOL(B%HVd>g7D:oGVN(W+u%';P3SZJ/=%W6f^Ok]AhoO."=troE
dm^n7:u*BRAOR5TD*dF^i-?7<r&;>XP`reS.li8Il?]A>pkH=L9()nOFG`aU4n4C[*V4J9moh
ZbOA>K.55m2j]AYIpnKob,h>^#F2']AR?0h&Y!=([-cGGrLi0'7YFaI_bN[9AkA;%@IDkleqb%
Q6CPX]An>A>dNMj)W?!Lb_KYsnY4nl!_'ZXd^p+!96R-p*c4t0`9R;#W'/I,YCo]A7ERVG4r:n
"FLYUV[J`)X-C$-Q"^ED"-)V;5l3s\;\>P(t8.4F%o/IFs?2QXn/.UKNI!h(*\8K1#E2i]A??
D8Eg+Ceb#i50!?h`dcc5/]A(@jK;\/[tu&Bmh<MXIn&=8&JQ9(mRC\=De$OLfp?3R&gXr"ZnG
TNMo&\&&e+POgD=kFIlKZJ(fA4:Qtu?:E;+Jf.R!XC=-FScY42;#6P_gQ^_ZAcM8*BDZeoO[
@cPKF<,!HE&1^.oG:5dkr+kcb*:6>P$R6&BInp\/VL!c#D&X&\"YW)RgqQEX0<ak,Bo(J*H_
s*;27p6=<X^H7!0AAWD>=R")B9#2BRK[J?8o>sA"2G%*/3d!U'Mp1E+.[nK<]A3X*Q96=M/<?
LmK$h`=%&Sc'&c$K:e7YF&p[R=8>sbR^!Xk>91rhXNX]A:k[N>Cp!Uj#ahHq^Q(\)Z1m\W2bm
W>M$J_q?XE[<3/niL%e$^[ZUQP0in"Ia-SX"D5,f:hh9Hd%<kQ*?=HgC&YM9)9Xh%6?4h,&h
BRB1_S2KRV@PFX%0bJcIFZGm!HF![#s2X'KbS=a!pU]And,]AhcOH&T>kq'IX>>?X3_X--2[S5
/?BCpSe'/5>/nf,;)2YK\rDn4`b9O4er3it/e47B;Ll1L6KcFVTF'fRFp8X/4qQWT'K,ZUZL
:!VCOoA^oBMCRF^&2S-o-r,X8qD^YlDMg]A&tE8DH#ihW87]A'kc"TWk%mk?XlFkeWq[5%O41,
OH6a00![glpkM8$4-Lb";SNYa\#\S?dpNI=HpZHlBgs\&u@Y:)UfhZ=9h$RATH`ZIOfju!,@
t9,=UT87%2D'ZJ7ij%_-/4(0POJKbdeXldUkB=:@l7<!C[M)5'@IU_B%QcJa.rIjo2/nHjH7
C4N_QF3pD(XheWK[03p=62@ADJ-9!of%`NiagAoRkOR#^a%/U=Kd;U./(P]ASO2OuP)0;6Nbj
Mi4Xa$t3?KjhhF2*c"hW0l@NX5)[[)/8-8>Y%`nrY_3$7HoeY=0Cd[!D,.4p"LBqha;?C$uV
js.E/V_g(iuVWo'%25Q!Oq8cL=)V86+*:!@ZXicp<rG50_L0oNkqFc.uI3#^bYeViK/oA88h
Sfl_4Ae&Ue`<WCpD[(R7$9^I+<n@`?Eu"!&+)7&Fn+O993cF-7"!(")G-Jl0;TQomD"HEW;h
"n2slq!GuIk<njN&-S#_*6/L&7&4DBa`ndRXDQdC!$9;l)<'D2m<r7[qa9qJ?R\=9d90!B]Ao
RcCWMZ%fqt;\mo,GfN.r??r8H-&Vk74C0S&CLcehSZEZXL$_Fm4:NWa\OID2<qYeVObdt(2!
qMhHiSuNk^4hL^2DB4^!t4">_\KSjYc2(D#"+^I+S,\IMlPbVW-D_Z#m5'K'?$%7_Cu]AE_6)
I=1$2d3b[jj>$\"t"$YaZANqtS=6$TGp-[tU']A!8>BY:%%:0'QgP4ZaVhTT&tfPY0_Y2[HKR
m!!PW\rE=WGbJBIi/gu\Oa6pft]A#NPG#SL,J+U-\IfLC/):iK&I"]A&RP_\/jrQl:_LnD%)0G
-86Q2!0GKWp#6u/hOIa9n#C=iGYgSqcO_9WO73Ol7Q#)7/5g9S)f"P%!ncFbl-&n/fL<*S'o
1S65QqiQ$S<kU"a2)3Y#\gjhrct07-c6]A0IF@jNT<gG:#0[-++())oK/lH-rq2pW8?cqYTip
SGF.o(@"kb%iDLOBjt84e8s)b+&IUdm_a1?\6MPNo8hPQ2g"4Z'Io=R>SjQXHomCP<Q[*t6l
3;CgJ:qj71Gi$jNBKiCBBUaEBQ_)bhi<b6BL_7\s#3\))KK&q7[T1?Q6#n.AVlKL\#$bj8:"
l[1LSq9AI%Xfte"Q1Or^J022hcK?F5%P,*GY>47O=[;TFsQY8g]AIobQ]A[:hbt,mH.'qnqeY%
+cR>_"?or81`/t;b*;5X/3p^W4fWL8#nD]AI?9X#Zt,"a&e;aUdF/<2$`_:VdBQIK^neq277V
cMjs`=Y<%CW^Dp#B?!$H'!:G:e<%XF#agsKpE2<:ZacS?.JYTjBVO&NLV;Jl7Kaa?L@&YlLY
7%8oI+QHD#`*upTl0cg#7XGRQ]ADH,J0oQN7OU.>),ni+n#GX'O"">'[gT/\N<"Uhf2(^p(+'
@8bn4p]A>&-ieG'.+MmSH^p##Mr'b`DVR1H1TO0tDhkdo,@YfR#SbTI`e0500Tb+n\.9t%'Id
5R>BDPampnAe2Lr9(ib.YNQA4E'K*NE"hHTOK+P(NMC;rb;-uZ^MRaP?<Dm5l,QoBXb9mrk[
RQQ[[,,]ALXXLep<r3-B?)2&$Cr[:oASeg;&#oJ6M"h53KJKRJ\HuhLL8)Qo0Ku3cP5llF`SN
!p2.XV^XMn-M-N_i%W7:R38oOmP+1t/C(Da=MHLE*iWR`hV5FIUUAHe_547!p0E(/:[OmL`p
)$LlnE_Ng+'Acf%i7I(ed4e`bjs&<(OQQ$7Q1SkTT&WVd\nbB*X`4k_4n5/GT+')U4l5e8\L
I>40O-9^1k^oA,aTg6p-.ULR-0*/%F[g3OQ0FaIkX33G`W`5['?hOPO'pn"P,kVJEsP@GAnd
`52!T'ao(!c@XJ974D?[jJAn.4H".)?hHp>)WVG-O0#oqP%&:GHE9RMX0#YR5]A!/<*%Y^[Ou
VR>ilqP^?4VkaX,O'+AfE[Fe<3J@XCsSG\(bpUG#WSkM9]AR[@Q\?.UQh+[H?D*CPsaXI_6jV
TkV13'JlB4es7nr%<eYGO6M;<n/M,fDo+k)G++k[<,d+'Err\^M`*qk/Xi)?RlSh]ArFUi]AGM
a$Z&Lq2Q>)U9>(+Sh30r8c>cdVU!lQIPL?LB[d4:a?Bm0?95%PDr@Bq?oFT8stf>MQCt@?,I
?>1o(AfmE@iS?U]AF=VRXFKQM)`L#I9*B:Hm,$^R,4nc?GS>LCpM*U-1%hNrRRUka/UInjELb
j8Eu<jZ3"?Bnh>826ai9qi?+K@bOt$P9$5noiBtc=)oHU^a+hQ;Rodh<N(&hI.,Q8.d'T:9O
$-PK<i\#7;p@q[uLZXF'sq)s^8M@BEf1\2Y3epi7R9eJ[%12=EjH'B`$@[kZ9p]AX+eC)NaH-
g/+]AJdndD<)Y":7.nBQ`'UOS=UjId?`#D9oMh9,OV]At<RQ7N"gT<F6$`jBVL]A0)t\CcDFY!a
;j\GM#Tp:dadA>COiWq./&.#8[`Wq4O#4EkJ&rUl0GpN:_DSX*T3N;I3oJ3M%O41L2Z'53)=
k.-k1l]AN`D?>pDY!HHf[&SORps%bCI"U#FGp2n6ZmTlV8Cj[]A%Q\0&(*A_.-S)OXAN_sNZ=/
Jd+jeRjnl4L:rF'k>i%?W#NA+V^+>%6^e$f6=ue4VCGbNcminRt70!(&9i=Ha8MnhT`/Op-.
K:hddZ]A50m"c@Y]A73]AXC-l69@>8Bg/rY\o;Gu_R#`>Je^khZ.-)D)R9hB]A."ml*Kt_KmMu-<
iG^i#OaLKboMMIGpX[:T?*MQB+<OC6\n#_XDSl*ql\r7-&[;5C7M)lBo(:#4e^Y6lhSYTK26
uc!;%moSC(o5RPWHPOft_SKB=c_5<8t=V2h"WG=tD*>C?3,?i'dVQK'Tlo6CaJQKeefm7DOS
n6h`6b]AFJ$#n^pfBj"hWX+Z$DBH-PH]AWVdVSogS2'@j_(?(Y7]AbRsWIk=+!7slUBrbW?!lJr
>_'i69>`[C.^AZ2S`iK@Z/M,#N^7:pH\;dZc.Vq10+>565pd]A.rt9^3ps:'iBC_JeAsV'X`L
FM4_I-da-hl<'=J9F=tNh*,.$YqhK3h5qcOs6$NKRFaMe;@@KA""cT,[72/g[V3Km]A+`D\>O
]A5D-??]A]A2?mL-#EhZ$hD)_t#F1mG8mpFJjfLjNpYL+;<n?7c+SMa-!MXemdcb[e\Jh,*c1%8
R,59fNN,lM_*QVPJ#cE;W\T7Z)Ij7@N0J5cH7i9Z]A0tei`P]Aeir2VHhl9b4*3/$+B?=+qtsM
sWH:K`I;;h&?.#AZ_'\FgOoBeI$)_lfn;7lS[Mf7!),X.6R\peXkpC"N_-E>bI"UUK"FS*Z_
e8CIc,A"6B)Zr(0Aq-0o)/3ANiC84KrW-&Fqn+rInK!BL\ph)n)3*a>#`igDp4bpb-U=^Q<[
NGT!,6*T2I<+L8-m/$s@T;PS8?ani1]Ah6l$&01$N)0B>-/Nib<tGhg"CGMl(XM7d\lg+c<tX
%nl/Hb_`,@f^c+=j_5KYA7,QQ-[e,;Xi<s`;S4F/"XPigk@Z1@WNXkb)Gr=2o7?6([KNEU/u
=<QeN@Z+G4VcFpSK44`uPT`*K11BV?]A_mpe0\Y#M*rbORLMuTd&3=4C*A44Bj0^4JiO9mnSY
m&\%HRMmjY0UL6ANVFsLe!so^:Ert5YLX0B7Y<4-+;j@%43DAK=<F!FB<,^Qh=grmSP9Q^6@
cf%e<r]AFAEIO^Hdcu/p[Paf!Y3^%mJiHWr2jNK#lN3n-4GngIHe)/Lo&iKZXuKOS.GZ<mjV5
,UF#*BA=3abE(_^5G=WUr"8@1Z:%1eac[Itp#Cu!<3%JnQ'[Z*H+H#l1?m;'dXP^1iWI<"ZQ
Tr;[2GE%?Mn`:*h*N\giQ4]AP6FdPGU5pG>(gj;Y42cAemQ)I=!hlBb%3:([UGd5eiS#ZQ%;r
R]A+)**P^22e%@Wo02Q.fGh.BjF<-QmgokeZ#YD<b.A'/,@KU>XMl#+HHs\PscL;/J+g-I(Tu
Znj,Kb004T_Cum\'>f?OOmsI>U?dj]A==K8O^^?qG='go!!H9UnkY%"7&(p[Rq.[_CCE"#EWp
BJGV!_blMU:l(]AC[4bJhqi^*l6thuis%^mrS%-ZU%mkKQXZS([\K(k^!sc$BkA-8r16*_r;;
0/k*AR48n?P<C87hffpq&FU$#JbQme*ZX=;?*j+]A8<*M'=T:$6Do,--G^gVN@#W`(f<4#aP`
M\\2'i&]At*GK6V:Cu=Cj<ot,dQ#0b\CrISK7=)&!r$cA\T$A.adXr$1J:n5_!r`l=Nq=-;(J
@(+jjcZN!f``[7HD()M!fPJ/sf,uMDfj#b.ZuFQ6tpfjiaS=cFm)f%-,D4#NX/E6NjnO5GBE
db[qULZV%j>h!D;WV_9NIC^Y:AXB%::dh_G-HM$3+k1-"Uj_tU`@Br<Uk/8laKl_N=5j!=mL
Q$Vg#Z0Wih4-L?Vlm:/CQSB%mXjkuhK(7jp'8D(3s3)lNbKH0Pm]AefBf=cLAh9t%BaE2MpfR
koL+J1&4M@2OF_DZj>\j9G5);<;b!k#H@]A0E,e`:q(^I4in/c2+"Ma'XZ-@p4dnj,![4gC1:
$te[<k,qu`s'<TCA7jbSAl+36ldWu>"+I\@]A@@))'>$DPh+_rRV>?ZmB;WJVgUc4GKY,?_q;
9XQOUQ0'k5)<+=t7QK#IA&+Y^@[LQ[701fPToT#;tjk>Qs()>9/iI.f35i_h2,J`EE(c>6Db
PB.=!B1_.*g&XUkGPb54OPX#Wj\C5H1n&e6L3J8"L0m$\We_/@)@H9#^5c/MG*`&Kl!-mYTD
B*9Il1MEcB!4+5-0;]A+RP)U4]A2@iU;;:CUOePr@)L\j'!QQgh1X3*8;G4_)R#rOF7c>5k7O#
ae6f4rR2oP+AZVfnUL\V4@K^;=%Q5!q#mVG2XC^l'nRqDqfA>EI\4s3]Af7)-!1U;pITBg*Wc
$6,iH6>mlKQRXei3%B:^[G%3(@e-<''3NYJW:O-p3G]A>:O-[Ys$Ju:3d<('1(j0h$d]A\og"q
?mNStWj*'Wrs_kr]ASO`I)j=bJRucgEk]Af?OYT]ALk_qg<#k($<.@Mge=X1!!+&@I[CQq)(&#=
bIOfaZD65.HC@DP%P<2jP2/R=RfIH.Gm9]A:N1R$e^4Pks(cKS=MZXDY/O/\Prh6Fth,6Q\3H
q6\MmQhT&gUFrLEMopXDkYn[/?@$h"srR]A8gtnW+SR3,ZVl7uqiIt'VCKu,-^jO<M1`7r>rM
W_`Nop<,.NG92t*Ml\2Z?OU=WW;k4dufKk5VP)+&K6OdnkV;GmA?>W>`ag8D@T92)tu%]A\=1
2&f5d]A5C@fRNdVPkAI_KMEUX2VLF>9L0K\I6sJi7c3'$XqS5aWD76+ZZ#&M^/qoT$&%me^^(
eRt80[4Acf=8[@RiX9Yfd#T&qtOZI&jLG6JP"$P1k0-BO-S<s5F#+pN@@&Jlg&dNb9eMVTWp
Q0W;)&5c\+O/o8_"+a(g!qYHWJo^H(/V'tA<MpiaL,a*<sKW-FV<cf`Ce%^`GEaXTdZB%>%j
V\ZS?nP:!m^IjbKSgjeNL=nJS*FF1*R$MMip/BgCD1ZbM-+%fac"?AHf3<X(UL)W2`=CkQ\`
@aY72a`LsLdo-77D`\eMB([S,HlYZL$,"FYjnT9F2)0*K$,q6d:;"-Sa]A*qPE]ARTP$kn<=S+
C?2*en'T7V0@iXh1@\@h]ArKI\=C=X]A4L1mNB<>ek1`7"DD!5N]Am52o3pa@UM?KtHN9p^nOl1
$531a;J5:IXdaE`:2Y'#C?!Iga,hB4#dfe\;'S"d5,%d`?mcUemsudAoDXb3_Pjrck_+gXur
s'0YDlMuAq'^3's1f#JLAg%m^MlhR[XVo5iN@(`"^+dUaF3ag+&8<FVM/_3/F?r:mmVXsn8T
gm?RMG.]A]A>!eYP-Qa)4(9;f):OVd.JH_R9iK$mk*>9\\]A-RusjO<INc\q$uCtZXJZ#Co33hO
?UD8E[MS1U0E_A-liDX4li5D`c1?JJuEko`<"`Ys97fQ?3G"Bmh.44![^@F#(!hJ,P,^m[Ke
X]AeN"eJ&[F`h"%`f]Alf!n=j$#Ztp>CCX<JsS`lWn<qO+C1X\l<,\-_5.>+nfJtX7?Xd`C"CC
Ep_muK=q\#oeA]AK>>Q]A$M7-F,pb.71n87lFe=$[,Z1Sb7>)R=':\j^To`):Nn:FUaGsO%/rh
\Ff/_@=M6<<0enrYIj<W0F+8%XGaN[/11J&/jdLd+4n#D#PJ-<na2c^dWA">W\#s3hP8ms,-
HGd,1lo?iV0dE22WV4*AURG@?&SD:)4-6s;n@Q,en*T%jnb-%K0aIKD>c1&oK<Cfk[*P8mPW
b>4g_pedd7H!(OQ\<0!i4^PO7K8]A]A00;(2]Aflm!)U_mhTZFQQ(G!=%%`.p(Fm6Eir)(-VgIC
86H[;d7K2MII5@MIH>%s8V`D/rYB<rCp0ao5nM9iR_H\Z]AF.tk26a#Or>uNNnFWntS(+e[`!
"fpqY,_ZD)>B)H/R(QW\,RQnXgS/+'0h[/_maW[]AA60%B!sSmQJI.&f2h^(HtZ<$shPQ$PUp
lH7e.3UjQL<1hUl*L[*5@N3KY@$He)LY"Co!RGE9d!ds-^66p)47H?6Pb;!heD]Ar/gQZ]ADCN
)F\jP7nA&haW5VnK^,s3i!&hohn\NMl`2uQl-$^pZM5N!5k#dr3C:\mmR.BPXohid\:3"Z+m
t*TBQTK.C7(3$\=J?pP=DSP/P.BbZ4']A_V>2Tr<a?4A12P%nsBZ2GQZU6.<^$jT/<:aU%hph
nXm\o\ua%m^f]A&'m?XAGWEN9GM76aq>XhpS7p3[&63ZAnW[q([2dgGD3VA3Uc<`6/@0@sM2t
:8dDk5YR%+qiPr*m@cWb`ZB/gh._WQXFUl-^@CB""gb5L(CXBTqhn+GRV+q]A/H_<2JZ]A>-kf
G?_nCAI1PApaE-H*Q'D>^'0Jf3qdZ4qrXYD7KXa1!H16L9(mPO&p>;CuhhmGr^b%D;!>G5lo
@=rEJZD)6geUVt.WC]APracH?4YPaE!.hKtGHK%QP@f:<(fKu`QYt1Db#(KQAH;Gf'Xi\+"kJ
U^$LTZb(mAQZYREi_FN."3WFR>Q2!^gNWffZ6+n*#ncWa3l:a!bRK/pft^s/Yof(>*$@@8f6
`jTRdjtVXFmKmg=!)@.M@*<5K/."52oUn$$nXct0>/NC=@+0Im<k3/47Xs2^7k$>Rh+8BmE6
i$,WZ48uGo0/628o$KC`KL5dl"+1+7gR,o;.X;c'>:cR),m`<&4EqP$sV);lg#LXln'a^5An
#&f`C"fW8sE;3=>>+mh"+do4(b`#NjIZU%7Uj9iFG]A!X`[Bt]AL\II6^"=#Of5)U*]AXW(BckQ
9\agI6JZR,+#KR/e0=pAT\Q"<0$"2@T)'V7TXd3hc?u'TUH(')OXmrfklY>(+D*kJ*+EG9+*
alWFA,R;WXanCEqQWk:O0[/cET["3TWrL9q+CY^l]A=c<4`pQfuN]AhA8m,(Sr`$Nh8>70F==-
+<f$3N\du33gWgns5RkIN(O`L#0%;O^FTe#"Q9H\[3Xa\]A'hd_aG%)1Usp7gJoSJ$S[f&d5.
inGijLFZ&MeQYdo.sk>:8eL$D*/JQ_p#DS:1<[V-4m=R_qkZ"<O(`H@dnd`tP]Ac)$s*k3U)_
oI$sjkfB/9Vf%3Bk-gu6olUD_XQ+^f$m4Q'85HW.$>%cC)Tj0"r2?2o$;G#7)2CP]An$=ut$.
7(tnbJLD'*`I:]APo+FY@*l'IbPTBl(e7LR&46Wt55TmVfY#LQHur/e-O_^T9YTH.fI+.o-K`
Z<?KH(fiagr7428rQ8Pg20&[V\)n)o$W8]Akh=1E!8/-e7'Nf/OG%LqS:-bOc^K/*I>:fD1;C
lE6+d0W2.qk/t4e7>F'?:c4d_n^.R3ZeoPP.2]AmaOu+oF]APkrL?D#UOBR6j[>HMiS:]A$"2bA
I-j7dR9EPPIa!Va8$>[r^(d1+g>7ot3<=CQ4Nf@@a/C@p0^A@AgLi>fGOa;_$58@'['`m>p'
Y#C<T!PQl!+4Tai-:pIm=-&IL%L+4;PYnBJs#H.dJ9\pj-`q.ce;nu/cj[/=)/(/X<&Ya>n=
k\JK1jJZdqDd-@l7Pc%XYaEO'R`:<<0dScq(1B4%9D8dPr%P#GQ`>T&&HWDT_g6kO=^g@3J!
KO?ru>4@._26N#P0A#b$T3L*TBUV94or)i+W>?MgpU%f#>>.9#>:(R-\6aH?+,.5t,Qgp3]AR
ndZ7.GYAts-ht5RZluu+c2V[`h_6dl^KZpNbXjb(7;30"pJ/V+1,d%:CU:ON<[2D!q:Q#2i?
=A"aOl7uhJ."5`g0N\R,&r+@\UU3S;'(Y_<7-Q&6le+^@p1A8_^D^<1Uu]A_8p0YW<r[KkJ>8
n'MR%mSX1@/frlt8D(Q4j^J[MRFnbECb,3?KAsW(^1n,i):,7"f0`A[Lg-o#d:08,p.l!oZ&
aG!%,G*EI$^9g"2d3M]A`_:+TZ::jH1/B2rk^(";/@8_76fHHeg(C;A<gWeZfJGO]AT4W,"7O(
"pPG9kCY,Eq,dbOhu(jKVAB+hPp&>i@,OR%!"gY$-`]A\q_$lu/H+$:D>3*oFD(DtV=U-IG;9
SMjG!b%XntNfD:VO)T2gn=;2j_%:HUL%K7K$U_CE?r54M1XA#"iB@\]AF1.OO$0l0j"n+Rtq%
W"1LB63?/i[QFbVJ%b>0XKXBena04.@Fc)Qm0@XBmYhc%'ab(f,3qgt:u3<KH?!V=pf.SR#m
;<?jFZ(1hrQ`A:Pd;Q^5ted!F%k'g:2PE]A-`]A@jc@XV@=3N#5R9$7[SXlq_[Pbtl+UV%J7J@
XK[lYjor8p6?`3-\apf4b]A62=7dH%G-JL2acD_mfQ"20!b0%5Zb'Q\-0CG=?5saFlYE7:QLg
Km+<KZFg6-cLP)o0V%>F4Z<Aq;5E`[pei]AiaKCbd./fr-o=jOl*u\4R?1pXV=2[l05RK_?r2
]AmWJaSc(@>)?(J;WuPKLAcF9/NGWRFi`69.8qogp(u)7%Y>_fjn,7i+NS,:WbRdtcYo53RWA
q87=k=i&V(HA2<oLr\)6:9`Q0k/Z;4lEQTLKIEi1MnEg6PZeEX'8/>8\V*rqn3JHUUZbiL33
Oh$Lo'k&iPLlp>+dm7V]AgKDknrrW/uA8&)\c=-#X$$C``LgS*[*_c11r2Y<7H?$UN=S[?e.Z
fdCp*J;esl^$GU"U8f#Pa#3t>f,6oBFFkk(2XV1fYH;791:_'`th4+-!q+3o/`b3a;9AB<8;
dAd,"/Zh+NIhp=(<CEL+ZbCjD8:Z7;[q(<g3j2&dPlYG*%^<_UBUg?hHLeqg.O]A$"a\a_"+_
CF$UlPq'$0`bB/#+bB*jZk0kAhE!f9?k2lkoiU5Q#eIk("<MiE."/LJ^[SMlU+G:&>s>1'n4
a+[o&]AHRiL?RF/>f&T7c7R>Q']Am2A]A2mj0l>B'b+JA0-=l(nS<gn_1(-+U/)*f%luW)=h_e=
/3o,*WegVM<74?S80=1RprJ7t_,"?W*hT&F[+m(-.2;N6;\L5l^p0kFA"`Gjs>EKmuICB]Auk
*CN-=p;GtQ,6Ae3QQYg>(U]Ac08!/r7JeN"6\"8*mUPN^"#qSd2sA*["k:I=1ZQ.MDDD@Z94`
P[^##*3R^7XA3eCG/_;R\oPg$eD6Cb7'-Q;V5jbhs"fHn'jH#.AIXJ96fCL/ejfepF^/DD(l
9c%l7i#7MiF(co8hLuij]AJW(0rn.3.^D!G168/g@eHBJTf<?AVd?G%IaW:$,.cD([F?U)_/;
gZjG>26I%p<]Aur]A!*JOs]A;l`]AoUT6iPcd.0*eU\&g?_nX/(!:NgQpVCtI4U0(@sWU%_slhIp
C\,,Yc''D]A(/@0!>J.]A4o;s.&B-c58i-O#l<%I:K0G?LGDI^/sK2_[UdL,p6<L,is//rnUOY
Jd@'UB'GsU"U+tbnnoU1L[^fl;7fno/TY\FB_OK"@kE%:mkd(QfE,@0R4JMbk#4"]AcOGU+rh
!+c9i9>+2R8I;>i""F=TC((1mWI[h<r4AQR7[OP5]A8jp)_I=;bg^KYSU<#UgsQd3D)Tfb&!`
c>XP"P@1*r':NB>OCCa`o#q*d]A@VTuGjB'dH:Wq@FYe/oK7epZP`1$OJa+%I6EUM=qZ3b/[Q
T0n)3Ua4#-'F*mc//9;JChqAfdn^nQIj@<q^3H>JXG2]A.Xl<dHZ.DAg^TIPedted@$LYVorU
d-rT0KJ2d*4:IEMs!S&_!gM&q!'2='H^6[R?;(%?(c*W>Mf^ftOgNo,iP6b=H&Rh;R-8m+`m
,T0iW*thf_)!dPjjAp(nb85e.'"b_7*"(\iEa`0hC2L^HmV`;cA?'nM9*H(<^TaZQSW2SclH
S!rND!rBV=KZ_BoHQ^+ROd]Ah(M(S=W*H7ciE^!8oDZdtMb+/\B'iTIEu_QcYGd6+`%#$J=uN
Jg$C[H`&FkYg`!fAW#o`W8Brq>,CbsME+.)k3S!8MA;!_"P4As^"BC!oF#j;OC?.[3.KDHNs
cfjKKD>O3*([!1WYWr4',6W)ST7q)l'F&j]A_Hu3DZ$lblaNsW!@hb*Zpa3\rO<*T.K+.b?kC
*'M?#K4YAN+HO$_)^RRu\"Y--Q3Mrtdjr0K-Xs=/<VaQh7[1RY2XAQh6b=Nk/&[q"Ci8lZ+.
Xpo!@tu4'LR*;"N\pd7pB+!/jDsmVGuq+pcEXm4W%E^<Cq`ok_glJc`BqH6L;]A"JYHd<g/VY
W:?ZlqaTsn+>bl.21bobGV$)T7N'8Z*34&fADO2qDUd:B>H44gK^^gosC\b'6'^@T\$4*SPi
%1R&3Lf;*#+*fqS[)c?;b-(r&g3Y#mO97Res#<9]AE'duc=W"ssKq:-UM;'r1Wl^(+X<ncS#N
hV4C//Ek=:AKo@M<[&:p>A0dO0h6I!N$4U/6uW.LKJ]AT^<rX)Tp2eq5o?jOB9U$+j.\,ZgY8
3kNlNNZ]A'i2jG!0u4gKQ]Abe\,#RQAnp*L9N"S=n_[ToA0:=Z:s8"m%:>YYcDVSZL(ro#kY=S
,+oa*WAd-CD/\Jq_L[>6nVt9`5e?^OqClD'%3a<K-LQ]ARj2YFHW(iETp0W<_CEHDA\suO/8g
!2n_:>,$pONup#Js=7haTU#(g?B3/u0hcH[g-QmRAjpc5?gdh@O_0%H7\5GRS'_gH$re$a4D
]A:Z*EK+q)5AX?I!qu$+kp_A5!mY`>sCLRe.G.c`qB.HGn8G"tE\Wb4nKNd/9p?r'$2+UOka8
*m8A2(S[W%)uN_/8\LL-gR%,f8A*k\1/Tc((,_A"EhcFiLALK$L_SOAFsEFiLhqo]ASsYSCQ&
b),:5G65%A4rc*s(EB$[`UIP3@I6p^Ne#)ij\XuWuQ4f_BB,6b.?X#PM2/X]AdBWtp9DCmNrB
_E%%DN_njd)k@,s4<9!'QHcP7i/8\XeCSLkBqR`As3#HX[p+%M/8H#`bPsT)Bmc]Ae-V!,2go
jscjaf;)tJHhWu',=qWh"5.Z[*tO`)Z0L\7`OT+:$`(bN#M"*#MMFLo;NHk3$O'<Vg"crR+9
^L07&=sIEtJe]ALI%Vg#06M4JeKd6oTmJ_LkapjKZI->ZEk3n:c(2Ri&GICW(&a\mJk:#b!MQ
"#mFsk#6;oCPcBNcN;;#OmsR^p5R_L*M=Iej@sTI?IdL@2:Y/'40YktaC)]Ae0%@O%$0H0=A8
`VSBa>>k!U`Z&In+Vj2>7NO)TEp>Q@oStXK<ip_Ts5@PdbF'U\/Eep+>e2(ep_6V'.(EM(4"
dhn-)%a[gjeZLn'#)ir5">N)>mnsoMce`GI2)2@'Em@"Lf/mTrHWt2TdX'a.I4tA6)AcIg8j
1K[(Kf7D&aBh2-$Rl<9\?`ArAfW-(W(nc"0MepO:3V%>jkqA*2sPIGddVesZ!b(Xp6Lp^f[<
b?'?a)Vc"`+nDC=_=9h$h&C+cF3tBEaej.,k&@[&Bn\a7JRXQOCOptP%pkl'XMg1eDV-SoC@
._KgDK"XQ(;q4-DWHMHn"/MCV.ELT.77V3!=;=&]Auc/93*]A1Q3o0.9q>!cVV/NRS91ZR'5\p
kk@`;NO]ASVCY\&Yk5s'"lo=Gh/!n;Ft^P=Vs73sS3*t.;i9/6&eYW*!N**EA[&b>8Qo0XNr6
QMHGX^kt&8BaffNJbbrjh('E]A+a;e@ZIN]A]AoqTsM97OE63BJ"_dp*3HfADbINVc.f@<BHGjY
tPNeh;CPXuXI95Xre^*rD)>cDsqEj[J*?gF>RV$uic)Q5"Ccco1dr9hGE!"ro[GkoBiEKTg*
lOnPV7'aQW%-CS=Nai8s,%%;f?k/Yh^>F/d!C"BGRV(H%7F_R^/g23FV(R3J\:ZTD1h\TZ"m
jb8h6e)p`G14k%reRK,i!ZlCfUnA7I5Pl4$:\1#l.261%p(3f;cgBNQ5N&;->0F@:6r,I\Ni
je1k6)N_nd8M0s7!2Mr]ALs0YJ-rIo*@_)6RhJ%g\6/tatt^]A2LFFFNN\0[m9sLi6J/h^+>[O
>\6?@_(c68ek[O-V%BW^n+:rk['EqPh'5p(s,sObdQEE8RSb]As6qmC=a>#3YUo:@6:87dUgX
!5j-8_(B1LT"lL8X<8X\^s]A7`SXKiS&(*_JIYd"T/,%_^D8A#Qm9&WM(+"BS*&np4b1g*8o,
5_"@t*rilC>fIM:_7FWgD=*0hL;$-OU*imBFs+=eG!Mc\A"f,/B4@N_M[f^I>RMbaOr&'T[:
or_NG5WH/)d!2pIT2FV.Wup312c+^@ejWY9?RqZ>tVla/$`%]A#Rfg4`R4fA@k)K<^U*,.7_k
3WQ2MdW%oVpc_Y@1+s2i#nqojh<$(elCi@`UGlF@E7Om'[q"ckSQ<mSY3iZKl's*E,P-eZNA
9.<@ZOT89.L,q.gGu6X;lhMcFVb(mHX]Ailq>pu9?\;ZI&6E`Q2Y$!Q$Gs@A>72bC8p'/aICR
ClE7KaC7#uLUaHNMD=5/k]AA6tSMZuO`kd5.7cFML8U+11:gHa]A;O@9#9/-6bKJ(Cp=NVdLo]A
Nh33?COu/I^l>SmV`\qKPX!OqODY'iVMGY[I!Oo[DQd/4B;;A8?ePT7q7c;n4)S2$In(6r#o
?2BPMW<[b'-#I;3Eh3YD=q[Zdt-NpFi,RVqS6GRAUr>;9a]A=fGF4hJsbE$Fg6sh9'4>^83nJ
:s)u6Cq!DZS#RETjSCVF%rBIhY_KM"LO)o!)!$ii1;gmp,&O<edRK([cH]A7GcTLe?*c'c-EP
j*4jmY_qE=cDV+DHc0T<I;4[kcJWlYe1*Oe&USPO,l!RJ@+d:3_`s0@%'rIn_(5f;5e5JF]A3
O:p'16pOYBma^+bQ/jf,Nj-\?=>Q$kQ5BD=@S)(Lnt*0i_a@[#T6g7IV^OC;ji?B]A"Yqm*lf
12P,0kK>MSZ!Kf40b3dNH,gnAF.Q#>B_7kk>bWD/TkGPM:T`YceE(qRSE;Lp!pgU#o:j;\@6
?e6Gj*\Z"kgt"H>n4/lLn+.%VX5u`)6D`QDeoCr,X.VlHd@+h,W2(p%BqO&/`I4qs4)>g9OU
27^2FeBK0=bX0+gT;>Kehfoi$J]A8u^p5Z%'1qqi=Cp"JV<]AoEStf/_)C`mk!m`(pU)BD,cpE
d8a)H&kZE4YVl=UW5&0E3@2d=.+'XCNG<(OC[%2(UQo.[gP;6a=]A`cX#oL&N>D!1D<R;#GU'
g9W19d&lp-8>3j=`V4O(%;raS*,A`S[:2\t]A\a#@%KrIonhYYeTss6F5"?q3UK9@I]A4h;;/+
h;\?+MnQX;eRL0B#Ga?!e=mnsO)*[-:uYH"dR7XTq$fbT%BLlHT,.h#ld7?ud/O?AL,e3MIJ
;+!ne>e^bq`]Aa4Ea%6Fb5<_p&&&L)la.&=3reZ_F)Q!]A[_k/ZtjnS-$;PR--rgJYCXSYQi._
Qj,7CE_l"c,m]Aksh6RojOHc!onN&:GW&S[0lT&qBF-BJ0O^#[.+^Yi;*>dG4_ae`n(j;/t<@
Mq2lFg1V8o."!8(WlPn;F#3HONTE"Dh[C>iFD=mYSi<=`8,2:*-A57Y;s<+W61S?$+8h`Ys[
oF1Z%D*r76r'EGKg9F.jETiC>9]AR,]ARS"0-ff!El,M6iCW]AM]AMA2cNf0bF/;&QkTJkSO#m\'
oN:B?Pr4E!jm^JD3)Dk,deTAcj.g4u#PF36qNC6V1kaj8)QE%R6Tpuo0#PD)Q%l1b.73)Bdc
s2B>lB>oUhJEoICjpR?A#o$4[qI6*[*LH-H<.ho]A/3H)i2HkFo$r5.p]AK?$!ba_q!*0c")GG
6D5n@[3kie5^G9$dqHm!iZ\,pCTh+EfK&r9=Vu)l`L2;m'LZ2iA.U"eDrdD[RH>FBVR'"oGo
;o2^r:]A&lT\IMA<"0f/!T3>d[404>nc$qBI`TuA'iGL\;PD*ECHp5t^^CK`jZ2XO?%kYe5Qn
JGR+%H4\b:9b+<0ZTIm<RX-fkl_5O89IA6;t@l6*`OTKDVLe`=N^Xbj_f%S&jfTq3;7Ac=Z9
(NFAZ3W>q`KL:`c,K*7a[_N&j=SZ!M%^rrt?i>EC?h@HEhetWC[l.13M.]A0_="=mjrHiH?$(
DZR>=J*o<ne4$<@$^FZc^ulIH@_t]AJ0JVDmDM(LLX+FTh^i.C;Ug5Mj('WoB"'2eWG[]AWk4I
3d10ZI<i:.QqnHE_==04R1cLNI;ZG1WH'VU^kOLHb*%eehgR7."CRreia1s4#V>6L4kFeLMl
5A*NAbt"mL#:V4K:;(a[>1Illf'ri-WI7pA@BoID!A.iVAh25S74]AF@GbmPPpUS2`[OTX:Ri
N[A=>I6*@+7[/R5+X_o+@M8blKTZu#R6rQJIAHi.'1G5!HKM.hUb`IXe"O5h'LT7hV$VZ1s1
r;;WF]AhZiMdL$Yu.6Si\Gq^S8hgFj1*?9PdZW;e/7&EZG.OUo*!mI6GBO@m@H+PX;eDs7dk>
^g%P=4W?D+?j1FFe.pN*X,0<SOnX[F-]A+^&IU@-Fr^=du:0D;aWC[rc\0-=qO`*De<k0iFN`
T-tN8m]A1TcYp26.WcIZ5?Y7l2ihDh'G'\ZatF3.CsZAI9c\_<N3NH]AV)4k(?"c*.iP]AFh+,n
WfB#h+k)5&A#NQUu%mbolt=LA<jt+^&sbrjk=T\9j--S[^u;)T'q\*/+B/!3%q"Z(:uM1@'t
?k(QM6O3<7&L4l=APN8A*PbSH^cn9JI0(sJW2R?o!g<p`N!JX($h?,89tVE.`3AZMW%UUd;)
PZ9FAHV+0g^H,YYc.q):?[9i7=HX5J@Q>h5fk90,ql5&Q/j#as"j8-Li4j2(1%Ie9QE_W8IS
_ed$[;;RiX'`CdId<(p(u(lY:nK'Qj#;_6nk7sT@dR6;C8\E4Nu^`q!;SeXS)8"HV><FH+AT
ib5Y62phs`3>_:i.L[N:-;p>0A]A_QV`\l*L.61X)72X-2l_@\]ASe9i4[V"n.^0df]AP4TT>Hc
"!e"6Y,Q6N:4%sqCRoS;DWCPg)H1"/!50hNYtF%"11n^U(-cG$O^bY$OlOq8,\`tCWucF]A!X
rVT!t(AHRkIF#Bp8VCSD)Fba3c-2i!WkaJm;9LV3s!?"2q7[7K\P!$=EsJuTAn/jQV4_bN7f
R"E7b6tRobBX5E(T+&7967Sf^8ulDPWf5BN?'lLQ</)Br*D=pfOG-;\h/u<mPb>]A>/C0<R&]A
[#lljo$e[L'E07II=Y="CI\XVC=[%;W1&W/:G-g9T_r]AW'89f^6L:)pncXFLK<Zqj463<1iN
=5_a47I.Uqsp("9+U;bR#m&T)p*/CfYT37mh=L:&-";S4<TjSu)Pj'io`93B<AMRJ$r1C';*
kDt_%JqVko\M/`DKO:@9mhYWakA9C-7,\RAf=HD[@M`t0_!V2eurgM3p]AtgNr_iA3YVeTb-T
.phocAglRqFjs+KZaT6'DBe-K'>"FQr9(5lIn.jR=+#<iMIVX;Qr(_ptuA'n$Bk:IHgF:d\c
=t`8QeI;GDo9d=CW"eU;s)nS[E5"!fq)!;9c:@]Ahp-fa9W;h1,NRcPmX3c>\9o6DKDDn>WHm
qKL5Cq]AIA&>B:_"aZ_mJ[(731/U:eb(6`7A!CL"IC+.&@.+t/3TWZnqO4_&(Oq\o2H(,<(UZ
nH$%8B?mX)keL-QN4@[6U.;Y`N+HWJX,X(%I=(_IEeQdn0g(t^@J1Af7p#AB]A^OLUnh\!iaE
P,'Hf9;*2ZT#-cAQ/Ba["OL+P>!.#ED;;AVFVC>M>u]A+H_L7BB]A9O+@%\N;(JEr+-K\.*'7/
Pm!$(0_^kYmphpcF@k'T5_8Yu-[+S#r)V7+I4_9"Q4X(&]AnoLf@F<OJpuD$<#X"_ACJ0D!U0
'<!(lmgbBM$15p8C03W<DGkBBedn]AbU]A7ND(u3NR2R=_=@Hjq"PHm8dGc9g(ER3ND__P*>*9
.]AKNu5mj.u/nK8Sc89aH5Zu+9#h'%#UZ1C476^7G1WC298/^`g:%^8;%$h3'@F&N.Dd6qXD"
'-kF6[-4#(:lN6r<Ect]A8&?a\>.,N"I-DH=o:<bpFf^(r-O'[:",8K/ss8-!p3KTTr-/%bo;
@sd"Ol$IE)DM.g7iVSn4*Z2KjVpWK$joFf+;SXBW*Fo+hk[3hI!D1F4NP_DDVXW*-BAuNc_]A
MFXUHZ"$XEp1&>fP5LE@MgSms,DO3FP8)0?)(b!>P'Inbsa%#WYDs.8A6iDS1lo:aJ^WsCl8
';c&HH9H^,,5_#+E_g?QV5Y<]ATKbgk0n[qTLjoeZFID,=fh"8:#,3Ts7(.SKY9qOXk%MV*"^
3<c5fH=dTq4Krr3oLro_OmX4L*T6LcCI/43>&>&BjkK9W`=7T;m$B$AF/*E'(YZ:^\ZWg29>
["ePc7C:JHaI5LJR$+-3tq>HcA[kt'.R/[.tW$#W=pjpJ`n/-9(Nr)`e`]Am=9!V-m&.WOh2J
Mp@mO'I;SqOa-;OSJnO7l/h,p6)HdRF@d<7'ZOY?]An7q)8!r'FTS!KnJVAu+HbB:_`lG)@el
q^*?Bn.!i7n.XpDUY?m_O&p?sCu0Kmd8re0O0aJ3%i./PuoFG:?m<L.hW"T6d?)4Y%bl8>=&
F6NFT%-SH`M%Z@>JUIh=NY2/B[QHZaF'97gqcn)Pn)0<s[p6T<QJenFoA(_(/(5<(Y1PAP.X
r;/@N`L"LT8BX%UrEk_.S8f%:nd[qOc;3]A.RX$%<I314oX@eCl6s\OO?W(+'Dmr_PT<9$c-i
_q&LOn1u[Q\m8+>oI+pc;?TEmk32Tpd`!LiX!W3Kh+;`o@@(K]Am5sFo38'E<QqD-@EaS4TA.
C9Sa&)'>/rB9kF:d`!K"E#<?I&ts+;D:\gf;-j+4TWo7r(1dD()W]A@8*Aq['FJ7ID6dfid1c
LJMaN%?3M<^cI.4`9iu]AuB?;)I=Se:&Sm_]A!X.WKX76iUF(7qp]ApacAWf&NeJKj6cfOIi/)N
i]A)QLThEk-J("X^0XSNreeXnVU'3f,p8?,?>*(?1i0W=dIsAuOru99@K#$B2hl;!Fs(mh\:\
46e@e\_?HWQCE!.YGSOAXbg6Xm#X$jV`"raBm/"6L2L$Y\ZlT/M=Z0[!gH3Qh8eoXn"]Ao_`i
A9RQSm:q-<daf/3S;8kGfZhOmVA:OJ'3jd[-"o@-b-\,3%JZ]A&i6cakVjtR6b6To,YU@qE6p
]ADL!bU2;P?N2h[Zi;+h-5CV<EG;iS:1*hg]AQ3/%2!APGVUTWMNJ%*"pTGbD=ki?r8<,PaqCl
)iCc'e;M2WWj[g)b"8e;:*/FS`#JjBWTY)<5Sh%PAk_i(Z4H703X'EV:Pq(R;Z;9Y8VU9'%X
r:X#f(q>NGUaC3*;:Mj"%]AT'HBJIIr%,XDK]Ak7]Ae\C\JFGmm$(>+W)ZkkI]AN"!%%Kd94r<l.
tP`TfcY'+sI0V_H=aTkMJ&8@/#\lX.uKcA$s"nHL0"nMX]AN.42_(.-ek*u8!c&s+A:HspYrH
^bJt!]ArFpg-ImM<HL_:;m]Acc?jY.IM*@X/uJKV49(9U"$:JeN^t'L'*kP]Ah=%G,WdpY7P`aJ
[#.`/>tfci:,XN;W@]Ad/aZ#DLS:cEj;)hq*O4?;7Fd&]AnV7d#*,Hp]A]AQL-KP@9+;majZC$=X
5J]A>"0;F,c"SdkSo%(+b0">3<fB9ANQA_ru(1`X,,2Ys6CLB1GH.]A!;7'dfd'$P2erG>aPN\
@JL=cF3fP-@LccS4if&KJ&?!JV_)$U*]A&rGDk.Hr7*"5QGJO8Z.M^p6T]A9S^fQL!q"e9'G*;
-9ZiP1ci0``cV,agt(g#(g$5!-ns63!8EO6atmqgXZ1o[),$Lmchp@U.$7DWWQJ!CmGW-Y0]A
[42_Y+cbCpRo)6l6^Lok2ppZ>?YUW0(3=(84c,mOm`;-kJO"q:G^ErRrcnV[p0MNtO5A+:&!
/QsUFK)Y/E(nk'aa[7$.-a>%h;aKi,bD[%b(Ca-o.Ok/FK6PUdFFY)2Tr`"(p%CI(l>i5L/E
:Co?Z>I`J.-fjt+-f.H3S<ja?sD%t;L^5Ed5r,DNZeVpR50D=W0`79"RkCFsn$qF'jPZ`(1i
o3XITg<d$ns*HB"ZW[+Eon^JYOtuk]ADt((Q["!,dRjTsDW.d%A+F<`o7j7-Co*$]At#j<oC<6
+"r)^HD<J[!kOe&DWBZ?DakI4'[=O;MI(e6d"eT+65o4o2P:4eP%`%s,nR@A_GcH_Ug3F0%4
p#-=C^MrP:)]A@=SMEp2O3q9@9?@%M=e0u&p&Y2gA8XSh9lC0\fl;7PsN6ZB]A8r#^QIoD]A./R
HPK+dChnGm4Q1]AGeAJ`JOF/kYFjLA)/7-]AOd\nC\->]AZDPAUgQ&l*uR/Ml>J#]AuAnat^[Itg
/ds1:^p/[a/gcM4ZIX+V#K0po_$9PZ%0ako$H8&/V.'@YuV@X\eY2e@h,mVO:3]A#TtB+#'q^
W-P,^q>Z5bc,-H?9@Bc;Y\a6h+k<6;m'"J+:1jijo@[XLjaZY7o,<IaQ`.`/I)&Em)KKmIr%
YG(YFLV(KY'`m6t@LOhT9H^l[7YP%g.I%1%g2AZ0CaMpF@UF.3<(D4=YkD4Rm_<ZVIXDs-`P
HdJEKY)t31oB=SC_"7?+YL=Oakr3NTQ5Rs1!b\R4"XSIWK.8E<ICTX!@!Ub'FZH!<lYl@Ahl
e.CEAa^`(1WTk.WNlcKI_Qj7@C;7&@<DaMUDCS3ESC7Hn(5=77k$.k!o#R;;&YIB^nS>g5GX
PICGctMkW42)7Hc8R01?cUs'[_1_QPEq]AgItWR/Jd4^\Q=9/>F!\oD=="NBR.+erTdNJ_VQ:
JC`$.j4U(W?]AQrZnc;BlY+)>ICc:TD=\)Bi%4>P-p_!O2F*_E5.ppsOE,41WSb(kA"sJVsX.
RQrVh?As~
]]></IM>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="1280" height="573"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WScaleLayout">
<WidgetName name="textEditor0"/>
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
<InnerWidget class="com.fr.form.ui.TextEditor">
<WidgetName name="textEditor0"/>
<WidgetAttr invisible="true">
<PrivilegeControl/>
</WidgetAttr>
<TextAttr/>
<widgetValue/>
</InnerWidget>
<BoundsAttr x="0" y="441" width="956" height="21"/>
</Widget>
</InnerWidget>
<BoundsAttr x="0" y="890" width="1280" height="134"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<Size width="1280" height="1024"/>
<MobileWidgetList/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="IAA"/>
<PreviewType PreviewType="0"/>
</Form>

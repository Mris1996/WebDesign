<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" ecoding="UTF-8"/>
<xsl:template match="/">
<html>
<style>
table, td, th {
border-collapse: collapse;
 border: 1px solid black;}
</style>
<body>
 <table>
	<tr>
			<th style="text-align:center"><b>Ctry-code</b></th>
			<th style="text-align:center"><b>Name</b></th>
			<th style="text-align:center"><b>Alpha-2</b></th>
			<th style="text-align:center"><b>Alpha-3</b></th>
			<th style="text-align:center"><b>Capital-City</b></th>
			<th style="text-align:center"><b>Currency-Code</b></th>
			<th style="text-align:center"><b>Currency</b></th>
			<th style="text-align:center"><b>Population</b></th>
	</tr>
  <xsl:for-each select="CountryList/CountryRecord">
	 <xsl:sort select="population" data-type="number" order="descending"/>
	  <tr>
		  <td style="text-align:center"><xsl:value-of select="country-code"/></td>
		  <td><xsl:value-of select="name"/></td>
		  <td style="text-align:center"><xsl:value-of select="alpha-2"/></td>
		  <td style="text-align:center"><xsl:value-of select="alpha-3"/></td>
		  <td><xsl:value-of select="capital-city"/></td>
		  <td style="text-align:center"><xsl:value-of select="currency-code"/></td>
		  <td style="text-align:center"><xsl:value-of select="currency"/></td>
		  <xsl:if test="population &gt; 50000000">
		    <td style="color: red;font-weight: bold;"><xsl:value-of select="format-number(population, '#,###')"/></td>
		  </xsl:if>
		  <xsl:if test="population &lt; 50000000">
			<td><xsl:value-of select="format-number(population, '#,###')"/></td>
		  </xsl:if>
	 </tr>
  </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


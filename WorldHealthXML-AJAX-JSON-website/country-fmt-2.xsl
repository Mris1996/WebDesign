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
			<th style="text-align:center"><b>Capital-City</b></th>
			<th style="text-align:center"><b>Currency-Code</b></th>
			<th style="text-align:center"><b>Currency</b></th>
			<th style="text-align:center"><b>Population</b></th>
		 
	</tr>
  <xsl:for-each select="CountryList/CountryRecord">
	 <xsl:sort select="name" />
		
	  <tr >
		  <td style="text-align:center"><xsl:value-of select="country-code"/></td>
		  <td><xsl:value-of select="name"/></td>
		  <td><xsl:value-of select="capital-city"/></td>
		  <td style="text-align:center"><xsl:value-of select="currency-code"/></td>
		  <td style="text-align:center"><xsl:value-of select="currency"/></td>
	   	  <td><xsl:value-of select="format-number(population, '#,###')"/></td>
		  </tr>
  </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


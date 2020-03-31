<?xml  version="1.0" ?>
<xsl:stylesheet  version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
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
			<th style="text-align:center"><b>Ctry-Code</b></th>
			<th style="text-align:center"><b>Name</b></th>
			<th style="text-align:center"><b>Alpha-2</b></th>
			<th style="text-align:center"><b>Alpha-3</b></th>
			<th style="text-align:center"><b>Capital-City</b></th>
		 
	</tr>
  <xsl:for-each select="CountryList/CountryRecord">
	 <xsl:sort select="name" />
		
	  <tr >
		  <td style="text-align:center"><xsl:value-of select="country-code"/></td>
		  <td><xsl:value-of select="name"/></td>
		  <td style="text-align:center"><xsl:value-of select="alpha-2"/></td>
		  <td style="text-align:center"><xsl:value-of select="alpha-3"/></td>
		  <td><xsl:value-of select="capital-city"/></td>
	 </tr>
  
  </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns="http://www.w3.org/1999/xhtml"> 
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
		 <th style="text-align:center"><b>Region</b></th>
		 <th style="text-align:center"><b>Sub-Region</b></th>
		 <th style="text-align:center"><b>Intermediate-Region</b></th>
		 <th style="text-align:center"><b>Ctry-Code</b></th>
		 <th style="text-align:center"><b>Name</b></th> 
	</tr>
  <xsl:for-each select="CountryList/CountryRecord">
	<xsl:sort select="region" />
	<xsl:sort select="sub-region" />
	<xsl:sort select="intermediate-region" order="descending" />
	<tr valign="middle" >
		<td><xsl:value-of select="region"/></td>
		<td><xsl:value-of select="sub-region"/></td>
		<xsl:if test="intermediate-region = ''"> 
		  <td style="text-align:center" bgcolor="pink"><xsl:value-of select="intermediate-region"/></td>
		</xsl:if>
		<xsl:if test="intermediate-region != ''"> 
		  <td><xsl:value-of select="intermediate-region"/></td>
		</xsl:if>
		<td style="text-align:center"><xsl:value-of select="country-code"/></td>
		<td><xsl:value-of select="name"/></td> 
	 </tr>
  </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

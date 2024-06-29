<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xd="http://www.xilinx.com/xd"
                extension-element-prefixes="xsl">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="node()|@*">
  <xsl:copy>
    <xsl:apply-templates select="node()|@*"/>
 </xsl:copy>
</xsl:template>
<xsl:template match="xd:repository">
  <xsl:copy>
    <xsl:copy-of select="@*|node()"/>
    <xd:file xd:name="aie_comp.xml"/>
    <xd:file xd:name="aie_fcnmap.xml"/>
  </xsl:copy>
</xsl:template>
</xsl:stylesheet>

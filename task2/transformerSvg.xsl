<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <svg width="640" height="480" xmlns="http://www.w3.org/2000/svg">
      <xsl:apply-templates select="root/графика/эллипс"/>
    </svg>
  </xsl:template>
  
  <xsl:template match="эллипс">
    <ellipse>
      <xsl:attribute name="id">
        <xsl:value-of select="@id"/>
      </xsl:attribute>
      <xsl:attribute name="fill">
        <xsl:value-of select="@заливка"/>
      </xsl:attribute>
      <xsl:attribute name="stroke">
        <xsl:value-of select="@ободок"/>
      </xsl:attribute>
      <xsl:attribute name="stroke-width">
        <xsl:value-of select="@ширина-ободка"/>
      </xsl:attribute>
      <xsl:attribute name="cx">
        <xsl:value-of select="@cx"/>
      </xsl:attribute>
      <xsl:attribute name="cy">
        <xsl:value-of select="@cy"/>
      </xsl:attribute>
      <xsl:attribute name="rx">
        <xsl:value-of select="@rx"/>
      </xsl:attribute>
      <xsl:attribute name="ry">
        <xsl:value-of select="@ry"/>
      </xsl:attribute>
    </ellipse>
  </xsl:template>
</xsl:stylesheet>
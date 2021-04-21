﻿<?xml version="1.0" encoding="utf-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CD/NAME">
    <CD-NAME>
      <xsl:apply-templates select="@*|node()" />
    </CD-NAME>
  </xsl:template>
  <xsl:template match="a">
    <referent>
      <xsl:apply-templates select="@*|node()" />
    </referent>
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>MusicPath: <xsl:value-of select="*/@title"/>
        </title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="bands">
    <ul>
      <xsl:apply-templates select="band"/>
    </ul>
  </xsl:template>

  <xsl:template match="band">
    <li>
      <h4>
        <a href="{concat('/bands/',@ref)}">
          <xsl:value-of select="name"/>
        </a>
      </h4>
    </li>
  </xsl:template>

  <xsl:template match="@*|*">                 <!-- Identity template -->
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
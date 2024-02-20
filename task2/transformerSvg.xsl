<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <!-- �������������� ����������� ��������� -->
  <xsl:template match="�������">
    <html lang="en">
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <title>�������� �������</title>
        </head>
        <body>
            <svg width="{@������}" height="{@������}" xmlns="http://www.w3.org/2000/svg">
                <xsl:apply-templates select="������"/>
            </svg>
        </body>
    </html>

  </xsl:template>
  
  <!-- �������������� �������� -->
  <xsl:template match="������">
    <ellipse id="{@id}" fill="{@�������}" stroke="{@������}" stroke-width="{@������-������}" 
             cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
  </xsl:template>
</xsl:stylesheet>
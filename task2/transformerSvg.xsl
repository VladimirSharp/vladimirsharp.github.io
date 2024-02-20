<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <!-- Преобразование графических элементов -->
  <xsl:template match="графика">
    <html lang="en">
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <title>Владимир Жильцов</title>
        </head>
        <body>
            <svg width="{@ширина}" height="{@высота}" xmlns="http://www.w3.org/2000/svg">
                <xsl:apply-templates select="эллипс"/>
            </svg>
        </body>
    </html>

  </xsl:template>
  
  <!-- Преобразование эллипсов -->
  <xsl:template match="эллипс">
    <ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" 
             cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
                <script id="MathJax-script" src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
                <title>Владимир Жильцов</title>
            </head>
            <body>
                <p>Формула</p>
                <math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
                    <xsl:apply-templates />
                </math>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="операнд">
        <mi>
            <xsl:apply-templates />
        </mi>
    </xsl:template>

    <xsl:template match="оператор">
        <mo>
            <xsl:apply-templates />
        </mo>
    </xsl:template>

    <xsl:template match="число">
        <mn>
            <xsl:value-of select="." />
        </mn>
    </xsl:template>

    <xsl:template match="дробь">
        <mfrac>
            <xsl:apply-templates select="строка[1]" />
            <xsl:apply-templates select="строка[2]" />
        </mfrac>
    </xsl:template>

    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates select="строка[1]" />
            <xsl:apply-templates select="строка[2]" />
        </msup>
    </xsl:template>

    <xsl:template match="низ">
        <msub>
            <xsl:apply-templates select="строка[1]" />
            <xsl:apply-templates select="строка[2]" />
        </msub>
    </xsl:template>

    <xsl:template match="низверх">
        <msubsup>
            <xsl:apply-templates select="строка[1]" />
            <xsl:apply-templates select="строка[2]" />
            <xsl:apply-templates select="строка[3]" />
        </msubsup>
    </xsl:template>

    <xsl:template match="корень">
        <msqrt>
            <xsl:apply-templates />
        </msqrt>
    </xsl:template>

    <xsl:template match="строка">
        <mrow>
            <xsl:apply-templates select="*" />
        </mrow>
    </xsl:template>

</xsl:stylesheet>
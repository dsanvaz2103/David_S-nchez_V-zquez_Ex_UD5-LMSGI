<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Educativo</title>
                <style>
                    .verde { color: green; }
                    .azul { color: blue; }
                    .rojo { color: red; }
                </style>
            </head>
            <body>
                <h1><xsl:value-of select="ies/@nombre"/></h1>
                <table border="1">
                    <tr>
                        <th>Nombre del Ciclo</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="decretoTitulo/@año &gt; 2009">
                                        <span class="verde"><xsl:value-of select="decretoTitulo/@año"/></span>
                                    </xsl:when>
                                    <xsl:when test="decretoTitulo/@año = 2009">
                                        <span class="azul"><xsl:value-of select="decretoTitulo/@año"/></span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <span class="rojo"><xsl:value-of select="decretoTitulo/@año"/></span>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
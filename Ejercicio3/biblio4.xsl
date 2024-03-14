<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Biblioteca</title>
                <style>
                    .caro { color: red; }
                </style>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Título</th>
                        <th>Autores</th>
                        <th>Editores</th>
                    </tr>
                    <xsl:apply-templates select="//libro">
                        <xsl:sort select="precio" data-type="number" order="descending"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
        <tr>
            <td>
                <xsl:choose>
                    <xsl:when test="precio > 100">
                        <span class="caro">
                            <xsl:value-of select="titulo"/> (Caro)
                        </span>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="titulo"/>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
            <td>
                <xsl:for-each select="autor">
                    <xsl:value-of select="concat(nombre, ' ', apellido)"/>
                    <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="editor">
                    <xsl:value-of select="concat(nombre, ' ', apellido, ' (', afiliacion, ')')"/>
                    <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
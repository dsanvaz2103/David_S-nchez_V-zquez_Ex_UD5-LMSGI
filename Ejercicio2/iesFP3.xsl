<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/ies">
        <html>
            <body>
                <p><strong>Nombre y Apellidos: David Sánchez Vázquez</strong></p>
                <ul>
                    <xsl:apply-templates select="ciclos/ciclo"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <li><strong><xsl:value-of select="nombre"/>(<xsl:value-of select="grado"/>)</strong></li>
    </xsl:template>

</xsl:stylesheet>
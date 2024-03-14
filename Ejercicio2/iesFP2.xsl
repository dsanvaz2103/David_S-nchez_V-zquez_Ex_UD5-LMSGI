<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <body>
                <p>Nombre y Apellidos: David Sánchez Vázquez</p>
                <xsl:apply-templates select="ies/ciclos/ciclo/nombre"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="nombre">
        <p>"<xsl:value-of select="."/>"</p>
    </xsl:template>

</xsl:stylesheet>
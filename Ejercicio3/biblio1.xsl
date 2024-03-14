<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" encoding="UTF-8"/>

<xsl:template match="/">
    <xsl:text>Nombre y apellidos: David Sánchez Vázquez&#10;</xsl:text>
    <xsl:apply-templates select="//autor">
        <xsl:sort select="apellido" data-type="text" order="ascending"/>
    </xsl:apply-templates>
</xsl:template>

<xsl:template match="autor">
    <xsl:value-of select="concat(position(), '. ', apellido, ', ', nombre, '&#10;')"/>
</xsl:template>

</xsl:stylesheet>
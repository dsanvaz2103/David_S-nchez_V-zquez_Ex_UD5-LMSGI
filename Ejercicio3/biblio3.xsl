<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
    <table border="1">
      <tr>
        <th>Precio</th>
        <th>Título</th>
        <th>Año</th>
      </tr>
      <xsl:for-each select="bib/libro">
        <xsl:sort select="precio" data-type="text" order="ascending"/>
        <tr>
          <td>
            <xsl:value-of select="precio"/>
          </td>
          <td>
            <xsl:choose>
              <xsl:when test="number(precio) > 100">
                <xsl:attribute name="style">background-color: red;</xsl:attribute>
              </xsl:when>
            </xsl:choose>
            <xsl:value-of select="titulo"/>
          </td>
          <td>
            <xsl:value-of select="@año"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>

</xsl:stylesheet>
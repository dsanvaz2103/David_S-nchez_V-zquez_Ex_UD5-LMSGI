<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
    <body>
        <h3>Nombre y apellidos: David Sánchez Vázquez</h3>
        <ol>
            <xsl:for-each select="bib/libro[precio &lt; 100]">
                <li>
                    <b>
                        <xsl:value-of select="titulo"/>
                    </b>
                </li>
            </xsl:for-each>
        </ol>
    </body>
    </html>
</xsl:template>

</xsl:stylesheet>
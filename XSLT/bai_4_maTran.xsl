<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
    xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match = "/">
        <html>
            <body>
                <h2>Students</h2>
                <table border = "1">
                    <xsl:for-each select="MATRAN/DONG">
                        <tr>
                            <td><xsl:value-of select = "COT[1]"/></td>
                            <td><xsl:value-of select = "COT[2]"/></td>
                            <td><xsl:value-of select = "COT[3]"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>
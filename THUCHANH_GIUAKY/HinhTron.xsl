<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Danh sách hình tròn</title>
            </head>
            <body>
                <h1>Danh sách hình tròn</h1>
                <ul style="list-style-type:square">
                    <xsl:for-each select="circles/circle">
                        <li>
                            <xsl:text>Hình tròn </xsl:text>
                            <xsl:value-of select="id"/>
                            <xsl:text>: R = </xsl:text>
                            <xsl:value-of select="radius"/>
                            <xsl:text>, Chu vi = </xsl:text>
                            <xsl:value-of select="2 * 3.14 * radius"/>
                            <xsl:text>, Bán kính = </xsl:text>
                            <xsl:value-of select="radius"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
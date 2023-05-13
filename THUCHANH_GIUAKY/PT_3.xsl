<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Phương trình bậc 3: 
                    <xsl:choose>
                        <xsl:when test="equation/a = 0">
                        </xsl:when>
                        <xsl:when test="equation/a = 1">
                            x<sup>3</sup>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="equation/a"/>x<sup>3</sup>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="equation/b = 0">
                        </xsl:when>
                        <xsl:when test="equation/b = 1">
                            + x<sup>2</sup>
                        </xsl:when>
                        <xsl:otherwise>
                            + <xsl:value-of select="equation/b"/>x<sup>2</sup>  
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="equation/c = 0">
                        </xsl:when>
                        <xsl:when test="equation/c = 1">
                            + x
                        </xsl:when>
                        <xsl:otherwise>
                            + <xsl:value-of select="equation/c"/>x
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="equation/d = 0">
                        </xsl:when>
                        <xsl:otherwise>
                            + <xsl:value-of select="equation/d"/>
                        </xsl:otherwise>
                    </xsl:choose> 
                    = 0
                </h2>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


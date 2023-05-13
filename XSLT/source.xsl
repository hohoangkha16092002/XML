<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <h1> 
            <xsl:value-of select="//title"/> 
        </h1> 
        <h2> 
            <xsl:value-of select="//author"/> 
        </h2>
    </xsl:template>
</xsl:stylesheet>
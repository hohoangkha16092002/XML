<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="text"/>
    <xsl:template match="tuple">
        INSERT INTO employee VALUES (
        <xsl:value-of select="id"/>,
        <xsl:value-of select="name/ln"/>,
        <xsl:value-of select="name/fn"/>,
        <xsl:value-of select="salary"/>,
        <xsl:value-of select="birthyear"/>,
        <xsl:value-of select="startyear"/>);
    </xsl:template>
</xsl:stylesheet>
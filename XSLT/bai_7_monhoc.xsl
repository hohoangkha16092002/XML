<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
    xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match = "/">
        <html>
            <body>
                <xsl:variable name="start-number" select="0" />
                <h2>Môn Học</h2>
                <table border = "1">
                    <tr bgcolor = "#9acd32">
                        <th>STT</th>
                        <th>Mã môn học</th>
                        <th>Tên môn học</th>
                        <th>Số giờ</th>
                    </tr>
                    <xsl:for-each select="DSMH/MonHoc">
                        <xsl:if test="SoGio &gt; 30">
                            <tr>
                                <xsl:variable name="position" select="position()" />
                                <td><xsl:value-of select="$start-number + $position"/></td>
                                <td><xsl:value-of select = "MaMonHoc"/></td>
                                <td><xsl:value-of select = "TenMonHoc"/></td>
                                <td><xsl:value-of select = "SoGio"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>
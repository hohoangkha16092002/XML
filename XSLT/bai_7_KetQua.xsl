<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
    xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match = "/">
        <html>
            <body>
                <h2>Students</h2>
                <table border = "1">
                    <tr bgcolor = "#9acd32">
                        <th>Mã sinh viên</th>
                        <th>Mã môn học</th>
                        <th>Điểm thi</th>
                    </tr>
                    <xsl:for-each select="DSKQ/KetQua">
                        <xsl:sort select="DiemThi" order="ascending"/>
                        <xsl:if test="DiemThi &gt;= 5">
                            <tr>
                                <td><xsl:value-of select = "MaSinhVien"/></td>
                                <td><xsl:value-of select = "MaMonHoc"/></td>
                                <td><xsl:value-of select = "DiemThi"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>
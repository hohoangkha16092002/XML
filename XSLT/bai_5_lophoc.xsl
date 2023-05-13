<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
    xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match = "/">
        <html>
            <body>
                <h2>Lớp học</h2>
                <table border = "1">
                    <tr bgcolor = "#9acd32">
                        <th>Mã lớp</th>
                        <th>Tên lớp</th>
                    </tr>
                    <xsl:for-each select="LopHoc/Lop">
                        <tr>
                            <td><xsl:value-of select = "MaLop"/></td>
                            <td><xsl:value-of select = "TenLop"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>
<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
    xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match = "/">
        <html>
            <body>
                <xsl:variable name="start-number" select="0" />
                <h2>Sinh Viên</h2>
                <table border = "1">
                    <tr bgcolor = "#9acd32">
                        <th>STT</th>
                        <th>Mã số SV</th>
                        <th>Tên SV</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Mã lớp</th>
                    </tr>
                    <xsl:for-each select="DSSV/SinhVien">
                        <xsl:sort select="TenSV"/>
                        <tr>
                            <xsl:variable name="position" select="position()" />
                            <td><xsl:value-of select="$start-number + $position"/></td>
                            <td><xsl:value-of select = "@mssv"/></td>
                            <td><xsl:value-of select = "TenSV"/></td>
                            <td><xsl:value-of select = "GioiTinh"/></td>
                            <td><xsl:value-of select = "NgaySinh"/></td>
                            <td><xsl:value-of select = "MaLop"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>
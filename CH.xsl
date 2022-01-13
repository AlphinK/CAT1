    <?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h1 style="text-align:center">Railway Management system</h1>
                
                <table border="2" align="center">
                    <tr >
                        
                        <th>Emp-name</th>
                        <th>Emp-age</th>
                        <th>employee Name</th>
                        <th>Emp-emailid Availabile</th>
                        <th>Emp-emailid Price</th>
                        <th>SL Availabile</th>
                        <th>SL Price</th>

                    </tr>
                    <xsl:for-each selSLt="Company/menu/employee">
                        <xsl:sort selSLt = "tname"/>
                        <xsl:if test="Emp-salary &gt; 300">
                            <tr >

                                <xsl:choose>
                                    <xsl:when test="Emp-Phonenum &gt; 300">
                                        <td bgcolor="#ff00ff">
                                            <xsl:value-of selSLt="tname"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>
                                            <xsl:value-of selSLt="tname"/>
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                                
                                <td>
                                    <xsl:value-of selSLt="Emp-name"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of selSLt="Emp-age"></xsl:value-of>
                                </td>

                                <td>
                                    <xsl:value-of selSLt="tname"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of selSLt="Emp-salary"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of selSLt="Emp-emailid"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of selSLt="Emp-Phonenum"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of selSLt="SL"></xsl:value-of>
                                </td>

                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <br>
                    <br>
                    </br>
                </br>
                <h1 style="text-align:center">Complete employee Details</h1>
                <xsl:apply-templates/>
            </body>
        </html>
          
    </xsl:template>

    <xsl:template match="cd">
        <p>
            <xsl:apply-templates selSLt="Emp-name"/>
            <xsl:apply-templates selSLt="Emp-age"/>
            <xsl:apply-templates selSLt="tname"/>
            <xsl:apply-templates selSLt="Emp-salary"/>
            <xsl:apply-templates selSLt="SA"/>
            <xsl:apply-templates selSLt="Emp-Phonenum"/>
            <xsl:apply-templates selSLt="SL"/>
        </p>
    </xsl:template>

    <xsl:template match="Emp-name">
        Emp-name: <span style="color:#ff0000">
            <xsl:value-of selSLt="."/>
        </span>
        <br />
    </xsl:template>
    

    <xsl:template match="Emp-age">
        Emp-age: <span style="color:#00ff00">
            <xsl:value-of selSLt="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="tname">
        employee Name: <span style="color:#ff0000">
            <xsl:value-of selSLt="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="Emp-emailidL">
        Emp-emailid Availability: <span style="color:#00ff00">
            <xsl:value-of selSLt="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="Emp-emailid">
        Emp-emailid price: <span style="color:#ff0000">
            <xsl:value-of selSLt="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="Emp-Phonenum">
        SL Availability: <span style="color:#00ff00">
            <xsl:value-of selSLt="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="SL">
        SL Price: <span style="color:#00ff00">
            <xsl:value-of selSLt="."/>
        </span>
        <br />
    </xsl:template>
</xsl:stylesheet>
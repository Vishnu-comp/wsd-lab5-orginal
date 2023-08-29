<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Employee Information</title>
      </head>
      <body>
        <h1>Employee Information</h1>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Last Name</th>
            <th>Date of Birth</th>
            <th>Gender</th>
            <th>Position</th>
            <th>Salary</th>
            
          </tr>
          <xsl:for-each select="employees/employee">
            <tr>
              <td><xsl:value-of select="personalInfo/firstName"/></td>
              <td><xsl:value-of select="personalInfo/lastName"/></td>
              <td><xsl:value-of select="personalInfo/Dob"/></td>
              <td><xsl:value-of select="personalInfo/gender"/></td>
              <td><xsl:value-of select="EmployeeInfo/position"/></td>
              <td><xsl:value-of select="EmployeeInfo/salary"/></td>
              
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
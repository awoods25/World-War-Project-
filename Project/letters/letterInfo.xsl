<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/2000/svg"  
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="lettersColl" as="document-node()+" select="collection('letters/?select=*.xml')"/>
    
    <xsl:template match="/">
        
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <title>Timeline</title>
                    <meta charset="UTF-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                    <link rel="stylesheet" type="text/css" href="style.css"/>
                    
                    
                </head>
                
                <body>
                    <xsl:for-each select="$lettersColl">
                                <h2><xsl:apply-templates select="//title"/></h2>
                                <h3><xsl:apply-templates select="//abstract"/></h3>
                                <p><xsl:apply-templates select="//heading"/><xsl:apply-templates select="//body"/></p>
                  </xsl:for-each>
                </body>
            </html>
        
        
    </xsl:template>
</xsl:stylesheet>
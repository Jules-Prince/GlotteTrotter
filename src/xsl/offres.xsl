<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link href="style/offres.css" rel="stylesheet" type="text/css"/>
                <title>Offres</title>
            </head>
            <body>
                <h2>
                    Voici la liste des 
                    <xsl:value-of select="count(OFFRES/OFFRE)"/>
                    offres
                </h2>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
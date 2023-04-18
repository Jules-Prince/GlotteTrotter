<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/GLOTTE-TROTTER">
        <html>
            <head>
                <link href="../style/offres.css" rel="stylesheet" type="text/css"/>
                <title>Offres</title>
            </head>
            <body>
                <h1>
                    Voici la liste des <xsl:value-of select="count(OFFRES/OFFRE)" /> offres
                </h1>
                <div class="body">
                    <div class="offres">
                        <xsl:for-each select="OFFRES/OFFRE">
                            <div class="offre">
                                <h2 class="titre">
                                    <xsl:value-of select="NAME"/>
                                </h2>
                                <h4 class="ville">
                                    <xsl:value-of select="DESTINATION"/>
                                </h4>
                                <h3 class="prix">
                                    <xsl:value-of select="PRIX"/>
                                </h3>
                                <p class="dates">
                                    <xsl:value-of select="DATE-DEPART"/> -
                                    <xsl:value-of select="DATE-ARRIVEE"/>
                                </p>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
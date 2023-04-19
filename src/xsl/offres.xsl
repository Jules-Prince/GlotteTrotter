<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/GLOTTE-TROTTER">
        <html lang="fr">
            <head>
                <link href="../style/offres.css" rel="stylesheet" type="text/css"/>
                <title><xsl:value-of select="count(OFFRES/OFFRE)" /> offres</title>
            </head>
            <body>
                <div class="header">
                    Voici la liste des offres
                </div>
                <div class="body">
                    <div class="offres">
                        <xsl:for-each select="OFFRES/OFFRE">
                            <div class="offre">
                                <div class="titre">
                                    <xsl:value-of select="NAME"/>
                                </div>
                                <div class="ville">
                                    <xsl:value-of select="DESTINATION"/>
                                </div>
                                <div class="prix">
                                    <xsl:value-of select="PRIX"/>
                                </div>
                                <div class="dates">
                                    <xsl:value-of select="DATE-DEPART"/> -
                                    <xsl:value-of select="DATE-ARRIVEE"/>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
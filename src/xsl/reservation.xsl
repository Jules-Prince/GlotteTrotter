<!-- reservation.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/GLOTTE-TROTTER">
        <html lang="fr">
            <head>
                <link href="../style/reservation.css" rel="stylesheet" type="text/css"/>
                <xsl:variable name="nbRes" select="count(RESERVATIONS/RESERVATION)"/>
                <title>
                    <xsl:value-of select="$nbRes"/>
                    <xsl:choose>
                        <xsl:when test="$nbRes = 1">
                            reservation
                        </xsl:when>
                        <xsl:otherwise>
                            reservations
                        </xsl:otherwise>
                    </xsl:choose>
                </title>
            </head>
            <body>
                <div class="header">
                    Voici la liste des reservations
                </div>
                <div class="body">
                    <div class="reservations">
                        <xsl:for-each select="RESERVATIONS/RESERVATION">
                            <div class="reservation">
                                <xsl:variable name="offreID" select="OFFRE"/>
                                <div class="name">
                                    <xsl:value-of select="/GLOTTE-TROTTER/OFFRES/OFFRE[ID = $offreID]/NAME"/>
                                </div>
                                <div class="id">
                                    <xsl:value-of select="ID"/>
                                </div>
                                <xsl:variable name="clientId" select="CLIENT"/>
                                <div class="client">
                                    <xsl:value-of select="/GLOTTE-TROTTER/CLIENTS/CLIENT[ID = $clientId]/NAME"/>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
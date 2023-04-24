<!-- reservation.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/GLOTTE-TROTTER">
        <html lang="fr">
            <xsl:variable name="nbClient" select="count(CLIENTS/CLIENT)"/>
            <head>
                <link href="../style/clients.css" rel="stylesheet" type="text/css"/>
                <title>
                    <xsl:value-of select="$nbClient"/>
                    <xsl:choose>
                        <xsl:when test="$nbClient = 1">
                            client
                        </xsl:when>
                        <xsl:otherwise>
                            clients
                        </xsl:otherwise>
                    </xsl:choose>
                </title>
            </head>
            <body>
                <div class="header">
                    <p>Voici la liste des <xsl:value-of select="$nbClient"/> clients</p>
                </div>
                <div class="body">
                    <div class="clients">
                        <xsl:for-each select="CLIENTS/CLIENT">
                            <div class="client">
                                <div class="name">
                                    <xsl:value-of select="NAME"/>
                                </div>
                                <div class="email">
                                    <xsl:value-of select="EMAIL"/>
                                </div>
                                <div class="phone">
                                    <xsl:value-of select="PHONE"/>
                                </div>
                                <div class="id">
                                    <xsl:value-of select="ID"/>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Définition de la règle de correspondance pour l'élément racine -->
    <xsl:template match="/">
        <RESERVATIONS>
            <xsl:apply-templates select="GLOTTE-TROTTER/OFFRES/OFFRE"/>
        </RESERVATIONS>
    </xsl:template>

    <!-- Définition de la règle de correspondance pour l'élément 'personne' -->
    <xsl:template match="OFFRE">
        <RESERVATION>
            <OFFRE><xsl:value-of select="NAME"/></OFFRE>
            <CLIENTS>
                <xsl:for-each select="/GLOTTE-TROTTER/RESERVATIONS/RESERVATION[OFFRE = current()/ID]">
                    <CLIENT>
                        <xsl:value-of select="/GLOTTE-TROTTER/CLIENTS/CLIENT[ID = current()/CLIENT]/NAME"/>
                    </CLIENT>
                </xsl:for-each>
            </CLIENTS>
        </RESERVATION>
    </xsl:template>

</xsl:stylesheet>

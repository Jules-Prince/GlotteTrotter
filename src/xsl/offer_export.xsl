<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" media-type="application/json" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <xsl:text>{ "offres": [</xsl:text>
        <xsl:apply-templates select="GLOTTE-TROTTER/OFFRES/OFFRE"/>
        <xsl:text>]}</xsl:text>
    </xsl:template>

    <xsl:template match="OFFRE">
        <xsl:text>{ "name": "</xsl:text>
        <xsl:value-of select="NAME"/>
        <xsl:text>", "type-sejour": "</xsl:text>
        <xsl:value-of select="/GLOTTE-TROTTER/TYPES-SEJOURS/TYPE-SEJOUR[ID = current()/TYPE-SEJOUR]/NAME"/>
        <xsl:text>","type-public": "</xsl:text>
        <xsl:value-of select="/GLOTTE-TROTTER/TYPES-PUBLICS/TYPE-PUBLIC[ID = current()/TYPE-PUBLIC]/NAME"/>
        <xsl:text>","langue": "</xsl:text>
        <xsl:value-of select="/GLOTTE-TROTTER/LANGUES/LANGUE[ID = current()/LANGUE]/NAME"/>
        <xsl:text>","destination": "</xsl:text>
        <xsl:value-of select="DESTINATION"/>
        <xsl:text>", "activites": [</xsl:text>
        <xsl:apply-templates select="ACTIVITES/ACTIVITE"/>
        <xsl:text>], "cours-de-langue": </xsl:text>
        <xsl:value-of select="COURS-DE-LANGUE"/>
        <xsl:text>, "test-de-langue": </xsl:text>
        <xsl:value-of select="TEST-DE-LANGUE"/>
        <xsl:text>, "date-depart": "</xsl:text>
        <xsl:value-of select="DATE-DEPART"/>
        <xsl:text>", "depart-arrivee": "</xsl:text>
        <xsl:value-of select="DATE-ARRIVEE"/>
        <xsl:text>", "prix": </xsl:text>
        <xsl:value-of select="PRIX"/>
        <xsl:text>}</xsl:text>
        <xsl:if test="position() != last()">
            <xsl:text>,</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template match="ACTIVITES/ACTIVITE">
        <xsl:text>{ "name": "</xsl:text>
        <xsl:value-of select="/GLOTTE-TROTTER/ACTIVITES/ACTIVITE[ID = current()/ID]/NAME"/>
        <xsl:text>"}</xsl:text>
        <xsl:if test="position() != last()">
            <xsl:text>,</xsl:text>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>

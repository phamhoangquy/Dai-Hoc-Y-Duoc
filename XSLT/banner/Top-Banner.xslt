<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="top-banner">
			<div class="top-banner-wrapper">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="wrapper">

				<a href="javascript:;">
					<xsl:if test="Description !=''">
						<xsl:attribute name="href">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</xsl:attribute>
					</xsl:if>
					<!-- <xsl:choose>
						<xsl:when test="position()=1"> -->
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
					<!-- </xsl:when>
						<xsl:otherwise>
							<img class='swiper-lazy'>
							<xsl:attribute name="data-srcset">
								<xsl:value-of disable-output-escaping="yes" select="ThumbnailUrl">
								</xsl:value-of>
								<xsl:text> 1024w, </xsl:text>
								<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</xsl:otherwise>
					</xsl:choose> -->
				</a>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="medical-check-banner">
			<div class="container">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="image-wrap"><a href="javascript;;">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a></div>
		<div class="banner-content">
			<div class="brand-logo"><a href="javascript:;">

					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a></div>
			<h2 class="name">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</h2>
			<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
			<div class="btn-center"><a class="btn btn-booking">

					<xsl:attribute name="href">
						<xsl:text>/dang-ky-kham</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<span>Đặng ký khám </span><em class="mdi mdi-calendar"></em>
				</a></div>
		</div>
	</xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="specialized-detail-2">
			<div class="container">
				<div class="section-title"><span>Chuyên khoa khác</span><em
						class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<div class="silde-spe-detail-2">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

						</div>
					</div>
					<div class="swiper-nav-wrap">
						<div class="nav-arrow-prev">
							<div class="icon-chevron-left"></div>
						</div>
						<div class="nav-arrow-next">
							<div class="icon-chevron-right"></div>
						</div>
					</div>
				</div>

			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="image-wrap"><a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class="swiper-lazy">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="text-icon">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>

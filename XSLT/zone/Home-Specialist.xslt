<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="section-title"><span>
				<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
			</span><em class="mdi mdi-gamepad"><span></span><span></span></em>
		</div>
		<div class="swiper-home-specialist">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>

				</div>
			</div>
			<div class="swiper-nav-wrap">
				<div class="nav-arrow-prev">
					<div class="icon-chevron-left"></div>
				</div>
				<div class="nav-arrow-next">
					<div class="icon-chevron-right"> </div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="specialist-item">
				<div class="image-wrap">

					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="content">
					<div class="sub-title">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</div>
					<div class="btn-left"><a class="btn btn-view-more">
						
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						
						<span>Xem thêm</span></a></div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>

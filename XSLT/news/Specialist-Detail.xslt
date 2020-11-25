<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="specialized-detail">
			<div class="container">
				<div class="section-title"><span>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<div class="row">
					<div class="col w-full lg:w-full">
						<div class="spe-detail-wrapper">
							<article>
								<div class="fullcontent">
									<div class="content-read-more">
										<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
									</div>
								</div>
								<div class="btn-wrapper-center">
									<div class="btn-view-more"><a>Xem Thêm</a><em class="mdi mdi-chevron-down"></em>
									</div>
								</div>
							</article>
						</div>
						<div class="spe-news-slide">
							<div class="section-title-zone"><span>
									<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
								</span></div>
							<div class="silde-spe-detail">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
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
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="image-wrap zoom-in">
				<a>
					<xsl:attribute name="href">
						<xsl:text>javascript:;</xsl:text>
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
		</div>
	</xsl:template>

</xsl:stylesheet>

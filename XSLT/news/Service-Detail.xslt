<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<section class="service-detail">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="service-detail-2">
				<div class="container">
					<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">
			<section class="service-detail-3">
				<div class="container">
					<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=4">
			<section class="service-detail-4">
				<div class="container">
					<div class="section-title"><span>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
					<div class="sub-text">
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</div>
					<div class="silde-service-detail">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>

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
		</xsl:if>
	</xsl:template>
	<xsl:template match="News">
		<div class="col w-full lg:w-1/2">
			<div class="img-wrapper shine">
				<a>
					<xsl:attribute name="href">
						<xsl:text>javascript:;</xsl:text>
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
		</div>
		<div class="col w-full lg:w-1/2">
			<div class="section-title"><span>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</span><em class="mdi mdi-gamepad"><span></span><span></span></em>
			</div>
			<div class="content-sce-detail">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<xsl:choose>
			<xsl:when test="ImageUrl !=''">
				<div class="row">
					<div class="col w-full lg:w-1/2">
						<div class="img-wrapper shine">

							<a>
								<xsl:attribute name="href">
									<xsl:text>javascript:;</xsl:text>
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
					</div>
					<div class="col w-full lg:w-1/2">
						<div class="section-title"><span>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
						<div class="content-sce-detail">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div class="row">
					<div class="col w-full">
						<div class="section-title"><span>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
						<div class="content-sce-detail">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<div class="section-title"><span>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
		<div class="row">
			<div class="col w-full lg:w-10/12">
				<div class="card-body">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-4'>
		<div class="swiper-slide">
			<div class="image-wrap"><a>
					<xsl:if test="SubTitle !=''">

						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</xsl:attribute>

					</xsl:if>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img class='swiper-lazy'>
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>

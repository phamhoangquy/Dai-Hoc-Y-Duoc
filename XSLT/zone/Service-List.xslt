<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="service">
			<div class="container">
				<div class="section-title"><span>
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/Title"></xsl:value-of>
					</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode='Big'></xsl:apply-templates>
			<div class="row">
				<xsl:apply-templates select="Zone" mode='Bottom'></xsl:apply-templates>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone" mode='Big'>
		<xsl:if test="position()=1">
			<div class="row">
				<div class="col w-full lg:w-1/2 pr-0">
					<div class="service-figure">
						<div class="image-wrap shine">
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
					</div>
				</div>
				<div class="col w-full lg:w-1/2 pl-0">
					<div class="service-text">
						<div class="title">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</div>
						<div class="content">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="btn-left"><a class="btn btn-primary blue">

								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>


								<span>Xem chi tiết</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode='Bottom'>
		<xsl:if test="position()>1">
			<div class="col w-full lg:w-4/12">
				<div class="news-figure">
					<div class="image-wrap shine">


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
						<div class="title">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</div>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

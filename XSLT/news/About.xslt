<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<section class="about">
				<div class="container">
					<div class="section-title"><span>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
					<div class="text">
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</div>
				</div>
				<div class="big-bg">
					<div class="row">
						<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="about-2">
				<div class="container">
					<div class="section-title"><span>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
					<div class="row">
						<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">
			<section class="about-3">
				<div class="container">
					<div class="section-title"><span>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
					<div class="row">
						<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>

					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="col w-full lg:w-1/2">
			<div class="img-wrapper">
				<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
		<div class="col w-full lg:w-1/2">
			<div class="background">
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<div class="col w-full lg:w-1/2">
			<div class="about-figure">
				<div class="img-wrapper">
					<img class="lazyload">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<h2 class="caption">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<div class="col w-full md:w-6/12 lg:w-3/12">
			<div class="big-img">
				<div class="border-img">
					<div class="image-wrap"><a href="javascript:;">

							<img class='lazyload'>
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>

						</a></div>
				</div>
				<div class="text">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="facility-display">
			<div class="container">
				<div class="section-title"><span>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<div class="sub-title">
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
			<div class="facility-swiper">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:if test="count(NewsImages) mod 6 =0">

							<xsl:apply-templates select="NewsImages" mode='First'></xsl:apply-templates>
						</xsl:if>
						<xsl:if test="count(NewsImages) mod 6 > 0">

							<xsl:apply-templates select="NewsImages" mode='Second'></xsl:apply-templates>
						</xsl:if>

					</div>
				</div>
				<div class="swiper-nav-wrap">
					<div class="button-bg-left">
						<div class="nav-arrow-prev">
							<div class="icon-chevron-left"></div>
						</div>
					</div>
					<div class="button-bg-right">
						<div class="nav-arrow-next">
							<div class="icon-chevron-right"> </div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages" mode='First'>
		<xsl:if test="position() mod 6 = 1">
			<xsl:text disable-output-escaping="yes"> &lt;div class="swiper-slide"&gt;&lt;div class="grid-container"&gt;
			</xsl:text>
			<div class="col-child col-1">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 6 =2">
			<div class="col-child col-2">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 6 =3">
			<div class="col-child col-3">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 6 =4">
			<div class="col-child col-4">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 6 = 5">
			<xsl:text disable-output-escaping="yes"> &lt;div class="col-child col-5"&gt;</xsl:text>
			<div class="col-child-2 col-6">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>

		</xsl:if>
		<xsl:if test="position() mod 6 = 0">
			<div class="col-child-2 col-7">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
			<xsl:text disable-output-escaping="yes"> &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>

	</xsl:template>

	<xsl:template match="NewsImages" mode='Second'>
		<xsl:if test="position() mod 6 = 1">
			<xsl:text disable-output-escaping="yes"> &lt;div class="swiper-slide"&gt;&lt;div class="grid-container"&gt;
			</xsl:text>
			<div class="col-child col-1">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 6 =2">
			<div class="col-child col-2">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 6 =3">
			<div class="col-child col-3">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 6 =4">
			<div class="col-child col-4">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 6 = 5">
			<xsl:text disable-output-escaping="yes"> &lt;div class="col-child col-5"&gt;</xsl:text>
			<div class="col-child-2 col-6">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>

		</xsl:if>
		<xsl:if test="position()=last() and position() mod 6 &lt; 5">
			<xsl:text disable-output-escaping="yes"> &lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=last() and position() mod 6= 5">
			<xsl:text disable-output-escaping="yes"> &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() mod 6 = 0">
			<div class="col-child-2 col-7">
				<xsl:apply-templates select="." mode='Item'></xsl:apply-templates>
			</div>
			<xsl:text disable-output-escaping="yes"> &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>

	</xsl:template>


	<xsl:template match="NewsImages" mode='Item'>
		<a>
			<xsl:attribute name="data-fancybox">
				<xsl:text>gallery-1</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
	</xsl:template>
</xsl:stylesheet>

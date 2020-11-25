<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="title">
			<xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of>
		</div>
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<div class="section-card"><a class="image-wrap shine">

				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
			<div class="wrap-text">
				<div class="name">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="briefcontent">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent">
					</xsl:value-of>
				</div>
				<div class="wrap-btn">
					<div class="btn-left"><a class="btn btn-primary blue">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>

							<span>Xem chi tiết</span>
						</a></div>
					<div class="btn-left medical-check-banner"><a class="btn btn-booking" >
							<xsl:attribute name="href">
								<xsl:text>/dang-ky-kham</xsl:text>
							</xsl:attribute>
						
						<span>Đặt lịch khám</span><em class="mdi mdi-calendar"></em></a></div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="section-title"><span>
				<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
			</span><em class="mdi mdi-gamepad"><span></span><span></span></em>
		</div>
		<div class="home-news-event single-swiper">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
			<div class="paginatio-wrap">
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<xsl:choose>
			<xsl:when test="position() mod 3 = 1">
				<xsl:text disable-output-escaping='yes'> &lt;div class=&quot;swiper-slide&quot;&gt;
					&lt;div class=&quot;row&quot;&gt;
					&lt;div class=&quot;col w-full&quot;&gt;
				</xsl:text>
				<div class="news-figure big">
					<div class="image-wrap zoom-in">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
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
					<div class="content">
						<time>
							<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
						</time>
						<div class="title">
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
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
				</div>
				<xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
			</xsl:when>
			<xsl:when test="position() mod 3 = 2">
				<div class="col w-full sm:w-1/2">
					<div class="news-figure">
						<div class="image-wrap zoom-in">

							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
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
						<div class="content">
							<time>
								<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
							</time>
							<div class="title"><a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</a></div>
						</div>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position() mod 3 = 0">
				<div class="col w-full sm:w-1/2">
					<div class="news-figure">
						<div class="image-wrap zoom-in">

							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
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
						<div class="content">
							<time>
								<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
							</time>
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
						</div>
					</div>
				</div>
				<xsl:text disable-output-escaping='yes'>&lt;/div&gt;&lt;/div&gt;</xsl:text>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>

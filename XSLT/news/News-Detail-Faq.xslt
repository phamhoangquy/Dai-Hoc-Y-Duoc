<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="medical-answer">
			<div class="container">
				<div class="title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="section-social">
					<time>
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</time>
					<div class="social">
						<a target="_blank" class="mr-2">
							<xsl:attribute name='href'>
								<xsl:text>https://twitter.com/intent/tweet?text=</xsl:text>
								<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
							</xsl:attribute>
							<em class="mdi mdi-facebook"> </em>
						</a>
						<a target="_blank">
							<xsl:attribute name='href'>
								<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
								<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
							</xsl:attribute>
							<em class="mdi mdi-twitter"></em>
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col w-full lg:w-10/12">

						<xsl:if test="count(NewsRelated) >0">
							<xsl:apply-templates select="NewsRelated"></xsl:apply-templates>

						</xsl:if>
						<div class="anwser-question">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
				</div>

			</div>
		</section>
		<section class="news-other">
			<div class="container">
				<div class="section-title"><span>tin tức khác</span><em
						class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<div class="swiper-news-other">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
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
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="news-figure">
				<div class="image-wrap opacity">
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
	</xsl:template>
	<xsl:template match="NewsRelated">
		<div class="section-card"><a class="image-wrap shine" href='javascript:;'>
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
					<div class="btn-left medical-check-banner"><a class="btn btn-booking">
							<xsl:attribute name="href">
								<xsl:text>/dang-ky-kham</xsl:text>
							</xsl:attribute>
							<span>Đặt lịch khám</span><em class="mdi mdi-calendar"></em>
						</a></div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

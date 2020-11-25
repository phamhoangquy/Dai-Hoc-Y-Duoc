<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">

		<section class="doctor-detail-1">
			<div class="container">
				<div class="section-title"><span>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<div class="border-bottom">
					<div class="row">
						<div class="col w-full lg:w-3/12">
							<div class="section-card">
								<a class="image-wrap shine">
									<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
								</a>
							</div>
						</div>
						<div class="col w-full lg:w-9/12 relative">
							<div class="section-card">
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
										<div class="btn-left medical-check-banner"><a class="btn btn-booking"
												href=""><span>Đặt lịch khám</span><em class="mdi mdi-calendar"></em></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="news-detail">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</section>
		<section class="doctor-detail-2">
			<div class="container">
				<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
			</div>
		</section>
		<section class="doctor-detail-3">
			<div class="container">
				<div class="section-title"><span>Bài viết y khoa</span><em
						class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<div class="row">
					<xsl:apply-templates select="NewsRelated"></xsl:apply-templates>

				</div>
			</div>
		</section>
		<section class="doctor-detail-4">
			<div class="container">
				<div class="section-title"><span>Bác sĩ cùng khoa</span><em
						class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<div class="silde-doctor-detail">
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
	<xsl:template match="NewsAttributes">
		<div class="section-title"><span>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</span><em class="mdi mdi-gamepad"><span></span><span></span></em>
		</div>
		<div class="table-wrapper">
			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="NewsRelated">
		<div class="col w-full lg:w-4/12">
			<div class="news-figure">
				<div class="image-wrap opacity">
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
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="wapper-doctor">
				<div class="image-wrap">
					<a>
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
				<div class="wrap-panel">
					<div class="name">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</div>
					<div class="btn-center"><a class="btn btn-view-more">

							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							Xem chi tiết
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<img>
		<xsl:attribute name="src">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="alt">
			<xsl:value-of select="Title"></xsl:value-of>
		</xsl:attribute>
		</img>
	</xsl:template>
</xsl:stylesheet>

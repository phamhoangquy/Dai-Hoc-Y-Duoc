<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home-our-mission">
			<div class="section-title"><span>
					<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
				</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
			<div class="home-choose-us">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
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
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="item">
				<div class="wrap">
					<div class="image-wrap">

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
						<div class="caption">Phòng khám Bệnh viện Đại học Y Dược 1 được quản lý và vận
							hành
							theo tiêu chuẩn quốc tế, cơ sở vật chất hiện đại, tiện nghi, không gian khám
							chữa bệnh rộng rãi, sạch sẽ...</div>
						<div class="btn-center"><a class="btn btn-primary blue" >
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
		</div>
	</xsl:template>

</xsl:stylesheet>

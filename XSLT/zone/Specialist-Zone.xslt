<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="specialized">
			<div class="container">
				<div class="section-title"><span>
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/Title"></xsl:value-of>
					</span><em class="mdi mdi-gamepad"><span></span><span></span></em></div>
				<div class="row">

				</div>
			</div>
		</section>
	</xsl:template>

</xsl:stylesheet>

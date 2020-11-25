<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="medical-answer-detail">
			<div class="container">
				<div class="title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="section-social">
					<time>09.05.2020</time>
					<div class="social"><a href=""><em class="mdi mdi-facebook"></em></a><a href=""><em
								class="mdi mdi-twitter"></em></a></div>
				</div>
				<div class="anwser-question">
					<p>Tỉ lệ mắc ung thư đang có xu hướng tăng nhanh, số lượng người trẻ bị bệnh ngày càng cao. Năm
						2018,
						Việt Nam có hơn 165.000 ca ung thư mới, dự báo con số này có thể lên đến 190.000 người vào cuối
						năm
						2020 (Theo thống kê của Tổ chức Nghiên cứu ung thư quốc tế IARC). Do đó, việc tầm soát ung thư
						định
						kỳ là rất quan trọng để có thể phát hiện sớm và điều trị hiệu quả ung thư.</p><img
						class="lazyloaded" src="./img/medicine-answer/6.png" alt="">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
						labore
						et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
						ut
						aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
						culpa
						qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error
						sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
						inventore
						veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
						voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
						voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,
						consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore
						magnam aliquam quaerat voluptatem.</p><img class="lazyloaded" src="./img/medicine-answer/6.png"
						alt="">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
						labore
						et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
						ut
						aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
						culpa
						qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error
						sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
						inventore
						veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
						voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
						voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,
						consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore
						magnam aliquam quaerat voluptatem.</p><img class="lazyloaded" src="./img/medicine-answer/6.png"
						alt="">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
						labore
						et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
						ut
						aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
						culpa
						qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error
						sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
						inventore
						veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
						voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
						voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,
						consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore
						magnam aliquam quaerat voluptatem.</p>
					<ul>
						<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates molestias perferendis,
							quibusdam alias cum illo porro beatae magnam rerum harum ipsam nostrum reiciendis
							consequatur
							dignissimos maxime fugiat quas ratione voluptatum?</li>
					</ul>
				</div>
			</div>
		</section>
		<section class="medical-answer-detail-2">
			<div class="container">
				<div class="title">PHÒNG KHÁM BỆNH VIỆN ĐẠI HỌC Y DƯỢC 1</div>
				<div class="content"><span>+ 20-22 Dương Quang Trung, Phường 12, Quận 10</span><span>+ Hotline: 1800
						6023</span><span>+ Website: www.umcclinic.com.vn</span></div>
				<div class="row">
					<div class="col w-full lg:w-10/12">
						<div class="section-card"><a class="image-wrap shine" href="#"><img
									src="./img/medicine-answer/6.png" alt=""></a>
							<div class="wrap-text">
								<div class="name">PGS.TS.BS Lê Anh Thư</div>
								<div class="desc">Số năm kinh nghiệm: 10 năm</div>
								<div class="desc">Bằng cấp chuyên môn: Phó giáo sư tiến sĩ chuyên khoa Nhi</div>
								<div class="wrap-btn">
									<div class="btn-left"><a class="btn btn-primary blue" href=""><span>Xem chi
												tiết</span></a></div>
									<div class="btn-left medical-check-banner"><a class="btn btn-booking"
											href=""><span>Đặt
												lịch khám</span><em class="mdi mdi-calendar"></em></a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

</xsl:stylesheet>

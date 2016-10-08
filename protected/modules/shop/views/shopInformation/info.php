<?php $model=ShopInformation::model()->findByPk(1); ?>

<div class="links-social inner-top-sm">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-5">
				<!-- ============================================================= CONTACT INFO ============================================================= -->
				<div class="contact-info">
					<div class="footer-logo">
						<div class="logo">
							<a href="/">

								<?php
									$logo = "";
									if (!$model->logo)
										$logo = Yii::app()->request->baseUrl . '/resources/assets/images/logo3.png';
									else
										$logo = Yii::app()->request->baseUrl . '/productimages/'. $model->logo;
								?>
								<img style="height: 90px;" src="<?php echo $logo?>" alt="">
							</a>
						</div><!-- /.logo -->

					</div><!-- /.footer-logo -->

					<div class="module-body m-t-20">
						<p class="about-us"> <?php echo $model->description;?></p>

						<div class="social-icons">

							<!--<a href="<?php /*echo $model->facebook; */?>" class='active'><i
									class="icon fa fa-facebook"></i></a>
							<a href="<?php /*echo $model->google_plus; */?>"><i class="icon fa fa-google-plus"></i></a>-->
							<?php
							$this->widget('application.extensions.SocialShareButton.SocialShareButton', array(
								'style'=>'horizontal',
								'networks' => array('facebook','googleplus'),
								'data_via'=>'', //twitter username (for twitter only, if exists else leave empty)
							));?>
						</div><!-- /.social-icons -->
					</div><!-- /.module-body -->

				</div><!-- /.contact-info -->
				<!-- ============================================================= CONTACT INFO : END ============================================================= -->
			</div><!-- /.col -->

			<div class="col-xs-12 col-sm-6 col-md-4">
				<!-- ============================================================= CONTACT TIMING============================================================= -->
				<div class="contact-timing">
					<div class="module-heading">
						<h4 class="module-title">THỜI GIAN LÀM VIỆC</h4>
					</div><!-- /.module-heading -->

					<div class="module-body outer-top-xs">
						<div class="table-responsive">
							<?php echo $model->working_time; ?>
						</div><!-- /.table-responsive -->
						<p class='contact-number'>Hot Line:<?php echo $model->hotline; ?></p>
					</div><!-- /.module-body -->
				</div><!-- /.contact-timing -->
				<!-- ============================================================= CONTACT TIMING : END ============================================================= -->
			</div><!-- /.col -->

			<div class="col-xs-12 col-sm-6 col-md-3">
				<!-- ============================================================= THÔNG TIN CỬA HÀNG============================================================= -->
				<div class="contact-THÔNG TIN CỬA HÀNG">
					<div class="module-heading">
						<h4 class="module-title">THÔNG TIN CỬA HÀNG</h4>
					</div><!-- /.module-heading -->

					<div class="module-body outer-top-xs">
						<ul class="toggle-footer" style="">
							<li class="media">
								<div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i>
                    </span>
								</div>
								<div class="media-body">
									<p><?php echo $model->address; ?></p>
								</div>
							</li>

							<li class="media">
								<div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
                    </span>
								</div>
								<div class="media-body">
									<p><?php echo $model->phone; ?></p>
								</div>
							</li>

							<li class="media">
								<div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                    </span>
								</div>
								<div class="media-body">
									<span><a href="#">Liên hệ <?php echo $model->email; ?></a></span><br>
									<span><a href="#">Kinh  doanh <?php echo $model->email_kinhdoanh; ?></a></span>
								</div>
							</li>

						</ul>
					</div><!-- /.module-body -->
				</div><!-- /.contact-timing -->
				<!-- ============================================================= THÔNG TIN CỬA HÀNG : END ============================================================= -->
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.container -->
</div><!-- /.links-social -->

<div class="footer-bottom inner-bottom-sm">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="module-heading outer-bottom-xs">
					<h4 class="module-title">Về vanphongphamminhtu.vn</h4>
				</div><!-- /.module-heading -->

				<div class="module-body">
					<ul class='list-unstyled'>
						<li><a href="/shop/pages/index">Giới thiệu vanphongphamminhtu.vn</a></li>
						<li><a href="/shop/jobs/list">Tuyển dụng</a></li>
						<li><a href="/shop/pages/view/id/2">Chính sách bảo mật</a></li>
						<li><a href="/shop/pages/view/id/3">Điều khoản sử dụng</a></li>
					</ul>
				</div><!-- /.module-body -->
			</div><!-- /.col -->
		</div>
	</div>
</div>

<div class="copyright-bar">
	<div class="container">
		<div class="col-xs-12 col-sm-6 no-padding">
			<div class="copyright">
				Copyright © 2016
				<a href="<?php echo Yii::app()->request->baseUrl; ?>">Văn phòng phẩm Minh Tú.</a>
				- All rights Reserved
			</div>
		</div>
		<div class="col-xs-12 col-sm-6 no-padding">

		</div>
	</div>
</div>

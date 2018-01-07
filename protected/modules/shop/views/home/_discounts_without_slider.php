<div class="product">
	<div class="product-micro">
		<div class="row product-micro-row">
			<div class="col col-xs-5">
				<div class="product-image">
					<div class="image">
						<?php
							$folder = Shop::module()->uploadImagesFolder;

							if(isset($data->images[0]) && $data->images[0]->filename)
								$path = Yii::app()->baseUrl. '/' . $folder . '/' . $data->images[0]->filename;
							else
								$path = Shop::register('no-pic.jpg');
						?>
						<a href="<?php echo Yii::app()->request->baseUrl . '/shop/products/view/id/' . $data->product_id; ?>">
							<img class='img-responsive'
								data-echo="<?php echo $path; ?>"
								src="<?php echo $path; ?>"
								alt="">
							<div class="zoom-overlay"></div>
						</a>
					</div><!-- /.image -->
					<div class="tag tag-micro hot">
						<span>hot</span>
					</div>


				</div><!-- /.product-image -->
			</div><!-- /.col -->
			<div class="col col-xs-7">
				<div class="product-info">
					<h3 class="name"><a href="#"><?php echo $data->title; ?></a></h3>
					<div class="rating rateit-small"></div>
					<div class="product-price">
								<span class="price">
									<?php echo Shop::priceFormat($data->price); ?>
								</span>

					</div><!-- /.product-price -->
					<div class="action"><a href="#" class="lnk btn btn-primary btn-add-cart" alt="<?php echo $data->product_id; ?>">Mua hàng</a></div>
				</div>
			</div><!-- /.col -->
		</div><!-- /.product-micro-row -->
	</div><!-- /.product-micro -->

</div>
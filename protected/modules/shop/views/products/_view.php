<?php /*
*/ ?><!--
<div class="view">
    <h3>
		<?php /*echo CHtml::link(CHtml::encode($data->title), array('products/view', 'id' => $data->product_id)); */ ?>
    </h3>

    <div class="product-overview-image">
          	<?php /*
		  	if($data->images){
		   		$this->renderPartial('/image/view', array('thumb' =>true, 'model' => $data->images[0]));
			}else {
				echo CHtml::image(Shop::register('no-pic.jpg'));
			}*/ ?>
	</div>

     <div class="product-overview-description">
        <p> <?php /*echo CHtml::encode($data->description); */ ?> </p>
        <p><strong> <?php /*echo Shop::priceFormat($data->price); */ ?></strong> <br />
        <p><?php /*echo Shop::pricingInfo(); */ ?></p>

        <p><?php /*echo CHtml::link(Shop::t('show product'), array('products/view', 'id' => $data->product_id), array('class' =>'show-product')); */ ?></p>
    </div>

    <div class="clear"></div>
</div>
<div class="view-bottom"></div>-->

<div class="col-sm-6 col-md-4">
    <div class="product">
        <div class="product-image">
            <div class="image">
                <a href="<?php echo Yii::app()->request->baseUrl . '/shop/products/view/id/' . $data->product_id; ?>">
                    <?php
                    if ($data->images) {
                        $this->renderPartial('/image/view', array('thumb' => true, 'model' => $data->images[0]));
                    } else {
                        echo CHtml::image(Shop::register('no-pic.jpg'), '', array('width' => '100%'));
                    } ?>
                </a>
            </div><!-- /.image -->
        </div><!-- /.product-image -->


        <div class="product-info text-left">
            <h3 class="name"><?php echo CHtml::link(CHtml::encode($data->title), array('products/view', 'id' => $data->product_id), array('class' => 'ellipses')); ?>
            </h3>
            <div class="rating rateit-small"></div>
            <div class="description"></div>

            <div class="product-price">
                    <span class="price">
                        <?php echo Shop::priceFormat($data->price); ?>
                    </span>
            </div><!-- /.product-price -->

        </div><!-- /.product-info -->
        <div class="cart clearfix animate-effect">
            <div class="action">
                <ul class="list-unstyled">
                    <li class="add-cart-button btn-group">
                        <button class="btn btn-primary icon btn-cart" data-toggle="dropdown" type="button">
                            <i class="fa fa-shopping-cart"></i>
                        </button>
                        <button class="btn btn-primary btn-add-cart" alt="<?php echo $data->product_id; ?>" type="button">Mua hàng</button>
                    </li>

                    <li class="lnk">
                        <a class="add-to-cart" href="/" title="Share FB">
                            <i class="icon fa fa-facebook"></i>
                        </a>
                    </li>
                    <li class="lnk">
                        <a class="add-to-cart" href="detail.html" title="Share Google Plus">
                            <i class="icon fa fa-google-plus"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div><!-- /.cart -->
    </div><!-- /.product -->
</div><!-- /.item -->
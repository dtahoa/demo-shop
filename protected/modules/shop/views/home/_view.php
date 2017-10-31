<div class="col-sm-6 col-md-4">
    <div class="product">
        <div class="product-image">
            <div class="image">
                <a href="<?php echo Yii::app()->request->baseUrl . '/shop/products/view/id/' . $data->product_id; ?>">

                </a>
            </div><!-- /.image -->
        </div><!-- /.product-image -->


        <div class="product-info text-left">
            <h3 class="name"><?php echo CHtml::link(CHtml::encode($data->title),
                    array('products/view', 'id' => $data->product_id),
                    array('class' => 'ellipses', 'style' => 'white-space: normal;')); ?>
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
                </ul>
            </div>
        </div><!-- /.cart -->
    </div><!-- /.product -->
</div><!-- /.item -->
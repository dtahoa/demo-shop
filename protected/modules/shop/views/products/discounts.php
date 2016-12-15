<div class="item">
    <div class="products special-product">
        <ul class="lightSlider">
            <?php
            $criteria = new CDbCriteria(array(
                'condition' => 'is_discount=1',
                'limit' => 7,
                'order' => 'title DESC'
            ));
            foreach (Products::model()->findAll($criteria) as $item) {
                $folder = Shop::module()->productImagesFolder;
                if (isset($item->images[0]) && $item->images[0]->filename) {
                    $path = Yii::app()->baseUrl . '/' . $folder . '/' . $item->images[0]->filename;
                } else {
                    $path = Shop::register('no-pic.jpg');
                }
                ?>
                <li data-thumb="<?php echo $path; ?>">
                    <a
                        href="<?php echo Yii::app()->request->baseUrl . '/shop/products/view/id/' . $item->product_id; ?>"
                        alt="<?php echo $item->title;?>">
                        <img style="width: 100%" src="<?php echo $path; ?>"/>
                    </a>
                </li>
                <?php
            }
            ?>
        </ul>
    </div>
</div>


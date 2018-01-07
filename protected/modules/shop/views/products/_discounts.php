<?php
$folder = Shop::module()->uploadImagesFolder;

if (isset($data->images[0]) && $data->images[0]->filename)
    $path = Yii::app()->baseUrl . '/' . $folder . '/' . $data->images[0]->filename;
else
    $path = Shop::register('no-pic.jpg');
?>
<li data-thumb="<?php echo $path; ?>">
    <!--<a href="<?php /*echo Yii::app()->request->baseUrl . '/shop/products/view/id/' . $data->product_id; */ ?>">

	</a>-->
    <img class="img-responsive" src="<?php echo $path; ?>"/>
</li>
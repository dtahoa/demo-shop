<?php
/* @var $this PagesController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Galery Váy Cưới',
);
?>

<div class="container album-container">
    <h2 class="cat-title" style="text-align: center">Váy cưới đẹp</h2>
    <div class="row">
        <div class="gal">
            <?php $this->widget('zii.widgets.CListView', array(
                'dataProvider'=>$dataProvider,
                'itemView'=>'_view',
                'summaryText'=>'',
                'template'=>'{items}{pager}',
            )); ?>
        </div>
    </div>
    <div class="social-media">
        <span>Chia sẻ:</span>
        <?php
        $this->widget('application.extensions.SocialShareButton.SocialShareButton', array(
            'style'=>'horizontal',
            'networks' => array('facebook','googleplus'),
            'data_via'=>'', //twitter username (for twitter only, if exists else leave empty)
        ));?>
    </div>
</div>

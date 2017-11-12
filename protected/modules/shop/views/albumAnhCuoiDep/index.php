<?php
/* @var $this PagesController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Album ảnh cưới đẹp',
);
?>

<div class="container album-container">
	<div class="row">
		<?php $this->widget('zii.widgets.CListView', array(
			'dataProvider'=>$dataProvider,
			'itemView'=>'_view',
			'summaryText'=>'',
			'template'=>'{pager}{items}{pager}',
		)); ?>
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
</div>

<?php
/* @var $this PagesController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Góc báo chí',
);
?>

<div class="container album-container">
    <div class="row" style="padding-top: 15px;">
		<?php $this->widget('zii.widgets.CListView', array(
			'dataProvider'=>$dataProvider,
			'itemView'=>'_view',
            'itemsCssClass'=>'items is-flex',
			'summaryText'=>'',
			'template'=>'{items}{pager}',
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

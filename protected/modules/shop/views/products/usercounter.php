<ul class="list-group">
	<li class="list-group-item">Số người đang truy cập: <span class="badge green"><?php echo Yii::app()->userCounter->getOnline(); ?></span></li>
	<li class="list-group-item">Hôm nay: <span class="badge green"><?php echo Yii::app()->userCounter->getToday(); ?></span></li>
	<li class="list-group-item">Hôm qua: <span class="badge green"><?php echo Yii::app()->userCounter->getYesterday(); ?></span></li>
	<li class="list-group-item">Tổng số lượt truy cập:: <span class="badge green"><?php echo Yii::app()->userCounter->getTotal(); ?></span></li>
</ul>
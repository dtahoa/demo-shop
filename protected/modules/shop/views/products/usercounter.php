<div class="table-responsive">
	<table class="table">
		<tbody>
		<tr>
			<td>Số người đang truy cập:</td>
			<td class="pull-right"><?php echo Yii::app()->userCounter->getOnline(); ?></td>
		</tr>
		<tr>
			<td>Hôm nay:</td>
			<td class="pull-right"><?php echo Yii::app()->userCounter->getToday(); ?></td>
		</tr>
		<tr>
			<td>Hôm qua:</td>
			<td class="pull-right"><?php echo Yii::app()->userCounter->getYesterday(); ?></td>
		</tr>
		<tr>
			<td>Tổng số lượt truy cập:</td>
			<td class="pull-right"><?php echo Yii::app()->userCounter->getTotal(); ?></td>
		</tr>
		</tbody>
	</table>
</div><!-- /.table-responsive -->
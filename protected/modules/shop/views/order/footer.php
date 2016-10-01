<?php $model=ShopInformation::model()->findByPk(1); ?>
<table align="left" width="100%" style="font-size:8px; font-family:Verdana, Arial, Helvetica, sans-serif;">
    <tr>
        <td width="33%" valign="top">
            <?php echo $model->name?><br>
            MST: 123/456/03326<br>
            Mã thông tin: DE1434434902

        </td>
        <td width="33%" valign="top">
            <?php echo $model->address?><br>
            E-Mail: <?php echo $model->email;?><br>
            Website: vanphongphaminhtu.com<br/>
            Tel: <?php echo $model->phone;?>
            Fax: <?php echo $model->fax;?> <br/>
        </td>
        <td width="33%" valign="top">
            <?php echo $model->address?><br>
            E-Mail: <?php echo $model->email;?><br>
            Website: vanphongphaminhtu.com<br/>
            Tel: <?php echo $model->phone;?>
            Fax: <?php echo $model->fax;?> <br/>
        </td>
    </tr>
</table>


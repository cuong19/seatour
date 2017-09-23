<?php
include_once 'view/_opentags.php';
?>
<?php
include_once 'view/_header.php';
?>
<div class="tourlist">

    <form action="index.php?page=order" method="POST">
        <input type="hidden" name="order_tour_id" value="<?php echo $tour_id ?>">
        <br>
        <input type="submit" value="Change your order" class="button">
    </form>

</div>
<?php
include_once 'view/_footer.php';
?>
<?php
include_once 'view/_closetags.php';
?>



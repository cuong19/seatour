<?php
include_once 'view/_opentags.php';
?>
<?php
include_once 'view/_header.php';
?>
<div class="tourlist">
    <div class="tourdetail">
        <?php
        echo("<img src=\"" . $details[0]["image_link"] . "\">");
        echo("<h2>" . $details[0]["name"] . "</h2>");
        echo("<h3>" . $details[0]["no_days"] . " day(s)</h3>");
        $formatted_price = number_format($details[0]["price"], 0, '.', ',');
        echo("<h3 class=\"price\">" . $formatted_price . " VND</h3>");
        ?>
        <form action="index.php?page=order" method="POST">
            <input type="hidden" name="order_tour_id" value="<?php echo $tour_id ?>">
            <input type="submit" value="Order this tour now" class="button">
        </form>
    </div>
    <br>
    <div class="content_message">Tour Schedule:</div>
    <ul>
        <?php
        foreach ($details[1] as $place) {
            echo "<li class=\"tourschedule\"><p>- Day " . $place["day_number"] . ", from " . $place["start_time"] . " to " . $place["stop_time"] . ":</p><p><b>" . $place["name"] . "</b></p><table><tr><td><img src=\"" . $place["image_link"] . "\"></td><td><p>" . $place["description"] . "</p></td></tr></table></li>";
        }
        ?>
    </ul>
</div>
<?php
include_once 'view/_footer.php';
?>
<?php
include_once 'view/_closetags.php';
?>

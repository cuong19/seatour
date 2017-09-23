<?php
include_once 'view/_opentags.php';
?>
<?php
include_once 'view/_header.php';
?>
<div class="tourlist">
    <ul>
        <?php
        //var_dump($tours);
        
        if (empty($tours)) {
            echo "<p>No result found!</p>";
        } else {
            foreach ($tours as $tour) {
                $formatted_price = number_format($tour->getPrice(), 0, '.', ',');
                echo '<li><a href="index.php?page=tourdetail&tour_id=' . $tour->getTour_id() . '"><img class="tourimage" src="' . $tour->getImage_link() . '" alt="Tour image"><br><b>' . $tour->getName() . '</b><br>' . $tour->getNo_days() . ' day(s)<br>' . $formatted_price . ' VND</a></li>';
            }
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
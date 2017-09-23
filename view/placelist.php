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
        if (empty($places)) {
            echo "<p>No result found!</p>";
        } else {
            foreach ($places as $place) {
                echo '<li class="place"><a href="index.php?page=tour&place_id=' . $place->getPlace_id() . '"><b>' . $place->getName() . '</b><br>' . $place->getAddress() . '<br><table><tr><td><img class="placeimage" src="' . $place->getImage() . '" alt="Tour image"></td><td><p><i>' . $place->getDescription() . '</p></i></td></tr></table></a></li>';
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

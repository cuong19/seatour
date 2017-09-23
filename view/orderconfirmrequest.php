<?php
include_once 'view/_opentags.php';
?>
<?php
include_once 'view/_header.php';
?>
<div class="tourlist">
    <?php
    echo "<p>Tour code #" . $details[0]["tour_id"] . ": " . $details[0]["name"] . "</p>";
    echo "<p>Date: " . date('F d, Y', strtotime($tourdatelist[0]["date"])) . "</p>";
    $formatted_price = number_format($details[0]["price"], 0, '.', ',');
    echo "<p>Price: " . $formatted_price . " VND/1 Person</p>";
    echo "<p>Number of customer: " . $nocustomer . " person(s)</p>";
    $formatted_price = number_format($total_price, 0, '.', ',');
    echo "<p class=\"price\">Total Price: " . $formatted_price . " VND</p>";
    echo "<h3>Your contact:</h3>";
    echo "<p>Name: " . $contact_name . "</p>";
    echo "<p>Phone: " . $contact_phone . "</p>";
    echo "<p>Email: " . $contact_email . "</p>";
    echo "<p>Address: " . $contact_address . "</p>";
    ?>

    <table>
        <tr>
            <td>
                <form action="index.php?page=order" method="POST">
                    <input type="hidden" name="order_tour_id" value="<?php echo $tour_id ?>">
                    <input type="submit" value="Change your Order" class="button">
                </form>
            </td>
            <td>
                <form action="index.php?page=order_requested" method="POST">
                    <input type="hidden" name="tour_date_id" value="<?php echo $tourdatelist[0]["tour_date_id"]; ?>">
                    <input type="hidden" name="user_id" value="<?php echo ""; ?>">
                    <input type="hidden" name="nocustomer" value="<?php echo $nocustomer; ?>">
                    <input type="hidden" name="price" value="<?php echo $total_price; ?>">
                    <input type="hidden" name="contact_name" value="<?php echo $contact_name; ?>">
                    <input type="hidden" name="contact_email" value="<?php echo $contact_email; ?>">
                    <input type="hidden" name="contact_phone" value="<?php echo $contact_phone; ?>">
                    <input type="hidden" name="contact_address" value="<?php echo $contact_address; ?>">
                    <input type="submit" value="Confirmed. Request your Order" class="button">
                </form>
            </td>
        </tr>
    </table>

</div>
<?php
include_once 'view/_footer.php';
?>
<?php
include_once 'view/_closetags.php';
?>



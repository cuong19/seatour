<?php
include_once 'view/_opentags.php';
?>
<?php
include_once 'view/_header.php';
?>
<div class="tourlist">
    <?php
    echo("<h2> Tour #" . $tour_id . ": " . $details[0]["name"] . "</h2>");
    $formatted_price = number_format($details[0]["price"], 0, '.', ',');
    echo("<h3 class=\"price\">" . $formatted_price . " VND/1 Person</h3>");
//    var_dump($tourdatelist);
    ?>
    <form method="POST" action="index.php?page=order_confirm">
        <table class="tableform">
            <tr>
                <td>
                    Choose Date:
                </td>
                <td>
                    <select name="tour_date_id">
                        <?php
                        foreach ($tourdatelist as $tourdate) {
                            echo "<option value=\"" . $tourdate["tour_date_id"] . "\">" . date('F d, Y', strtotime($tourdate["date"])) . "</option>";
                        }
                        ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Number or customers: 
                </td>
                <td>
                    <input type="number" min="1" value="1" name="nocustomer">
                </td>
            </tr>

            <tr><td><h3>Your contact information:</h3></td><td> </td></tr>

            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <input type="text" name="contact_name">
                </td>
            </tr>
            <tr>
                <td>
                    Email:
                </td>
                <td>
                    <input type="text" name="contact_email">
                </td>
            </tr>
            <tr>
                <td>
                    Phone:
                </td>
                <td>
                    <input type="text" name="contact_phone">
                </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td>
                    <input type="text" name="contact_address">
                </td>
            </tr>
        </table>
        <br>
        <input type="submit" value="Send Order" class="button">
    </form>
</div>
<?php
include_once 'view/_footer.php';
?>
<?php
include_once 'view/_closetags.php';
?>

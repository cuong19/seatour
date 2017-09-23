<?php
$search = filter_input(INPUT_GET, 'search', FILTER_SANITIZE_SPECIAL_CHARS);
$page = filter_input(INPUT_GET, 'page', FILTER_SANITIZE_SPECIAL_CHARS);
?>

<div id="header">
    <table>
        <tr>
            <td class="logo" rowspan="2">
                <a href="index.php"><img class="logo" src="view/image/logo.png" alt="Logo"><br>SEA Tour</a>
            </td>
            <td class="navigationbar">
                <ul class="navigation">
                    <li <?php if ($page === NULL || $page === "tour") {
    echo "class=\"active\"";
} ?>> <a href="index.php?page=tour">Tours</a> </li>
                    <li <?php if ($page === "attraction") {
    echo "class=\"active\"";
} ?>> <a href="index.php?page=attraction">Attractions</a> </li>
                    <li <?php if ($page === "restaurant") {
    echo "class=\"active\"";
} ?>> <a href="index.php?page=restaurant">Restaurants</a> </li>
                    <li <?php if ($page === "resort") {
    echo "class=\"active\"";
} ?>> <a href="index.php?page=resort">Resorts</a> </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <form method="get" id="searchbar">
                    <input type="text" name="search" placeholder="<?php if ($search === NULL) {
    echo "Search";
} else {
    echo $search;
} ?>">
                    <button type="submit"></button>
                </form>
            </td>
        </tr>
    </table>
</div>
<div id="container">
    <div class="content_message"><?php echo $content_message ?></div>

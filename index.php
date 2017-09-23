<?php

include_once("controller/Controller.php");
$controller = new Controller();
$page = filter_input(INPUT_GET, 'page', FILTER_SANITIZE_SPECIAL_CHARS);
$content_message = "Message:";

if (!isset($page)) {
    $controller->getTourList();
} else if ($page === "tour") {
    $place_id = filter_input(INPUT_GET, 'place_id', FILTER_SANITIZE_SPECIAL_CHARS);
    if (!isset($place_id)) {
        $controller->getTourList();
    } else {
        $controller->getTourListFromPlace($place_id);
    }
} else if ($page === "attraction") {
    $controller->getPlaceList($page);
} else if ($page === "restaurant") {
    $controller->getPlaceList($page);
} else if ($page === "resort") {
    $controller->getPlaceList($page);
} else if ($page === "tourdetail") {
    $tour_id = filter_input(INPUT_GET, 'tour_id', FILTER_SANITIZE_SPECIAL_CHARS);
    if (!empty($tour_id)) {
        $controller->getTourDetail($tour_id);
    } else {
        include 'view/notfound.php';
    }
} else if ($page === "order") {
    $order_tour_id = filter_input(INPUT_POST, 'order_tour_id', FILTER_SANITIZE_SPECIAL_CHARS);
    if (isset($order_tour_id)) {
        $controller->createOrderPage($order_tour_id);
    } else {
        include 'view/notfound.php';
    }
} else if ($page === "order_confirm") {
    $tour_date_id = filter_input(INPUT_POST, 'tour_date_id', FILTER_SANITIZE_SPECIAL_CHARS);
    $nocustomer = filter_input(INPUT_POST, 'nocustomer', FILTER_SANITIZE_SPECIAL_CHARS);
    $contact_name = filter_input(INPUT_POST, 'contact_name', FILTER_SANITIZE_SPECIAL_CHARS);
    $contact_phone = filter_input(INPUT_POST, 'contact_phone', FILTER_SANITIZE_SPECIAL_CHARS);
    $contact_email = filter_input(INPUT_POST, 'contact_email', FILTER_SANITIZE_SPECIAL_CHARS);
    $contact_address = filter_input(INPUT_POST, 'contact_address', FILTER_SANITIZE_SPECIAL_CHARS);
    if (isset($tour_date_id) && isset($nocustomer) && isset($contact_name) && isset($contact_phone) && isset($contact_email) && isset($contact_address)) {
        if (!empty($tour_date_id) && !empty($nocustomer) && !empty($contact_name) && !empty($contact_phone) && !empty($contact_email) && !empty($contact_address)) {
            $result = $controller->checkOrderAvailability($tour_date_id, $nocustomer);
            if ($result[0]) {
                $controller->requestConfirmOrder($tour_date_id, $nocustomer, $contact_name, $contact_email, $contact_phone, $contact_address);
            } else {
                $controller->requestModifyingOrder($result[1], $result[2]);
            }
        } else {
            $content_message = "Please enter all the information!";
            $tour_id = $controller->checkOrderAvailability($tour_date_id, 1)[2];
            include 'view/ordermodifyrequest.php';
        }
    } else {
        include 'view/notfound.php';
    }
} else if ($page === "order_requested") {
    $tour_date_id = filter_input(INPUT_POST, 'tour_date_id', FILTER_SANITIZE_SPECIAL_CHARS);
    $user_id = filter_input(INPUT_POST, 'user_id', FILTER_SANITIZE_SPECIAL_CHARS);
    $nocustomer = filter_input(INPUT_POST, 'nocustomer', FILTER_SANITIZE_SPECIAL_CHARS);
    $price = filter_input(INPUT_POST, 'price', FILTER_SANITIZE_SPECIAL_CHARS);
    $contact_name = filter_input(INPUT_POST, 'contact_name', FILTER_SANITIZE_SPECIAL_CHARS);
    $contact_phone = filter_input(INPUT_POST, 'contact_phone', FILTER_SANITIZE_SPECIAL_CHARS);
    $contact_email = filter_input(INPUT_POST, 'contact_email', FILTER_SANITIZE_SPECIAL_CHARS);
    $contact_address = filter_input(INPUT_POST, 'contact_address', FILTER_SANITIZE_SPECIAL_CHARS);
    if (isset($tour_date_id) && isset($nocustomer) && isset($contact_name) && isset($contact_phone) && isset($contact_email) && isset($contact_address)) {
        $controller->sendOrderRequest($tour_date_id, $user_id, $nocustomer, $price, $contact_name, $contact_phone, $contact_email, $contact_address);
    } else {
        include 'view/notfound.php';
    }
} else {
    include 'view/notfound.php';
}

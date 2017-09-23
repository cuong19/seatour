<?php

include_once("model/Model.php");

class Controller {

    public $model;

    public function __construct() {
        $this->model = new Model();
    }

    public function getTourList() {
        $search = filter_input(INPUT_GET, 'search', FILTER_SANITIZE_SPECIAL_CHARS);
        if ($search != NULL) {
            $tours = $this->model->getTourListFromName($search);
            $content_message = "List of tours match your search:";
            include 'view/tourlist.php';
        } else {
            $tours = $this->model->getTourList();
            $content_message = "List of tours available:";
            include 'view/tourlist.php';
        }
    }

    public function getTourListFromPlace($place_id) {
        $tours = $this->model->getTourListFromPlace($place_id);
        $content_message = "List of tours with the place:";
        include 'view/tourlist.php';
    }

    public function getPlaceList($placetype) {
        $search = filter_input(INPUT_GET, 'search', FILTER_SANITIZE_SPECIAL_CHARS);
        if ($search != NULL) {
            $places = $this->model->getPlaceListFromName($search);
            include 'view/placelist.php';
        } else {
            $content_message = "List of " . $placetype . "s:";
            $places = $this->model->getPlaceList($placetype);
            if (!empty($places[0])) {
                include 'view/placelist.php';
            } else {
                include 'view/notfound.php';
            }
        }
    }

    public function getTourDetail($tour_id) {
        $content_message = "Tour detail:";
        $details = $this->model->getTourDetail($tour_id);
        if (!empty($details[0])) {
            include 'view/tourdetail.php';
        } else {
            include 'view/notfound.php';
        }
    }

    public function createOrderPage($tour_id) {
        $content_message = "Your have requested order for:";
        $details = $this->model->getTourDetail($tour_id);
        $tourdatelist = $this->model->getTourDateList($tour_id);
        include 'view/orderpage.php';
    }

    public function checkOrderAvailability($tour_date_id, $nocustomer) {
        $content_message = "Order request result:";
        $tourdatelist = $this->model->getTourDateAvailability($tour_date_id);

        $available = false;
        if ($tourdatelist[0]["slot_available"] >= $nocustomer) {
            $available = true;
        }

        $result_array[] = $available;
        $result_array[] = $tourdatelist[0]["slot_available"];
        $result_array[] = $tourdatelist[0]["tour_id"];

        return $result_array;
    }

    public function requestModifyingOrder($slot_available, $tour_id) {
        $content_message = "There are not enough slots for your order!<br>This tour can offer only " . $slot_available . " more slots.";
        include 'view/ordermodifyrequest.php';
    }

    public function requestConfirmOrder($tour_date_id, $nocustomer, $contact_name, $contact_email, $contact_phone, $contact_address) {
        $content_message = "Please confirm your order!";
        $tourdatelist = $this->model->getTourDateAvailability($tour_date_id);
        $tour_id = $tourdatelist[0]["tour_id"];
        $details = $this->model->getTourDetail($tour_id);

        $total_price = $nocustomer * $details[0]["price"];

        $tourdatelist = $this->model->getTourDateAvailability($tour_date_id);


        include 'view/orderconfirmrequest.php';
    }

    public function sendOrderRequest($tour_date_id, $user_id, $nocustomer, $price, $contact_name, $contact_phone, $contact_email, $contact_address) {

        $this->model->placeOrder($tour_date_id, $user_id, $nocustomer, $price, $contact_name, $contact_phone, $contact_email, $contact_address);
        $content_message = "Your order have been successfully requested!";
        include 'view/ordersuccess.php';
    }

}

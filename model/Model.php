<?php

include_once("model/Tour.php");
include_once("model/Place.php");
include_once 'database/Database.php';

class Model {

    public function getTourList() {
        $tours = Database::getInstance()->getTourList();
        $tourlist = [];
        foreach ($tours as $tour) {
            $tourlist[] = new Tour($tour["tour_id"], $tour["name"], $tour["no_days"], $tour["price"], $tour['image_link']);
        }
        return $tourlist;
    }

    public function getTourListFromName($search) {
        $tours = Database::getInstance()->getTourListFromName($search);
        $tourlist = [];
        foreach ($tours as $tour) {
            $tourlist[] = new Tour($tour["tour_id"], $tour["name"], $tour["no_days"], $tour["price"], $tour['image_link']);
        }
        return $tourlist;
    }

    public function getTourListFromPlace($place_id) {
        $tours = Database::getInstance()->getTourListFromPlace($place_id);
        $tourlist = [];
        foreach ($tours as $tour) {
            $tourlist[] = new Tour($tour["tour_id"], $tour["name"], $tour["no_days"], $tour["price"], $tour['image_link']);
        }
        return $tourlist;
    }

    public function getPlaceList($placetype) {
        $places = Database::getInstance()->getPlaceList($placetype);
        foreach ($places as $place) {
            $placelist[] = new Place($place['place_id'], $place['name'], $place['address'], $place['description'], $place['image_link']);
        }
        return $placelist;
    }

    public function getTourDetail($tour_id) {
        $tourdetail = Database::getInstance()->getTourDetail($tour_id);
        return $tourdetail;
    }

    public function getTourDateList($tour_id) {
        $tourdatelist = Database::getInstance()->getTourDateList($tour_id);
        return $tourdatelist;
    }

    public function getTourDateAvailability($tour_date_id) {
        $tourdatelist = Database::getInstance()->getTourDateAvailability($tour_date_id);
        return $tourdatelist;
    }

    public function placeOrder($tour_date_id, $user_id, $nocustomer, $price, $contact_name, $contact_phone, $contact_email, $contact_address) {
        Database::getInstance()->placeOrder($tour_date_id, $user_id, $nocustomer, $price, $contact_name, $contact_phone, $contact_email, $contact_address);
    }

}

?>

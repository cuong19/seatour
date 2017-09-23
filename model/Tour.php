<?php

class Tour {

    private $tour_id;
    private $name;
    private $no_days;
    private $price;
    private $image_link;

    function __construct($tour_id, $name, $no_days, $price, $image_link) {
        $this->tour_id = $tour_id;
        $this->name = $name;
        $this->no_days = $no_days;
        $this->price = $price;
        $this->image_link = $image_link;
    }

    function getTour_id() {
        return $this->tour_id;
    }

    function getName() {
        return $this->name;
    }

    function getNo_days() {
        return $this->no_days;
    }

    function getPrice() {
        return $this->price;
    }

    function setTour_id($tour_id) {
        $this->tour_id = $tour_id;
    }

    function setName($name) {
        $this->name = $name;
    }

    function setNo_days($no_days) {
        $this->no_days = $no_days;
    }

    function setPrice($price) {
        $this->price = $price;
    }

    function getImage_link() {
        return $this->image_link;
    }

    function setImage_link($image_link) {
        $this->image_link = $image_link;
    }

}

?>

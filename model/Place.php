<?php

class Place {

    private $place_id;
    private $name;
    private $address;
    private $description;
    private $image;

    function __construct($place_id, $name, $address, $description, $image) {
        $this->place_id = $place_id;
        $this->name = $name;
        $this->address = $address;
        $this->description = $description;
        $this->image = $image;
    }

    function getPlace_id() {
        return $this->place_id;
    }

    function getName() {
        return $this->name;
    }

    function getAddress() {
        return $this->address;
    }

    function getDescription() {
        return $this->description;
    }

    function getImage() {
        return $this->image;
    }

    function setPlace_id($place_id) {
        $this->place_id = $place_id;
    }

    function setName($name) {
        $this->name = $name;
    }

    function setAddress($address) {
        $this->address = $address;
    }

    function setDescription($description) {
        $this->description = $description;
    }

    function setImage($image) {
        $this->image = $image;
    }

}

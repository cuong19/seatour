<?php

class Database {

    private $conn;

    public static function getInstance() {
        static $instance = null;
        if ($instance === null) {
            $instance = new Database();
        }
        return $instance;
    }

    function connect() {
        include 'database/config.php';
        $this->conn = mysqli_connect($servername, $username, $password, $database);

        if (!$this->conn) {
            die('Connect Error (' . mysqli_connect_errno() . ') '
                    . mysqli_connect_error());
        } else {
            if (!$this->conn->set_charset("utf8")) {
                printf("Error loading character set utf8: %s\n", $this->conn->error);
            }
        }
    }

    function disconnect() {
        mysqli_close($this->conn);
        //echo "Connection closed!<br>";
    }

    function getTourList() {

        self::getInstance()->connect();
        if ($this->conn) {
            $stmt = $this->conn->prepare("SELECT tour.tour_id,tour.name,tour.no_days,tour.price,place_image.image_link FROM tour JOIN place_in_tour ON tour.tour_id=place_in_tour.tour_id JOIN place ON place_in_tour.place_id = place.place_id JOIN place_image ON place.place_id = place_image.place_id WHERE place.type=\"attraction\" GROUP BY tour.tour_id");
            $stmt->execute();
            $row = [];
            $stmt->bind_result($row['tour_id'], $row['name'], $row['no_days'], $row['price'], $row['image_link']);
            $result_array = [];
            while ($stmt->fetch()) {
                $result_array[] = array("tour_id" => $row['tour_id'], "name" => $row['name'], "no_days" => $row['no_days'], "price" => $row['price'], "image_link" => $row['image_link']);
            }
            $stmt->close();
        }
        self::getInstance()->disconnect();
        return $result_array;
    }

    function getTourListFromName($search) {

        self::getInstance()->connect();
        if ($this->conn) {
            $stmt = $this->conn->prepare("SELECT tour.tour_id,tour.name,tour.no_days,tour.price,place_image.image_link FROM tour JOIN place_in_tour ON tour.tour_id=place_in_tour.tour_id JOIN place ON place_in_tour.place_id = place.place_id JOIN place_image ON place.place_id = place_image.place_id WHERE place.type=\"attraction\" AND tour.name LIKE ? GROUP BY tour.tour_id");
            $searchlike = "%{$search}%";
            $stmt->bind_param("s", $searchlike);
            $stmt->execute();
            $row = [];
            $stmt->bind_result($row['tour_id'], $row['name'], $row['no_days'], $row['price'], $row['image_link']);
            $result_array = [];
            while ($stmt->fetch()) {
                $result_array[] = array("tour_id" => $row['tour_id'], "name" => $row['name'], "no_days" => $row['no_days'], "price" => $row['price'], "image_link" => $row['image_link']);
            }
            $stmt->close();
        }
        self::getInstance()->disconnect();
        return $result_array;
    }

    function getTourDetail($tour_id) {

        self::getInstance()->connect();
        if ($this->conn) {
            $stmt = $this->conn->prepare("SELECT tour.tour_id,tour.name,tour.no_days,tour.price,place_image.image_link FROM tour JOIN place_in_tour ON tour.tour_id=place_in_tour.tour_id JOIN place ON place_in_tour.place_id = place.place_id JOIN place_image ON place.place_id = place_image.place_id WHERE place.type=\"attraction\" AND tour.tour_id = ? GROUP BY tour.tour_id");
            $stmt->bind_param("i", $tour_id);
            $stmt->execute();
            $row = [];
            $stmt->bind_result($row['tour_id'], $row['name'], $row['no_days'], $row['price'], $row['image_link']);
            $result_array = [];
            while ($stmt->fetch()) {
                $result_array[] = array("tour_id" => $row['tour_id'], "name" => $row['name'], "no_days" => $row['no_days'], "price" => $row['price'], "image_link" => $row['image_link']);
            }
            $stmt->close();

            $stmt = $this->conn->prepare("SELECT place_in_tour.day_number, place_in_tour.order_number, place_in_tour.start_time, place_in_tour.stop_time, place_in_tour.description, place.name, place.address, place.type, place_image.image_link FROM place_in_tour JOIN place ON place_in_tour.place_id = place.place_id JOIN place_image ON place.place_id = place_image.place_id WHERE place_in_tour.tour_id = ? GROUP BY place_in_tour.order_number ORDER BY place_in_tour.order_number");
            $stmt->bind_param("i", $tour_id);
            $stmt->execute();
            $row = [];
            $stmt->bind_result($row['day_number'], $row['order_number'], $row['start_time'], $row['stop_time'], $row['description'], $row['name'], $row['address'], $row['type'], $row['image_link']);
            $places_array = [];
            while ($stmt->fetch()) {
                $places_array[] = array("day_number" => $row['day_number'], "order_number" => $row['order_number'], "start_time" => $row['start_time'], "stop_time" => $row['stop_time'], "description" => $row['description'], "name" => $row['name'], "address" => $row['address'], "type" => $row['type'], "image_link" => $row['image_link']);
            }
            $stmt->close();
            $result_array[] = $places_array;
        }
        self::getInstance()->disconnect();
        return $result_array;
    }

    function getTourListFromPlace($place_id) {

        self::getInstance()->connect();
        if ($this->conn) {
            $stmt = $this->conn->prepare("SELECT tour.tour_id,tour.name,tour.no_days,tour.price,place_image.image_link FROM tour JOIN place_in_tour ON tour.tour_id=place_in_tour.tour_id JOIN place ON place_in_tour.place_id = place.place_id JOIN place_image ON place.place_id = place_image.place_id WHERE place.place_id = ? GROUP BY tour.tour_id");
            $stmt->bind_param("i", $place_id);
            $stmt->execute();
            $row = [];
            $stmt->bind_result($row['tour_id'], $row['name'], $row['no_days'], $row['price'], $row['image_link']);
            $result_array = [];
            while ($stmt->fetch()) {
                $result_array[] = array("tour_id" => $row['tour_id'], "name" => $row['name'], "no_days" => $row['no_days'], "price" => $row['price'], "image_link" => $row['image_link']);
            }
            $stmt->close();
        }
        self::getInstance()->disconnect();
        return $result_array;
    }

    function getPlaceList($placetype) {

        self::getInstance()->connect();
        if ($this->conn) {
            $stmt = $this->conn->prepare("SELECT place.place_id, place.name, place.address, place.description, place_image.image_link FROM place JOIN place_image ON place.place_id = place_image.place_id WHERE place.type=\"" . $placetype . "\" GROUP BY place.place_id");
            $stmt->execute();
            $row = [];
            $stmt->bind_result($row['place_id'], $row['name'], $row['address'], $row['description'], $row['image_link']);
            $result_array = [];
            while ($stmt->fetch()) {
                $result_array[] = array("place_id" => $row['place_id'], "name" => $row['name'], "address" => $row['address'], "description" => $row['description'], "image_link" => $row['image_link']);
            }
            $stmt->close();
        }
        self::getInstance()->disconnect();
        return $result_array;
    }

    function getTourDateList($tour_id) {
        self::getInstance()->connect();
        if ($this->conn) {
            $stmt = $this->conn->prepare("SELECT * FROM tour_date WHERE tour_id = ?");
            $stmt->bind_param("i", $tour_id);
            $stmt->execute();
            $row = [];
            $stmt->bind_result($row['tour_date_id'], $row['tour_id'], $row['date'], $row['slot_available']);
            $result_array = [];
            while ($stmt->fetch()) {
                $result_array[] = array("tour_date_id" => $row['tour_date_id'], "tour_id" => $row['tour_id'], "date" => $row['date'], "slot_available" => $row['slot_available']);
            }
            $stmt->close();
        }
        self::getInstance()->disconnect();
        return $result_array;
    }

    function getTourDateAvailability($tour_date_id) {
        self::getInstance()->connect();
        if ($this->conn) {
            $stmt = $this->conn->prepare("SELECT * FROM tour_date WHERE tour_date_id = ?");
            $stmt->bind_param("i", $tour_date_id);
            $stmt->execute();
            $row = [];
            $stmt->bind_result($row['tour_date_id'], $row['tour_id'], $row['date'], $row['slot_available']);
            $result_array = [];
            while ($stmt->fetch()) {
                $result_array[] = array("tour_date_id" => $row['tour_date_id'], "tour_id" => $row['tour_id'], "date" => $row['date'], "slot_available" => $row['slot_available']);
            }
            $stmt->close();
        }
        self::getInstance()->disconnect();
        return $result_array;
    }

    function placeOrder($tour_date_id, $user_id, $nocustomer, $price, $contact_name, $contact_phone, $contact_email, $contact_address) {
        self::getInstance()->connect();
        if ($this->conn) {
            $stmt = $this->conn->prepare("INSERT INTO `tour_order` (`order_id`, `tour_date_id`, `user_id`, `no_tourists`, `price`, `contact_name`, `contact_email`, `contact_phone`, `contact_address`, `description`, `status`, `date_ordered`) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?, '', 'Pending', CURRENT_TIMESTAMP);");
            $stmt->bind_param("iiiissss", $tour_date_id, $user_id, $nocustomer, $price, $contact_name, $contact_email, $contact_phone, $contact_address);
            $stmt->execute();
            $stmt->close();
        }
        self::getInstance()->disconnect();
    }

}

<?php

include 'configDB.php';
/* start Database connection */
if (isset($_POST['action']) && !empty($_POST['action'])) {
    $action = $_POST['action'];
    switch ($action) {
        case 'getProducts':
            getAllProduct($DBconnect);
            break;
            /*case 'getProd' :
            getProducts($DBconnect);
            break;*/
    }
}

function getAllProduct($DBconnect)
{
    // storing  request (ie, get/post) global array to a variable
    $requestData = $_REQUEST;
    $columns = array(
        // datatable column index  => database column name
        0 => 'id',
        1 => 'product_name',
        2 => 'price',
        3 => 'minStock'
    );
    // getting total number records without any search
    $sql = "SELECT id, product_name, price, minStock ";
    $sql .= " FROM product";
    $query = mysqli_query($DBconnect, $sql) or die("MysqlError lors de la recupertion des produits 1 : allproducts");
    $totalData = mysqli_num_rows($query);
    $totalFiltered = $totalData;  // when there is no search parameter then total number rows = total number filtered rows.
    $sql = "SELECT id, product_name, price, minStock ";
    $sql .= " FROM product WHERE 1=1";
    if (!empty($requestData['search']['value'])) {   // if there is a search parameter, $requestData['search']['value'] contains search parameter
        $sql .= " AND ( id LIKE '" . $requestData['search']['value'] . "%' ";
        $sql .= " OR product_name LIKE '" . $requestData['search']['value'] . "%' ";
        $sql .= " OR price LIKE '" . $requestData['search']['value'] . "%' ";
        $sql .= " OR minStock LIKE '" . $requestData['search']['value'] . "%' )";
    }
    $query = mysqli_query($DBconnect, $sql) or die("MysqlError lors de la recupertion des produits 2 : allproducts");
    $totalFiltered = mysqli_num_rows($query); // when there is a search parameter then we have to modify total number filtered rows as per search result.
    $sql .= " ORDER BY " . $columns[$requestData['order'][0]['column']] . "   " . $requestData['order'][0]['dir'] . "   LIMIT " . $requestData['start'] . " ," . $requestData['length'] . "   ";
    /* $requestData['order'][0]['column'] contains colmun index, $requestData['order'][0]['dir'] contains order such as asc/desc , $requestData['start'] contains start row number ,$requestData['length'] contains limit length. */
    $query = mysqli_query($DBconnect, $sql) or die("MysqlError lors de la recupertion des produits 3 : allproducts");
    $data = array();
    while ($row = mysqli_fetch_array($query)) {  // preparing an array
        $nestedData = array();
        $nestedData[] = $row["id"];
        $nestedData[] = $row["product_name"];
        $nestedData[] = $row["price"];
        $nestedData[] = $row["minStock"];

        $data[] = $nestedData;
    }
    $json_data = array(
        "draw" => intval($requestData['draw']),   // for every request/draw by clientside , they send a number as a parameter, when they recieve a response/data they first check the draw number, so we are sending same number in draw.
        "recordsTotal" => intval($totalData),  // total number of records
        "recordsFiltered" => intval($totalFiltered), // total number of records after searching, if there is no searching then totalFiltered = totalData
        "data" => $data   // total data array
    );
    echo json_encode($json_data);  // send data as json format
}

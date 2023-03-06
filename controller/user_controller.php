<?php 
    include "../model/user_model.php";
    $obj = new user_model();
    switch ($_GET['operations']){
        case 'insert' :
            $obj->add_org_data();
            break;
        case 'list' :
            $obj->list_org_data();
            break;
        default:
            echo "Invalid";
    }
?>
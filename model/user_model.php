<?php
    class user_model {
        function __construct()
        {
            $this->conn = new mysqli("localhost", "root", "", "phpInternship");
            
           
            
        }
        function add_org_data()
        {
            if($this->conn->connect_errno == 0)
            {
                $data = json_decode(file_get_contents('php://input'), true);
                $qur = "INSERT INTO org (id,org_ref,company_ref,order_number,order_date,order_customer_code,order_item_code,order_batch_name,order_batch_expiry,order_qty,order_rate,order_amount,order_disc_percent,order_disc_amount,order_total_amount) VALUES(".$data['id']." , ".$data['org_ref'].", '".$data['company_ref']."' , '".$data['order_number']."' , '".$data['order_date']."' , '".$data['order_customer_code']."' , '".$data['order_item_code']."' , '".$data['order_batch_name']."' , '".$data['order_batch_expiry']."' , ".$data['order_qty'].",".$data['order_rate'].",".$data['order_amount'].",".$data['order_disc_percent'].",".$data['order_disc_amount'].",".$data['order_total_amount'].");";
                if (!$this->conn->query($qur))
                {
                    echo "Some error while insertion";
                }
            }
            else
            {
                echo "Connection Failed";
            }
        }
        function list_org_data()
        {
            $qur = "SELECT * FROM org";
            $result = $this->conn->query($qur);
            if(!$result)
            {
                echo " Some error while displaying";

            }
            else
            {
                
                $unformattedData = mysqli_fetch_all($result,MYSQLI_ASSOC);
                echo <<<tab
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet">   
                <h1 style="text-align: center;font-family: 'Poppins', sans-serif;">Tabular representation of data</h1>
                <table border='1' style = "margin-left: auto;margin-right: auto;font-family: Arial, Helvetica, sans-serif;border-collapse: collapse;padding: 8px;"><thead><tr>;
                tab;
                foreach($unformattedData[0] as $head => $value){
                    echo "<th style = 'padding: 12px;text-align: left;background-color: #0454aa;color: white;'>$head</th>";
                }
                echo "</tr></thead><tr >";
                foreach( $unformattedData as $js )
                {
                    foreach($js as $key => $value)
                    {
                        echo "<td style = 'padding:5px';>$value</td>";
                    }
                    echo "</tr>";

                }
                echo "</table>";


            }
        }
    }


?>

# Documentation

## Folder Structure

![Screenshot 2023-03-07 at 00.09.21.png](img/Screenshot_2023-03-07_at_00.09.21.png)

### Controller

- It contains user_controller.php
- The code inside user_controller works based on the requested url
- It contains two cases one for inserting data and one for showing data
- Based on these two cases the model file is invoked and corresponding business logic is executed

### Model

- It contains the logic for the requested URL
- For example
    - when the url is [`http://192.168.64.2/PHP-Internship/controller/user_controller.php?operations=insert`](http://192.168.64.2/PHP-Internship/controller/user_controller.php?operations=insert)
    - It will execute the corresponding model logic that is `add_org_data()`
    - JSON tested image
        
        ![Screenshot 2023-03-07 at 00.30.16.png](img/Screenshot_2023-03-07_at_00.30.16.png)
        

### Frontend

![Screenshot 2023-03-07 at 00.18.14.png](img/Screenshot_2023-03-07_at_00.18.14.png)

![Screenshot 2023-03-07 at 00.30.45.png](img/Screenshot_2023-03-07_at_00.30.45.png)
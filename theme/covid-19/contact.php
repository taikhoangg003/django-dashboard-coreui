<?php

    $name = $_POST['name'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $company = $_POST['company'];
	$messages = $_POST['messages'];
 
	mail('rajibraj3d@gmail.com', $name, $email, $address, $company);
?>
    <a href="index.html" style="dispaly: block; text-align: center;"><span>Go To Home</span></a>
</div>


<?php  
 $connect = mysqli_connect("localhost", "root", "Kul0nuwun", "autopost");
 if(isset($_POST["postTitle"]) && isset($_POST["postDescription"]) && isset($_POST["postEmail"]))
 {
  $post_title = mysqli_real_escape_string($connect, $_POST["postTitle"]);
  $post_description = mysqli_real_escape_string($connect, $_POST["postDescription"]);
  $post_email = mysqli_real_escape_string($connect, $_POST["postEmail"]);
  if($_POST["postId"] != '')  
  {  
    //update post  
    echo "Sukses simpan";
    // die();
    // $sql = "UPDATE tbl_post SET post_title = '".$post_title."', post_description = '".$post_description."',email = '".$email."' WHERE post_id = '".$_POST["postId"]."'";  
    // mysqli_query($connect, $sql);  
  }  
  else  
  {  
    //insert post  
    $sql = "INSERT INTO tbl_post(post_title, post_description, email, post_status) VALUES ('".$post_title."', '".$post_description."','".$post_email."', '1')";  
    mysqli_query($connect, $sql);  
    echo mysqli_insert_id($connect);  
  }
 }  
 ?>

<html>  
    <head>  
         <meta name="viewport" content="initial-scale=1.0, user-scalable=no">  
         <meta charset="utf-8">  
         <title>Testing Autosimpan</title>  
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
    </head>  
    <body>  
         <div class="container">  
              <br />  
              <h2 align="center">Testing auto</h2>  
              <br />  

              <?php 
              $val1 = "Eko";
              $val2 = "Enak mungkin";
              $val3 = "Enak@gmail.com";
              ?>
              <div class="form-group">  
                   <label>Enter Post Title</label>  
                   <input type="text" value="<?php echo $val1?>" name="post_title" id="post_title" class="form-control" />  
              </div>  
              <div class="form-group">  
                   <label>Enter Post Description</label>  
                   <input type="text" value="<?php echo $val2?>" name="post_description" id="post_description" class="form-control" />  
              </div>
              <div class="form-group">  
                   <label>Email</label>  
                   <input type="text" value="<?php echo $val3?>" name="email" id="email" class="form-control" />  
              </div>
  <div class="form-group">
   <button type="button" name="publish" class="btn btn-info">Publish</button>
  </div>
              <div class="form-group">  
                   <input type="text" name="post_id" id="post_id" />  
                   <div id="autoSave"></div>  
              </div>  
         </div>  
    </body>  
</html>  
<script>  
$(document).ready(function(){  
    function autoSave()  
    {  
         var post_title = $('#post_title').val();  
         var post_description = $('#post_description').val();  
         var post_email = $('#email').val();  
         var post_id = $('#post_id').val();  
         if(post_title != '' && post_description != '' && post_email != '')  
         {  
              $.ajax({  
                   url:"save_antri.php",  
                   method:"POST",  
                   data:{postTitle:post_title, postDescription:post_description, postEmail:post_email, postId:post_id},  
                   dataType:"text",  
                   success:function(data)  
                   {  
                        if(data != '')  
                        {  
                             $('#post_id').val(data);  
                        }  
                        $('#autoSave').text("Post save as draft");  
                        setInterval(function(){  
                             $('#autoSave').text('');  
                        }, 5000);  
                   }  
              });  
         }            
    }  
    setInterval(function(){   
         autoSave();   
         }, 10000);  
});  
</script>

<?php 
$page = $_SERVER['PHP_SELF'];
 $sec = "60";
 header("Refresh: $sec; url=$page");
 echo "Watch the page reload itself in 60 second!";
?>
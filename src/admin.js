$(document).ready(function(){
    $("#user_m").click(function(){
       
        $.ajax({
            url:"controller.php",
            type:"POST",
            data:{
                user_m:'user_m'
            },
            success: function(result){
             $(".side_right_bar").css("display","none");
             $("#return_data").html(result);
            
             $(".admin_options").css("background-color","bisque");
             $("#user_m").css("background-color","lightgrey");
            }
    
        })
    })

    $("#blog_m").click(function(){
        
        $.ajax({
            url:"controller.php",
            type:"POST",
            data:{
                blog_m:'blog_m'
            },
            success: function(result){
             $(".side_right_bar").css("display","none");
             $("#return_data").html(result);
          
             $(".admin_options").css("background-color","bisque");
             $("#blog_m").css("background-color","lightgrey");
            }
    
        })
    })




   


})

function changeSelect(id,value)
{
    $.ajax({
            url:"controller.php",
            method:"POST",
            data:{
              id:id,
            value:value
            },
            success:function(data){
               
               
               
            }
        })


}

$("select[name='status']").change(function(){
    //$select=$(this).val();
    alert();
    // $orderidtoedit=$(this).attr('id');
    // $.ajax({
    //     url:"adminpanel.php",
    //     method:"POST",
    //     data:{
    //        $orderidtoedit:$orderidtoedit,
    //        $select:$select
    //     },
    //     success:function(data){
           
           
           
    //     }
    // });
   });
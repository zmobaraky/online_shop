$(document).ready(function() {
    var colors = [];
 $('.filter_box input[type=\'checkbox\']').change(function () {
    if ($(this).is(':checked'))   colors.push($(this).val());
    else  colors.pop($(this).val());
    //console.log(colors);
 })

    $('.filter_box input[type=button]').on('click',function () {
        var dataString = {};
        dataString['color']=colors;
        dataString['name']=$('.filter_box #p_name').val();
        var jsonString = JSON.stringify(dataString);
        //console.log(jsonString);

        $.ajax({
            type: "POST",
            url: "process.php",
            data: {data:jsonString,controller:'products',action:'filter'},
            cache: false,
            success: function(data){
                $('#p_list').html(data);
            },
        });

    })

    $('.p_box input[type=button]').on('click',function () {
        var dataString = {};
        dataString['p_id']=$(this).attr('rel');
        var jsonString = JSON.stringify(dataString);
        //console.log(jsonString);

        $.ajax({
            type: "POST",
            url: "process.php",
            data: {data:jsonString,controller:'basket',action:'addtobasket'},
            cache: false,
            success: function(data){
alert(data);
            },
        });

    })

})
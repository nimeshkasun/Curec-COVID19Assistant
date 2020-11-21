$(document).ready(function(){
    var cid = document.getElementById('Company1').value;
    //console.log(cid);

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test11='+ 5 
    }).done(function(sup){
        //console.log(modules);
        sup = JSON.parse(sup);
        //console.log(sup);
        $('#suptbl').empty();
        $('#suptbl').append('<thead><tr><th>Name</th><th>Email</th><th>Contact No</th><th>Address</th><th>City</th><th>Status</th><th class="text-center">Actions</th></tr></thead><tbody>');
        sup.forEach(function(sup){
            var bgg = badge2(sup.status,sup.ID);
            //console.log (bgg);
            $('#suptbl').append('<tr><td>' + sup.name + '</td><td><a href="#">' + sup.email + '</a></td><td>' + sup.mobile + '</td><td>' + sup.address + '</td><td>' + sup.city + '</td><td>' + bgg + '</td><td class="text-center"><div class="list-icons"><div class="dropdown"> <a href="#" class="list-icons-item" data-toggle="dropdown"><i class="icon-menu9"></i></a><div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="icon-pen6"></i> Edit</a><a href="#" class="dropdown-item"><i class="icon-bin2"></i> Delete</a></div></div></div></td></tr>');   
        })
        $('#suptbl').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test2='+ 5 
    }).done(function(sup){
        //console.log(modules);
        sup = JSON.parse(sup);
        //console.log(sup);
        $('#vltbl').empty();
        $('#vltbl').append('<thead><tr><th>Name</th><th>Email</th><th>Contact No</th><th>Vehical No</th><th>Driving Lic No</th><th>Address</th><th>City</th><th>Status</th><th class="text-center">Actions</th></tr></thead><tbody>');
        sup.forEach(function(sup){
            $('#vltbl').append('<tr><td>' + sup.name + '</td><td><a href="#">' + sup.email + '</a></td><td>' + sup.mobile + '</td><td>' + sup.vehicle + '</td><td>' + sup.licence + '</td><td>' + sup.address + '</td><td>' + sup.city + '</td><td><span class="badge badge-success">Active</span></td><td class="text-center"><div class="list-icons"><div class="dropdown"> <a href="#" class="list-icons-item" data-toggle="dropdown"><i class="icon-menu9"></i></a><div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="icon-pen6"></i> Edit</a><a href="#" class="dropdown-item"><i class="icon-bin2"></i> Delete</a></div></div></div></td></tr>');   
        })
        $('#vltbl').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test3='+ 5 
    }).done(function(sup){
        //console.log(modules);
        sup = JSON.parse(sup);
        //console.log(sup);
        $('#comtbl').empty();
        $('#comtbl').append('<thead><tr><th>Name</th><th>Email</th><th>Contact No</th><th>Address</th><th>City</th><th>Status</th><th class="text-center">Actions</th></tr></thead><tbody>');
        sup.forEach(function(sup){
            $('#comtbl').append('<tr><td>' + sup.Name + '</td><td><a href="#">' + sup.email + '</a></td><td>' + sup.mobile + '</td><td>' + sup.address + '</td><td>' + sup.city + '</td><td><span class="badge badge-success">Active</span></td><td class="text-center"><div class="list-icons"><div class="dropdown"> <a href="#" class="list-icons-item" data-toggle="dropdown"><i class="icon-menu9"></i></a><div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="icon-pen6"></i> Edit</a><a href="#" class="dropdown-item"><i class="icon-bin2"></i> Delete</a></div></div></div></td></tr>');   
        })
        $('#comtbl').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test4='+ 5 
    }).done(function(sup){
        //console.log(modules);
        sup = JSON.parse(sup);
        //console.log(sup);
        $('#emptbl').empty();
        $('#emptbl').append('<thead><tr><th>Name</th><th>Email</th><th>Contact No</th><th>Vehical No</th><th>Driving Lic No</th><th>Address</th><th>City</th><th>Company</th><th>Status</th><th class="text-center">Actions</th></tr></thead><tbody>');
        sup.forEach(function(sup){
            $('#emptbl').append('<tr><td>' + sup.name + '</td><td><a href="#">' + sup.email + '</a></td><td>' + sup.mobile + '</td><td>' + sup.vehicle + '</td><td>' + sup.licence + '</td><td>' + sup.address + '</td><td>' + sup.city + '</td><td>' + sup.cname + '</td><td><span class="badge badge-success">Active</span></td><td class="text-center"><div class="list-icons"><div class="dropdown"> <a href="#" class="list-icons-item" data-toggle="dropdown"><i class="icon-menu9"></i></a><div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="icon-pen6"></i> Edit</a><a href="#" class="dropdown-item"><i class="icon-bin2"></i> Delete</a></div></div></div></td></tr>');   
        })
        $('#emptbl').append('</tbody>');
    })
    
    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test5='+ cid
    }).done(function(sup){
        //console.log(modules);
        sup = JSON.parse(sup);
        //console.log(sup);
        $('#emptbl2').empty();
        $('#emptbl2').append('<thead><tr><th>Name</th><th>Email</th><th>Contact No</th><th>Vehical No</th><th>Driving Lic No</th><th>Address</th><th>City</th><th>Status</th><th class="text-center">Actions</th></tr></thead><tbody>');
        sup.forEach(function(sup){
            $('#emptbl2').append('<tr><td>' + sup.name + '</td><td><a href="#">' + sup.email + '</a></td><td>' + sup.mobile + '</td><td>' + sup.vehicle + '</td><td>' + sup.licence + '</td><td>' + sup.address + '</td><td>' + sup.city + '</td><td><span class="badge badge-success">Active</span></td><td class="text-center"><div class="list-icons"><div class="dropdown"> <a href="#" class="list-icons-item" data-toggle="dropdown"><i class="icon-menu9"></i></a><div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="icon-pen6"></i> Edit</a><a href="#" class="dropdown-item"><i class="icon-bin2"></i> Delete</a></div></div></div></td></tr>');   
        })
        $('#emptbl2').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test6='+ 5
    }).done(function(trans){
        //console.log(modules);
        trans = JSON.parse(trans);
        //console.log(trans);
        $('#datatbl1').empty();
        $('#datatbl1').append('<thead><tr><th>Date</th><th>Time</th><th>Supplier</th><th>Collector</th><th>Company / Volunteer</th><th>Status</th><th>Points</th></tr></thead><tbody>');
        trans.forEach(function(trans){
            var bgg = badge1(trans.states);
            $('#datatbl1').append('<tr><td>' + trans.date + '</td><td><a href="#">' + trans.time + '</a></td><td>' + trans.sup + '</td><td>' + trans.col + '</td><td>' + trans.com + '</td><td>' + bgg + '</td><td>' + trans.points + '</td></tr>');   
        })
        $('#datatbl1').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test7='+ cid
    }).done(function(trans){
        //console.log(modules);
        trans = JSON.parse(trans);
        //console.log(trans);
        $('#datatbl2').empty();
        $('#datatbl2').append('<thead><tr><th>Date</th><th>Time</th><th>Supplier</th><th>Plastic</th><th>Metal</th><th>Paper</th><th>Status</th><th>Points</th></tr></thead><tbody>');
        trans.forEach(function(trans){
            var bgg = badge1(trans.states);
            $('#datatbl2').append('<tr><td>' + trans.date + '</td><td><a href="#">' + trans.time + '</a></td><td>' + trans.sup + '</td><td>' + trans.plastic + '</td><td>' + trans.metal + '</td><td>' + trans.paper + '</td><td>' + bgg + '</td><td>' + trans.points + '</td></tr>');   
        })
        $('#datatbl2').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test7='+ cid
    }).done(function(trans){
        //console.log(modules);
        trans = JSON.parse(trans);
        //console.log(trans);
        $('#datatbl3').empty();
        $('#datatbl3').append('<thead><tr><th>Date</th><th>Time</th><th>Supplier</th><th>Plastic</th><th>Metal</th><th>Paper</th><th>Status</th><th>Points</th></tr></thead><tbody>');
        trans.forEach(function(trans){
            var bgg = badge1(trans.states);
            $('#datatbl3').append('<tr><td>' + trans.date + '</td><td><a href="#">' + trans.time + '</a></td><td>' + trans.sup + '</td><td>' + trans.plastic + '</td><td>' + trans.metal + '</td><td>' + trans.paper + '</td><td>' + bgg + '</td><td>' + trans.points + '</td></tr>');   
        })
        $('#datatbl3').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test8='+ cid
    }).done(function(trans){
        //console.log(modules);
        trans = JSON.parse(trans);
        //console.log(trans);
        $('#datatbl4').empty();
        $('#datatbl4').append('<thead><tr><th>Date</th><th>Time</th><th>Supplier</th><th>Collector</th><th>Plastic</th><th>Metal</th><th>Paper</th><th>Status</th><th>Points</th></tr></thead><tbody>');
        trans.forEach(function(trans){
            var bgg = badge1(trans.states);
            $('#datatbl4').append('<tr><td>' + trans.date + '</td><td><a href="#">' + trans.time + '</a></td><td>' + trans.sup + '</td><td>' + trans.col + '</td><td>' + trans.plastic + '</td><td>' + trans.metal + '</td><td>' + trans.paper + '</td><td>' + bgg + '</td><td>' + trans.points + '</td></tr>');   
        })
        $('#datatbl4').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test9='+ cid
    }).done(function(trans){
        //console.log(modules);
        trans = JSON.parse(trans);
        //console.log(trans);
        $('#datatbl5').empty();
        $('#datatbl5').append('<thead><tr><th>Date</th><th>Time</th><th>Collector</th><th>Company / Volunteer</th><th>Plastic</th><th>Metal</th><th>Paper</th><th>Status</th><th>Points</th></tr></thead><tbody>');
        trans.forEach(function(trans){
            var bgg = badge1(trans.states);
            $('#datatbl5').append('<tr><td>' + trans.date + '</td><td><a href="#">' + trans.time + '</a></td><td>' + trans.col + '</td><td>' + trans.com + '</td><td>' + trans.plastic + '</td><td>' + trans.metal + '</td><td>' + trans.paper + '</td><td>' + bgg + '</td><td>' + trans.points + '</td></tr>');   
        })
        $('#datatbl5').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test14='+ cid
    }).done(function(trans){
        //console.log(modules);
        trans = JSON.parse(trans);
        //console.log(trans);
        $('#datatbl6').empty();
        $('#datatbl6').append('<thead style="text-align: center"><tr><th style="text-align: left">Collector</th><th style="text-align: left">Company</th><th>Plastic</th><th>Metal</th><th>Paper</th><th>Total Points</th><th>Remain</th><th>Status</th></tr></thead><tbody>');
        trans.forEach(function(trans){
            var bgg = badge3(trans.payment_status);
            $('#datatbl6').append('<tr style="text-align: center"><td style="text-align: left">' + trans.col + '</td><td style="text-align: left">' + trans.com + '</td><td>' + trans.totplastic + '</td><td>' + trans.totmetal + '</td><td>' + trans.totpaper + '</td><td>' + trans.totpoints + '</td><td>' + trans.points + '</td><td>' + bgg + '</td></tr>');   
        })
        $('#datatbl6').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test15='+ cid
    }).done(function(trans){
        //console.log(modules);
        trans = JSON.parse(trans);
        //console.log(trans);
        $('#datatbl7').empty();
        $('#datatbl7').append('<thead style="text-align: center"><tr><th style="text-align: left">Supplier</th><th style="text-align: left">Collector</th><th>Plastic</th><th>Metal</th><th>Paper</th><th>Total Points</th><th>Remain</th><th>Status</th></tr></thead><tbody>');
        trans.forEach(function(trans){
            var bgg = badge3(trans.payment_status);
            $('#datatbl7').append('<tr style="text-align: center"><td style="text-align: left">' + trans.sup + '</td><td style="text-align: left">' + trans.col + '</td><td>' + trans.totplastic + '</td><td>' + trans.totmetal + '</td><td>' + trans.totpaper + '</td><td>' + trans.totpoints + '</td><td>' + trans.points + '</td><td>' + bgg + '</td></tr>');   
        })
        $('#datatbl7').append('</tbody>');
    })

    $.ajax({
        url: 'PHP/data.php',
        method: 'post',
        data: 'test16='+ 5
    }).done(function(trans){
        //console.log(modules);
        trans = JSON.parse(trans);
        console.log(trans);
        $('#datatbl8').empty();
        $('#datatbl8').append('<thead style="text-align: center"><tr><th style="text-align: left">Supplier</th><th style="text-align: left">Collector</th><th style="text-align: left">Company</th><th>Plastic</th><th>Metal</th><th>Paper</th><th>Total Points</th><th>Remain</th><th>Status</th></tr></thead><tbody>');
        trans.forEach(function(trans){
            var bgg = badge3(trans.payment_status);
            $('#datatbl8').append('<tr style="text-align: center"><td style="text-align: left">' + trans.sup + '</td><td style="text-align: left">' + trans.col + '</td><td style="text-align: left">' + trans.com + '</td><td>' + trans.totplastic + '</td><td>' + trans.totmetal + '</td><td>' + trans.totpaper + '</td><td>' + trans.totpoints + '</td><td>' + trans.points + '</td><td>' + bgg + '</td></tr>');   
        })
        $('#datatbl8').append('</tbody>');
    })

    //badge-success bg-blue
    function badge(sts){
        var bg;
        if(sts==0){
            bg = "<span class='badge bg-blue'>Pending</span>";
        }else if(sts==1){
            bg = "<span class='badge badge-success'>Active</span>";
        }else if(sts==2){
            bg = "<span class='badge badge-success'>Active</span>";
        } 
        return bg;
    }

    function badge1(sts){
        var bg;
        if(sts==1){
            bg = "<span class='badge bg-blue'>Collecting</span>";
        }else if(sts==2){
            bg = "<span class='badge badge-success'>Collected</span>";
        }else if(sts==3){
            bg = "<span class='badge badge-success'>Active</span>";
        } 
        return bg;
    }

    function badge2(sts,vlv){
        var bg;
        if(sts==0){
            bg = "<button onclick='myFunction(this.value)' class='badge bg-blue' value=" + vlv + ">Pending</button>";
        }else if(sts==1){
            bg = "<span class='badge badge-success'>Active</span>";
        }else if(sts==2){
            bg = "<span class='badge badge-success'>Active</span>";
        } 
        return bg;
    }

    function badge3(sts){
        var bg;
        if(sts==0){
            bg = "<span class='badge bg-danger'>Not Collected</span>";
        }else if(sts==1){
            bg = "<span class='badge badge-success'>Collected</span>";
        }else if(sts==2){
            bg = "<span class='badge badge-success'>Active</span>";
        } 
        return bg;
    }

    

});

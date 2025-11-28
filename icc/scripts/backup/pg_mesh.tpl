template : pg_mesh_top { 
layer : METAL8 { 
 direction : horizontal 
 width : 5 
 spacing : 30 
 number : 
 pitch : 41 
 offset_start : boundary # user can also specify coordinate as {x y} 
 offset_type : edge # user can also specify centerline 
 offset : 
 trim_strap : true 
} 
layer : METAL7 {
direction : vertical 
 width : 5 
 spacing : 30 
 number : 
 pitch : 41 
 offset_start : boundary # user can also specify coordinate as {x y} 
 offset_type : edge # user can also specify centerline 
 offset : 
 trim_strap : true 
} 
advanced_rule : off { 
} 
}
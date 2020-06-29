<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
    function updateValue(element,column,id){
        var value = element.innerText
        $.ajax({
            url:'editableList.php',
            type: 'post',
            data:{
                value: value,
                column: column,
                id: id
            },
            success:function(php_result){
				console.log(php_result);
				
            }
            
        })
    }

    $(document).ready(function() {
        $.fn.dataTable.ext.errMode = 'none';

  var table = $('#ceremoniesTable').DataTable({
  });

  $('a.showHideColumn').on('click', function(e) {
    e.preventDefault();

    // Get the column API object
    var column = table.column($(this).attr('data-columnindex'));

    // Toggle the visibility
    column.visible(!column.visible());
  });
});
</script> 

<!-- Add show/hide column -->
<style> 
	.ShowHideColumn {
			cursor: pointer;
			color:blue;
	}

</style> 
<!-- Add show/hide column -->
<?php
  $nav_selected = "LIST";
  $left_buttons = "NO";
  $left_selected = "";
  
require 'functions.php';
require 'db_configuration.php';

$query = "SELECT list_movies.*, people.director, people.producer, people.music_director, people.lead_actor, people.lead_actress, keywords_list.keyword_list, mulit_media.movie_poster
          FROM list_movies 
          INNER JOIN people
            ON list_movies.movie_id = people.movie_id
          INNER JOIN (SELECT keywords.*,
			      GROUP_CONCAT(keyword SEPARATOR ', ') AS keyword_list
			      FROM keywords GROUP BY movie_id) AS keywords_list
            ON list_movies.movie_id = keywords_list.movie_id
          LEFT JOIN mulit_media
            ON list_movies.movie_id = mulit_media.movie_id";
//list
$GLOBALS['data'] = mysqli_query($db, $query);
// $GLOBALS['movie_id'] = mysqli_query($db, $query);
// $GLOBALS['native_name'] = mysqli_query($db, $query);
// $GLOBALS['english_name'] = mysqli_query($db, $query);
// $GLOBALS['year'] = mysqli_query($db, $query);
// $GLOBALS['director'] = mysqli_query($db, $query);
// $GLOBALS['producer'] = mysqli_query($db, $query);
// $GLOBALS['lead_actor'] = mysqli_query($db, $query);
// $GLOBALS['lead_actress'] = mysqli_query($db, $query);
// $GLOBALS['keyword_list'] = mysqli_query($db, $query);
// $GLOBALS['movie_poster'] = mysqli_query($db, $query);
  include("./nav.php");
  
?>

<?php include("./footer.php"); ?>

<?php $page_title = 'Dishes list'; ?>
<?php 
    $page="list.php";
    //verifyLogin($page);
?>

<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<style>
    #title {
        text-align: center;
        color: darkgoldenrod;
    }
    thead input {
        width: 100%;
    }
    .thumbnailSize{
        height: 100px;
        width: 100px;
        transition:transform 0.25s ease;
    }
    .thumbnailSize:hover {
        -webkit-transform:scale(3.5);
        transform:scale(3.5);
    }
</style>

<!-- Page Content -->
<br><br>
<div class="container-fluid">
<?php
        if(isset($_GET['createDishes'])){
            if($_GET["createDishes"] == "Success"){
                echo '<br><h3>Success! Your dish has been added!</h3>';
            }
        }

        if(isset($_GET['dishUpdated'])){
            if($_GET["dishUpdated"] == "Success"){
                echo '<br><h3>Success! Your dish has been modified!</h3>';
            }
        }

        if(isset($_GET['dishDeleted'])){
            if($_GET["dishDeleted"] == "Success"){
                echo '<br><h3>Success! Your dish has been deleted!</h3>';
            }
        }

    ?>
   
   
    <h2 id="title">Movies List</h2><br>    
    <div id="customerTableView">
	
        <button><a class="btn btn-sm" href="createDish.php">Create a Movie</a></button>
        <table class="display" id="ceremoniesTable" style="width:100%">
	
            <div class="table responsive">
                <thead>
                <tr>
                    <th>Movie ID</th>
                    <th>Native Name</th>
                    <th>English Name</th>
                    <th>Year</th>
                    <th>Director</th>
                    <th>Producer</th>
                    <th>Lead Actor</th>
                    <th>Lead Actress</th>
                    <th>Key Words</th>                
                    <th>Poster</th>
                    <th>Modify</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
				
					<!-- Add show/hide column -->	
	<div style="padding:5px; padding-left:0px">
		<b>Show/Hide Columns:  </b>
		<a class="showHideColumn" data-columnindex="0">Movie ID</a> -
		<a class="showHideColumn" data-columnindex="1">Native Name</a> -
		<a class="showHideColumn" data-columnindex="2">English Name</a> -
		<a class="showHideColumn" data-columnindex="3">Year</a> -
		<a class="showHideColumn" data-columnindex="4">Director</a> -
		<a class="showHideColumn" data-columnindex="5">Producer</a> -
        <a class="showHideColumn" data-columnindex="6">Lead Actor</a> -
		<a class="showHideColumn" data-columnindex="7">Lead Actress</a> -
		<a class="showHideColumn" data-columnindex="8">Key Words</a> -
		<a class="showHideColumn" data-columnindex="9">Poster</a>
	</div>
	<!-- Add show/hide column -->	
    
                <?php
                while($row = $data->fetch_assoc()) {
                    $Movie_ID = $row["movie_id"];
                    $Native_Name = $row["native_name"];
                    $English_Name = $row["english_name"];
                    $Year = $row["year"];
                    $Director = $row["director"];
                    $Producer = $row["producer"];
                    $Lead_Actor = $row["lead_actor"];
                    $Lead_Actress = $row["lead_actress"];
                    $Key_Words = $row["keyword_list"];
                    $Poster = $row["movie_poster"];
                
                    if(isset($_SESSION['role'])) { //logged in, allow in cell editing
                        ?>
                        <tr>
                    <td><?php echo $Movie_ID; ?></td>   
                    <td> <div contenteditable="true" onBlur="updateValue(this,'Native Name','<?php echo $Movie_ID; ?>')"><?php echo $Native_Name; ?></div></span> </td>


                    <td><div contenteditable="true" onBlur="updateValue(this,'English Name','<?php echo $Movie_ID; ?>')"><?php echo $English_Name; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Year','<?php echo $Movie_ID; ?>')"><?php echo $Year; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Director','<?php echo $Movie_ID; ?>')"><?php echo $Director; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Producer','<?php echo $Movie_ID; ?>')"><?php echo $Producer; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Lead Actor','<?php echo $Movie_ID; ?>')"><?php echo $Lead_Actor; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Lead Actress','<?php echo $Movie_ID; ?>')"><?php echo $Lead_Actress; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Key Words','<?php echo $Movie_ID; ?>')"><?php echo $Key_Words; ?></div></span> </td>
                    <?php echo '<td><img src="images/'.$row["movie_poster"].'" style="width:100px;height:120px;">' ?>
                    <?php echo '<td><a class="btn btn-warning btn-sm" href="modifyDish.php?id='.$row["movie_id"].'">Modify</a></td>' ?>
                    <?php echo '<td><a class="btn btn-danger btn-sm" href="deleteDish.php?id='.$row["movie_id"].'">Delete</a></td>' ?>
                </tr>

                        <?php
                    }else{//not logged in, not allowed to do in cell editing
                        ?>
                        <tr>
                    <td><?php echo $Movie_ID; ?></td>
                    <td><div><?php echo $Native_Name; ?></div></span> </td>
                    <td><div><?php echo $English_Name; ?></div></span> </td>
                    <td><div><?php echo $Year; ?></div></span> </td>
                    <td><div><?php echo $Director; ?></div></span> </td>
                    <td><div><?php echo $Producer; ?></div></span> </td>
                    <td><div><?php echo $Lead_Actor; ?></div></span> </td>
                    <td><div><?php echo $Lead_Actress; ?></div></span> </td>
                    <td><div><?php echo $Key_Words; ?></div></span> </td>
                    <?php echo '<td><img src="images/'.$row["movie_poster"].'" style="width:100px;height:120px;">' ?>
                    <?php echo '<td><a class="btn btn-warning btn-sm" href="modifyDish.php?id='.$row["movie_id"].'">Modify</a></td>' ?>
                    <?php echo '<td><a class="btn btn-danger btn-sm" href="deleteDish.php?id='.$row["movie_id"].'">Delete</a></td>' ?>
                </tr>

                        <?php
                    }
                }//end while
                ?>

                </tbody>
            </div>
        </table>
    </div>
</div>

<!-- /.container -->
<!-- Footer -->
<footer class="page-footer text-center">
   
</footer>

<!--JQuery-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 

<!--Data Table-->
<script type="text/javascript" charset="utf8"
        src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>

<script type="text/javascript" language="javascript">
    $(document).ready( function () {
        
        $('#ceremoniesTable').DataTable( {
            dom: 'lfrtBip',
            buttons: [
                'copy', 'excel', 'csv', 'pdf'
                
            ] }
        );
        

        $('#ceremoniesTable thead tr').clone(true).appendTo( '#ceremoniesTable thead' );
        $('#ceremoniesTable thead tr:eq(1) th').each( function (i) {
            var title = $(this).text();
            $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    
            $( 'input', this ).on( 'keyup change', function () {
                if ( table.column(i).search() !== this.value ) {
                    table
                        .column(i)
                        .search( this.value )
                        .draw();
                }
            } );
        } );
    
        var table = $('#ceremoniesTable').DataTable( {
            orderCellsTop: true,
            fixedHeader: true,
            retrieve: true
        } );
        
        
    } );

    
	//add visible coloumn


</script>
</body>
</html>

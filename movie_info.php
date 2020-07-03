<html>

<style>
.head {
  font-family: "Times New Roman";
  color: darkgoldenrod;
  text-align: center;
}

.title {
  font-family: "Times New Roman";
  color: rgb(0,200,55);
  font-size: 1.5rem;
}

.words{
  font-family: "Times New Roman";
}

.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}

.image {
    height: 300px;
    padding: 8px 8px 8px 8px;
}
</style>

<body>
<div class="container">
<?php
$left_buttons = "NO";
include_once 'db_configuration.php';

if (isset($_GET['fav_status'])) {

  $fav_status = mysqli_real_escape_string($db, $_GET['fav_status']);
  if ($fav_status == "COOKIE_NOT_FOUND")
  {
    echo "Cookie Not Found. Using the system's default";
  }
  if ($fav_status == "DRESS_NOT_FOUND")
  {
    echo "Dress Not Found. Using the system's default";
  }
}

$query = "SELECT movies.*, movie_data.language, movie_data.country, movie_data.genre, movie_data.plot, people_list.screen_name, people_list.role, _
          people_list.image_name, keywords_list.keyword_list, trivia_list.trivia_cat, movie_media.m_link_type, movie_media.m_link
          FROM movies
	          INNER JOIN movie_data
    	      ON movies.movie_id = movie_data.movie_id
	
            INNER JOIN (SELECT movie_people.movie_id, people.screen_name, movie_people.role, people.image_name
                        FROM movie_people
                          LEFT JOIN people
                          ON movie_people.people_id = people.people_id) AS people_list
            ON movies.movie_id = people_list.movie_id

            INNER JOIN (SELECT movie_keywords.*,
              GROUP_CONCAT(keyword SEPARATOR ', ') AS keyword_list
              FROM movie_keywords GROUP BY movie_id) AS keywords_list
            ON movies.movie_id = keywords_list.movie_id
        
	          INNER JOIN (SELECT movie_trivia.*,
              GROUP_CONCAT(trivia SEPARATOR ', ') AS trivia_cat
              FROM movie_trivia GROUP BY movie_id) AS trivia_list
            ON movies.movie_id = trivia_list.movie_id
        
            INNER JOIN movie_media
            ON movies.movie_id = movie_media.movie_id";
            
//list
$GLOBALS['data'] = mysqli_query($db, $query);
// $GLOBALS['movie_id'] = mysqli_query($db, $query);
// $GLOBALS['native_name'] = mysqli_query($db, $query);
// $GLOBALS['english_name'] = mysqli_query($db, $query);
// $GLOBALS['year_made'] = mysqli_query($db, $query);
// $GLOBALS['genre'] = mysqli_query($db, $query);
// $GLOBALS['plot'] = mysqli_query($db, $query);
// $GLOBALS['screen_name'] = mysqli_query($db, $query);
// $GLOBALS['role'] = mysqli_query($db, $query);
// $GLOBALS['image_name'] = mysqli_query($db, $query);
// $GLOBALS['keyword_list'] = mysqli_query($db, $query);
// $GLOBALS['trivia_cat'] = mysqli_query($db, $query);
// $GLOBALS['m_link_type'] = mysqli_query($db, $query);
// $GLOBALS['m_link'] = mysqli_query($db, $query);
  include("./nav.php");

if (isset($_GET['movie_id'])) {

    $id = mysqli_real_escape_string($db, $_GET['id']);
    $sql = "SELECT * FROM `data` WHERE movie_id = " . $id;
    $GLOBALS['row_data'] = mysqli_query($db, $sql);
} 
else if(isset($_GET['native_name'])) {

    $name = mysqli_real_escape_string($db, $_GET['native_name']);
    $sql = "SELECT * FROM `data` WHERE native_name = '" . $name ."'";
    $GLOBALS['row_data'] = mysqli_query($db, $sql);
}

//if ($row_data->num_rows > 0) {
    // fetch row_data from $_Globals
    //while($row = $row_data->fetch_assoc()) {
      //print( '<h2 class= "head">'.$row["native_name"]. '</h2>');
      //echo("<image class = 'image' src = images/".$row["m_link"]. "></image>");    
      //print( '<h3 class= "title"> Plot: </h3><p class= "words" >'.$row["plot"]. '</p>
              //<h3 class= "title"> Trivia? </h3><p class= "words">' .$row["trivia_cat"]. '</p>
              //<h3 class= "title"> Genre: </h3><p class= "words">' .$row["genre"]. '</p>
              //<h3 class= "title"> Cast: </h3><p class= "words">' .$row["screen_name"]. '</p>
              //<h3 class= "title"> Key Words: </h3><p class= "words">' .$row["keyword_list"]. '</p>
              //<h3 class= "title"> Year Made: </h3><p class= "words">' .$row["year_made"]. '</p>
              //<h3 class= "title"> Media: </h3><p class= "words">' .$row["m_link"]. '</p>' );
    ///}
//} else {
  //print('no data');
//}

?>
</div>
</body>
</html>

<?

session_start();

require_once('functions.php');

logout();

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    <link rel="stylesheet" href="login.css" type="text/css"/>
  </head>
  <body>
    <h1>Signed out</h1>
    <table class="box">
      <tr>
        <td>
          <a href="index.php">Return to front page</a>
        </td>
      </tr>
    </table>
  </body>
</html>

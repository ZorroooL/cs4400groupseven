<?

require_once('functions.php');

require_once('db.php');

if (register_post_keys('email', 'password')) {
    $user_id = $db->applicant_login($email, $password)
    if ($user_id) {
        $_SESSION['applicant'] = true;
        $_SESSION['user_id'] = $user_id;
        redirect('job_search.php');
    } else {
        $error = 'Login failed';
    }
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    <link rel="stylesheet" href="login.css" type="text/css"/>
  </head>
  <body><form action="applicant_login.php" method="POST">
    <? include('error.php'); ?>
    <h1>
      Applicant Sign In
    </h1>
    <table class="box">
      <tr>
        <td>
          Email:
        </td>
        <td>
          <input type="text" class="loginEmailField" name="email" />
        </td>
      </tr>
      <tr>
        <td>
          Password:
        </td>
        <td>
          <input type="password" class="loginPasswordField" name="password" />
        </td>
      </tr>
      <tr>
        <td colspan="2" class="submitCell">
          <input type="submit" value="Sign In" class="btn" />
        </td>
      </tr>
      <tr>
        <td colspan="2" class="signup">
          <a href="applicant_signup.php">Sign up now</a>
        </td>
      </tr>
    </table>
  </form></body>
</html>


<?php
if ($_POST) {
    if ($_POST['register']) {
        if (!$_POST['email']) {
            $error = "Email not set";
        } else if (!$_POST['password']) {
            $error = "Password not set";
        } else if (!$_POST['password_confirm']) {
            $error = "Confirm password not set";
        } else if ($_POST['password'] != $_POST['password_confirm']) {
            $error = "Password and confirm password must match";
        } else if (strlen($_POST['password']) < 8) {
            $error = "Password must be at least 8 characters in length";
        } else if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $error = "Email is not valid";
        }


        if ($error) {
            $smarty->assign('error', $error);
        } else {
            $User = new User($Conn);
            $attempt = $User->createUser($_POST);
            if ($attempt) {
                $smarty->assign('success', "Your account has been created. Please now login.");
                // $to = $_POST['email'];
                // $subject = 'Welcome to StudentEat!';
                // $headers = "From: max.rennie@uos.ac.uk\r\n";
                // $headers .= "Reply-To: max.rennie@uos.ac.uk\r\n";
                // $headers .= "MIME-Version: 1.0\r\n";
                // $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

                // $message = '<html><body>';
                // $message .= '<h1>Welcome to StudentEat!</h1>';
                // $message .= '<p>You have successfully registered an account with us.</p>';
                // $message .= '</body></html>';

                //mail($to, $subject, $message, $headers);

                $email = new \SendGrid\Mail\Mail();
                $email->setFrom("max.rennie@uos.ac.uk", "Max Rennie");
                $email->setSubject("Welcome to StudentEat");
                $email->addTo($_POST['email'], "User");
                $email->addContent(
                    "text/html",
                    "<h1>Welcome to StudentEat!</h1>"
                );



                $response = $sendgrid->send($email);
                
            } else {
                $smarty->assign('error', "An error occured, please try again later.");
            }
        }
    } else if ($_POST['login']) {
        if (!$_POST['email']) {
            $error = "Email not set";
        } else if (!$_POST['password']) {
            $error = "Password not set";
        } else if (strlen($_POST['password']) < 8) {
            $error = "Password must be at least 8 characters in length";
        } else if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $error = "Email is not valid";
        }
        if ($error) {
            $smarty->assign('error', $error);
        } else {
            $User = new User($Conn);
            $user_data = $User->loginUser($_POST['email'], $_POST['password']);
            if ($user_data) {
                $_SESSION['is_loggedin'] = true;
                $_SESSION['user_data'] = $user_data;
                header("Location: index.php?p=account");
                exit();
            } else {
                $smarty->assign('error', "Incorrect Email/Password");
            }
        }
    }
}

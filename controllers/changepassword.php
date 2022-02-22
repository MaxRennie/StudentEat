<?php
if ($_POST) {
    if (!$_POST['currentPassword']) {
        $error = "Current Password not set";
    } else if (!$_POST['newPassword']) {
        $error = "New Password not set";
    } else if (!$_POST['new_password_confirm']) {
        $error = "Confirm password not set";
    } else if ($_POST['password'] != $_POST['new_password_confirm']) {
        $error = "Password and confirm password must match";
    } else if (strlen($_POST['password']) < 8) {
        $error = "Password must be at least 8 characters in length";

        if ($error) {
            $smarty->assign('error', $error);
        } else {
            // Validation passed
            $change_pass = $User->changeUserPassword($_POST['currentPassword'], $_POST['newPassword']);
            if ($change_pass) {
                $smarty->assign('success', "Password has been updated.");
            } else {
                $smarty->assign('error', "Something went wrong.");
            }
        }
    }
}

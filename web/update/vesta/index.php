<?php
// Init
error_reporting(NULL);
ob_start();
session_start();
include($_SERVER['DOCUMENT_ROOT']."/inc/main.php");

// Check token
if ((!isset($_GET['token'])) || ($_SESSION['token'] != $_GET['token'])) {
    header('location: /login/');
    exit();
}

if ($_SESSION['user'] == 'gosweb') {
    if (!empty($_GET['pkg'])) {
        $v_pkg = escapeshellarg($_GET['pkg']);
        exec (VESTA_CMD."v-update-sys-vesta ".$v_pkg, $output, $return_var);
    }

    if ($return_var != 0) {
        $error = implode('<br>', $output);
        if (empty($error)) $error = 'Error: '.$v_pkg.' update failed';
            $_SESSION['error_msg'] = $error;
    }
    unset($output);
}

header("Location: /list/updates/");
exit;

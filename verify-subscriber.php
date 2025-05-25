<?php
require_once('header.php'); // DB connection

if (!isset($_GET['email']) || !isset($_GET['key'])) {
    die('Invalid request.');
}

$email = $_GET['email'];
$token = $_GET['key'];

// Check if email and token match
$statement = $pdo->prepare("SELECT * FROM tbl_subscriber WHERE subs_email = ? AND subs_hash = ?");
$statement->execute([$email, $token]);
$subscriber = $statement->fetch(PDO::FETCH_ASSOC);
?>


<div class="page-banner" style="background-color:#444;">
    <div class="inner">
        <!-- <h1>Registration Successful</h1> -->
        <?php if ($subscriber) {
            // Activate and clear token
            $statement = $pdo->prepare("UPDATE tbl_subscriber SET subs_active = 1, subs_hash = '' WHERE subs_email = ?");
            $statement->execute([$email]);

            
            echo "<h1>Subscription verified! Thank you.</h1>";
        } else {
            echo "<h1>Invalid verification link or already verified.</h1>";
        } ?>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="user-content">
                    <?php
                    echo $error_message;
                    echo $success_message;
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>
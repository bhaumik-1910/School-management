<?php

include 'header.php';

include './SMS/database.php';

?>


<!-- Page Header End -->
<div class="container-xxl py-5 page-header position-relative mb-5">
    <div class="container py-5">
        <h1 class="display-2 text-white animated slideInDown mb-4">Appointment</h1>
        <nav aria-label="breadcrumb animated slideInDown">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item text-white active" aria-current="page">Appointment</li>
            </ol>
        </nav>
    </div>
</div>
<!-- Page Header End -->


<!-- Appointment Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="bg-light rounded">
            <div class="row g-0">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="h-100 d-flex flex-column justify-content-center p-5">
                        <h1 class="mb-4">Make Appointment</h1>
                        <form action="" method="POST">
                            <div class="row g-3">
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="text" name="G_Name" class="form-control border-0" id="gname"
                                            placeholder="Gurdian Name">
                                        <label for="gname">Gurdian Name</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="email" name="G_Email" class="form-control border-0" id="gmail"
                                            placeholder="Gurdian Email">
                                        <label for="gmail">Gurdian Email</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="text" name="C_Name" class="form-control border-0" id="cname"
                                            placeholder="Child Name">
                                        <label for="cname">Child Name</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="text" name="C_Age" class="form-control border-0" id="cage"
                                            placeholder="Child Age">
                                        <label for="cage">Child Age</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <textarea class="form-control border-0" name="Message"
                                            placeholder="Leave a message here" id="message"
                                            style="height: 100px"></textarea>
                                        <label for="message">Message</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit" name="submit">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded" src="img/appointment.jpg"
                            style="object-fit: cover;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Appointment End -->

<?php include 'footer.php'; ?>


<?php
//data save in database 
if (isset($_POST['submit'])) {
    // echo "Button Clicked";

    //get data from form
    $G_Name = $_POST['G_Name'];
    $G_Email = $_POST['G_Email'];
    $C_Name = $_POST['C_Name'];
    $C_Age = $_POST['C_Age'];
    $Message = $_POST['Message'];

    //sqlquery to save the data into database 
    $sql = "INSERT INTO appointment SET 
                G_Name='$G_Name',
                G_Email='$G_Email',
                C_Name='$C_Name',
                C_Age='$C_Age', 
                Message='$Message' ";

    //this query is saving data in database 
    $res = mysqli_query($conn, $sql);

    if ($res == true) {
        echo "Data Inserted";
    } else {
        echo "Faile to Data Inserted";
    }

}
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Montana</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        @include('home.header')
    </header>
    <!-- header-end -->
    <div class="bradcam_area breadcam_bg_1">
        <h3>Reservation</h3>
    </div>
        <!-- about_area_start -->
        <div style="padding-top: 600px">
    </div>
    <!-- about_area_end -->

    <div >
    <div id="test-form" class="white-popup-block" style="padding-top: 650px">
                <div class="popup_box ">
                        <div class="popup_inner">
                            <h3>Fill in detail</h3>
                            <form method="POST" action="{{ route('submit_reservation') }}">
                            @csrf
                                <div class="row">
                                    <div class="col-xl-6">
                                        <input  id="datepicker" placeholder="Check in date" name="check_in_date" required>
                                    </div>
                                    <div class="col-xl-6">
                                        <input  id="datepicker2" placeholder="Check out date" name="check_out_date" required>
                                    </div>
                                    @if(session('error'))
                                    <div class="alert alert-danger">
                                    {{ session('error') }}
                                    </div>
                                    @endif
                                    <div class="col-xl-12">
                                        <label for="room_type"><b>Select Room Type</b></label>
                                        <select class="form-select wide" id="default-select" name="room_id">
                                        @foreach($rooms as $room)
                                        <option value="{{ $room['id'] }}">{{ $room['name'] }}</option>
                                        @endforeach
                                        </select>
                                    </div>
                                    <div class="col-xl-12">
                                        <label for="room_type"><b>Select Service</b></label>
                                        <select class="form-select wide" id="default-select" name="room_service">
                                        @foreach($serviceData as $service)
                                        <option value="{{ $service['roomService'] }}">{{ $service['roomService'] }}</option>
                                        @endforeach
                                        </select>
                                    </div>
                                    <div class="col-xl-12">
                                        <button type="submit" class="boxed-btn3" >Proceed to Payment</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
    </div>

    <!-- forQuery_end-->

    <!-- instragram_area_start -->
    <div class="instragram_area">
        <div class="single_instagram">
            <img src="img/instragram/1.png" alt="">
        </div>
        <div class="single_instagram">
            <img src="img/instragram/2.png" alt="">

        </div>
        <div class="single_instagram">
            <img src="img/instragram/3.png" alt="">

        </div>
        <div class="single_instagram">
            <img src="img/instragram/4.png" alt="">

        </div>
        <div class="single_instagram">
            <img src="img/instragram/5.png" alt="">
        </div>
    </div>
    <!-- instragram_area_end -->

    <!-- footer -->
    @include("home.footer")

    <!-- link that opens popup -->

    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>

    <script src="js/main.js"></script>
    <script>
$(function(){
    $('#datepicker').datepicker({
        minDate: 0,
        format: 'yyyy-mm-dd',
        iconsLibrary: 'fontawesome',
        icons: {rightIcon: '<span class="fa fa-caret-down"></span>'
        },
        todayHighlight: true // Highlight today's date
    }).on('changeDate', function(selected) {
        var minDate = new Date(selected.date.valueOf());
        // Add logic for showing error if date is before today
        if (minDate < new Date()) {
            alert('Please select a date equal to or after today.');
            $(this).datepicker('setDate', new Date());
        }
    });

    $('#datepicker2').datepicker({
        minDate: 0,
        format: 'yyyy-mm-dd',
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-caret-down"></span>'
        },
        todayHighlight: true // Highlight today's date
    }).on('changeDate', function(selected) {
        var minDate = new Date(selected.date.valueOf());
        // Add logic for showing error if date is before today
        if (minDate < new Date()) {
            alert('Please select a date equal to or after today.');
            $(this).datepicker('setDate', new Date());
        }
    });
});
</script>



</body>

</html>
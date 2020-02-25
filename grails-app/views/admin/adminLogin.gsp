


<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Online Examination System</title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'bootstrap.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/font-awesome/4.5.0/css',file: 'font-awesome.min.css')}" />

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'fonts.googleapis.com.css')}" />

    <!-- ace styles -->
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'ace.min.css')}" class="ace-main-stylesheet" id="main-ace-style" />

    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'ace-skins.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'ace-rtl.min.css')}" />

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="${resource(dir: 'assets/js',file: 'ace-extra.min.js')}"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
</head>

<body class="login-layout">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="ace-icon fa fa-pencil-square-o green"></i>
                            <span class="red">Online Examination</span>
                            <span class="white" id="id-text2"></span>

                    </div>
                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-send green"></i>
                                        Please Enter Your Information
                                    </h4>

                                    <div class="space-6"></div>

                                    <g:form role="form"  method="POST" class="registration-form" controller="authenticate" action="adminLogin">
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" name="email" class="form-control" placeholder="Email" required />
                                                    <i class="ace-icon fa fa-user"></i>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" name="password" class="form-control" placeholder="Password" required />
                                                    <i class="ace-icon fa fa-lock"></i>
                                                </span>
                                            </label>
                                            <input type="hidden" name="grouptype" value="Admin">
                                            <div class="space"></div>

                                            <div class="clearfix">
                                                %{--<label class="inline">--}%
                                                    %{--<input type="checkbox" class="ace" />--}%
                                                    %{--<span class="lbl"> Remember Me</span>--}%
                                                %{--</label>--}%
                                                %{--<a href="${createLink(controller: 'authenticate', action: 'login')}" ><button type="submit" class="btn">Login</button></a>--}%
                                                <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">Login</span>
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </g:form>

                                </div><!-- /.widget-main -->



                        <div id="forgot-box" class="forgot-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">


                                    <div class="space-6"></div>


                                    <form>
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="email" class="form-control" placeholder="Email" required />
                                                    <i class="ace-icon fa fa-envelope"></i>
                                                </span>
                                            </label>


                                        </fieldset>
                                    </form>
                                </div><!-- /.widget-main -->

                                <div class="toolbar center">
                                    <a href="#" data-target="#login-box" class="back-to-login-link">
                                        Back to login
                                        <i class="ace-icon fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.forgot-box -->
                    </div><!-- /.position-relative -->

                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="${resource(dir: 'assets/js',file: 'jquery-2.1.4.min.js')}"></script>
<!-- <![endif]-->

<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='${resource(dir: 'assets/js',file: 'jquery.mobile.custom.min.js')}'>"+"<"+"/script>");
</script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function($) {
        $(document).on('click', '.toolbar a[data-target]', function(e) {
            e.preventDefault();
            var target = $(this).data('target');
            $('.widget-box.visible').removeClass('visible');//hide others
            $(target).addClass('visible');//show target
        });
    });



    //you don't need this, just used for changing background
    jQuery(function($) {
        $('#btn-login-dark').on('click', function(e) {
            $('body').attr('class', 'login-layout');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-light').on('click', function(e) {
            $('body').attr('class', 'login-layout light-login');
            $('#id-text2').attr('class', 'grey');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-blur').on('click', function(e) {
            $('body').attr('class', 'login-layout blur-login');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'light-blue');

            e.preventDefault();
        });

    });
</script>
</body>

</html>
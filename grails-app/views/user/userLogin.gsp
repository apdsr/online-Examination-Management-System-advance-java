

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Online Examination System System</title>

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

<body class="login-layout light-login">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="ace-icon fa fa-pencil-square-o green"></i>
                            <span class="red">Online Examination </span>
                            <span class="grey" id="id-text2"> System</span>
                        </h1>
                        %{--<h4 class="blue" id="id-company-text">&copy; Best Solutions</h4>--}%
                    </div>
                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <g:if test="${flash.message}">
                                        <div class="message" style="color: red">${flash.message}</div>
                                    </g:if>
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-send green"></i>
                                        Please Enter Your Information
                                    </h4>

                                    <div class="space-6"></div>

                                    <g:form role="form"  method="POST" class="registration-form" controller="authenticate" action="login">
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" name="eid" class="form-control" placeholder="Enter Your Email ID" required />
                                                    <i class="ace-icon fa fa-user"></i>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" name="pwd" id="pwd" class="form-control" placeholder="Password" required />
                                                    <i class="ace-icon fa fa-lock"></i>
                                                </span>
                                            </label>
                                            <input type="hidden" name="grouptype" value="User">
                                            <div class="space"></div>

                                            <div class="clearfix">
                                                %{--<label class="inline">--}%
                                                %{--<span class="lbl"> Sign Up</span>--}%
                                                %{--</label>--}%

                                                <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">Login</span>
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </g:form>

                                </div><!-- /.widget-main -->

                            <div class="toolbar clearfix">
                            %{--<div>--}%
                            %{--<a href="#" data-target="#forgot-box" class="forgot-password-link">--}%
                            %{--<i class="ace-icon fa fa-arrow-left"></i>--}%
                            %{--Forgot Password--}%
                            %{--</a>--}%
                            %{--</div>--}%
                            <div>
                            <a href="#" data-target="#signup-box" class="user-signup-link">
                            Student Registration
                            <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                            </div>
                            </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->

                        <div id="forgot-box" class="forgot-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header red lighter bigger">
                                        <i class="ace-icon fa fa-key"></i>
                                        Retrieve Password
                                    </h4>

                                    <div class="space-6"></div>
                                    <p>
                                        Enter your email and to receive your password
                                    </p>

                                    <form>
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="email" class="form-control" placeholder="Email" required />
                                                    <i class="ace-icon fa fa-envelope"></i>
                                                </span>
                                            </label>

                                            <div class="clearfix">
                                                <button type="button" class="width-35 pull-right btn btn-sm btn-danger">
                                                    <i class="ace-icon fa fa-lightbulb-o"></i>
                                                    <span class="bigger-110">Send Me!</span>
                                                </button>
                                            </div>
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

                        <div id="signup-box" class="signup-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header green lighter bigger">
                                        <i class="ace-icon fa fa-users blue"></i>
                                        Student Registration
                                    </h4>

                                  <div class="space-6"></div>
                                   <p> Enter your details to begin: </p>

                                    <g:form role="form" name="regform" class="registration-form" controller="masterEntry" action="studata" method="POST">
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" name="name" id="name" class="form-control" placeholder="Name" tabindex="1" required />
                                                    %{--<i class="ace-icon fa fa-user"></i>--}%
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <g:select name="dep" from="${['MCA','BCA','BBA']}" class="form-control" tabindex="2" noSelection="${['':'--Select Course--']}" required="required" ></g:select>
                                                    %{--<input type="text" name="uid" id="uid" class="form-control" placeholder="Department" />--}%
                                                    %{--<i class="ace-icon fa fa-user"></i>--}%
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    %{--<input type="password" name="pwd" id="pwd" class="form-control" placeholder="Semester" />--}%
                                                    %{--<i class="ace-icon fa fa-lock"></i>--}%
                                                    <g:select name="sem" id="sem" class="form-control" from="${['1st','2nd','3rd','4th','5th','6th','7th','8th']}" required="required" tabindex="3" value="${sem}" noSelection="${['':'--Select Sem--']}"  ></g:select>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="email" name="emailid" id="emailid" class="form-control" placeholder="E-Mail" tabindex="4" required="required" onchange="validateEmailid(this)"  />
                                                    %{--<i class="ace-icon fa fa-retweet"></i>--}%
                                                </span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" name="mob" id="mob" class="form-control" placeholder="Mobile" tabindex="5"  onchange="phonenumber(this)"  onkeypress="return isNumber(event)" required="required" maxlength="10" />
                                                    %{--<i class="ace-icon fa fa-retweet"></i>--}%
                                                </span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" name="pas" id="pas" class="form-control" placeholder="Password" tabindex="5"  onchange="paswordcheck(this)"   required="required" maxlength="10" />
                                                    %{--<i class="ace-icon fa fa-retweet"></i>--}%
                                                </span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" name="repas" id="pas" class="form-control" placeholder="Retype password" tabindex="5"  onchange="paswordcheck(this)"  required="required" maxlength="10" />
                                                    %{--<i class="ace-icon fa fa-retweet"></i>--}%
                                                </span>
                                            </label>

                                            %{--<label class="block">--}%
                                            %{--<input type="checkbox" class="ace" />--}%
                                            %{--<span class="lbl">--}%
                                            %{--I accept the--}%
                                            %{--<a href="#">User Agreement</a>--}%
                                            %{--</span>--}%
                                            %{--</label>--}%

                                            <div class="space-24"></div>

                                            <div class="clearfix">
                                                %{--<button type="reset" class="width-30 pull-left btn btn-sm">--}%
                                                    %{--<i class="ace-icon fa fa-refresh"></i>--}%
                                                    %{--<span class="bigger-110">Reset</span>--}%
                                                %{--</button>--}%

                                                <button type="submit" class="width-65 pull-right btn btn-sm btn-success">
                                                    <span class="bigger-110">SignUp</span>

                                                    <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                </button>
                                            </div>
                                        </fieldset>
                                    </g:form>
                                </div>

                                <div class="toolbar center">
                                    <a href="#" data-target="#login-box" class="back-to-login-link">
                                        <i class="ace-icon fa fa-arrow-left"></i>
                                        Back to login
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.signup-box -->
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


    function phonenumber(inputtxt) {

        var phoneno =/^(\+91-|\+91|0)?\d{10}$/;
        if(inputtxt.value.match(phoneno))
        {
            //document.getElementById('mobmsg').innerHTML="";
            return true;

//
        }
        else
        {

            //alert("Not a valid Phone Number" + "\n" + "\n" + "Enter the 10 digit Mobile Number(such as : 9678543210)");
            alert("Enter the 10 digit Mobile Number(such as : 9634587934)");
            // document.getElementById('mobmsg').innerHTML= ("Enter the 10 digit Mobile Number(such as : 9634587934)").fontcolor('color:red').small();
            document.getElementById(inputtxt.id).value="";
            // document.getElementById("mobno").focus()

        }


    }
    function onlyAlphabets(e, t) {
        try {
            if (window.event) {
                var charCode = window.event.keyCode;
            }
            else if (e) {
                var charCode = e.which;
            }
            else { return true; }
            if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode==32) || (charCode==8))
                return true;
            else
                return false;
        }
        catch (err) {
            alert(err.Description);
        }
    }
    function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
        return true;
    }
    function validateEmailid(inputemail){

        var email = /([A-Z0-9a-z_-][^@])+?@[^$#<>?]+?\.[\w]{2,4}/.test(inputemail.value);

        if(!email){
            alert("Not a Valid Email,Enter email(such as : aa@yz.com)");
            document.getElementById("mail").value="";
            document.getElementById("mail").focus();
            return false;
        }

    }

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


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>:: Online Examination System ::</title>

    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'bootstrap.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/font-awesome/4.5.0/css',file: 'font-awesome.min.css')}" />

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'jquery-ui.custom.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'chosen.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'bootstrap-datepicker3.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'bootstrap-timepicker.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'daterangepicker.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'bootstrap-datetimepicker.min.css')}" />

    <!-- text fonts -->
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'fonts.googleapis.com.css')}" />

    <!-- ace styles -->
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'ace.min.css')}" class="ace-main-stylesheet" id="main-ace-style" />

    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'ace-skins.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'assets/css',file: 'ace-rtl.min.css')}" />
    <link rel="shortcut icon" href="${resource(dir: 'images', file: "favicon.ico")}" type="image/x-icon">
    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="${resource(dir: 'assets/js',file: 'ace-extra.min.js')}"></script>
    <script src="${resource(dir: 'assets/js',file: 'jquery-2.1.4.min.js')}"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    %{--<!--[if lte IE 8]>--}%
    %{--<script src="${resource(dir: 'assets/js',file: 'html5shiv.min.js')}"></script>--}%
    %{--<script src="${resource(dir: 'assets/js',file: 'respond.min.js')}"></script>--}%
    %{--<![endif]-->--}%
    <g:layoutHead/>
</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default          ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="fa fa-pencil-square-o"></i>
                    Online Examination System
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">

                <li class="light-blue dropdown-modal">
                    %{--<a data-toggle="dropdown" href="#" class="dropdown-toggle">--}%
                        %{--<img class="nav-user-photo" src="assets/images/avatars/user.jpg" alt="Jason's Photo" />--}%
                        %{--<span class="user-info">--}%
                            %{--<strong>--}%
                               %{--: ${session['admin']}--}%
                            %{--</strong>--}%
                        %{--</span>--}%

                        %{--<i class="ace-icon fa fa-caret-down"></i>--}%
                    %{--</a>--}%

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        %{--<li>--}%
                        %{--<a href="#">--}%
                        %{--<i class="ace-icon fa fa-cog"></i>--}%
                        %{--Settings--}%
                        %{--</a>--}%
                        %{--</li>--}%

                        %{--<li>--}%
                        %{--<a href="#">--}%
                        %{--<i class="ace-icon fa fa-user"></i>--}%
                        %{--Profile--}%
                        %{--</a>--}%
                        %{--</li>--}%

                        <li class="divider"></li>

                        %{--<li>--}%
                            %{--<a href="${createLink(controller: 'authenticate',action:'userLogout')}" target="_self">--}%
                                %{--<i class="ace-icon fa fa-power-off"></i>--}%
                                %{--Logout--}%
                            %{--</a>--}%
                        %{--</li>--}%
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.navbar-container -->
</div>

<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try{ace.settings.loadState('main-container')}catch(e){}
    </script>

    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try{ace.settings.loadState('sidebar')}catch(e){}
        </script>

        <ul class="nav nav-list">
            <li class="active open">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-cogs"></i>
                    <span class="menu-text">
                        USER
                    </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="${createLink(controller: 'menuLink',action: 'selectexam',params: ['view':'userExamselct'])}" class="nav-link ">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Start Exam
                        </a>

                        <b class="arrow"></b>
                    </li>

                    %{--<li class="">--}%
                        %{--<a href="${createLink(controller: 'menuLink',action: 'startexam',params: ['view':'userAction'])}" class="nav-link ">--}%
                            %{--<i class="menu-icon fa fa-caret-right"></i>--}%
                            %{--Start Exam--}%
                        %{--</a>--}%

                        %{--<b class="arrow"></b>--}%
                    %{--</li>--}%
                    <li class="">
                        <a href="${createLink(controller: 'menuLink',action: 'examresult',params: ['view':'result'])}" class="nav-link ">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Result List
                        </a>

                        <b class="arrow"></b>
                    </li>

                </ul>
            </li>
        </ul>


            <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
            </div>
    </div>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">

                <div class="page-header">
                    <h1>
                        Dashboard
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            overview &amp; stats
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        %{--<div class="alert alert-block alert-success" id="myElem">--}%
                        %{--<button type="button" class="close" data-dismiss="alert">--}%
                        %{--<i class="ace-icon fa fa-times"></i>--}%
                        %{--</button>--}%

                        %{--<i class="ace-icon fa fa-check green"></i>--}%

                        %{--Welcome to--}%
                        %{--<strong class="green">--}%
                        %{--XXXX College Feedback Management System--}%
                        %{--<small>(v1.4)</small>--}%
                        %{--</strong>--}%
                        %{--</div>--}%

                        <g:layoutBody/>
                        <div class="row" style="display:block;">
                            <div class="col-xs-7">
                                <!-- PAGE CONTENT BEGINS -->
                                %{--<div class="row">--}%
                                %{--<div class="col-xs-12">--}%
                                %{--<div class="input-group">--}%
                                %{--<input id="date-timepicker1" type="text" class="form-control" />--}%
                                %{--<span class="input-group-addon">--}%
                                %{--<i class="fa fa-clock-o bigger-110"></i>--}%
                                %{--</span>--}%
                                %{--</div>--}%

                                %{--<table id="simple-table" class="table  table-bordered table-hover">--}%
                                %{--<thead>--}%
                                %{--<tr>--}%
                                %{--<th class="center">--}%
                                %{--<label class="pos-rel">--}%
                                %{--<input type="checkbox" class="ace" />--}%
                                %{--<span class="lbl"></span>--}%
                                %{--</label>--}%
                                %{--</th>--}%
                                %{--<th class="detail-col">Details</th>--}%
                                %{--<th>Domain</th>--}%
                                %{--<th>Price</th>--}%
                                %{--<th class="hidden-480">Clicks</th>--}%

                                %{--<th>--}%
                                %{--<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>--}%
                                %{--Update--}%
                                %{--</th>--}%
                                %{--<th class="hidden-480">Status</th>--}%

                                %{--<th></th>--}%
                                %{--</tr>--}%
                                %{--</thead>--}%

                                %{--<tbody>--}%
                                %{--<tr>--}%
                                %{--<td class="center">--}%
                                %{--<label class="pos-rel">--}%
                                %{--<input type="checkbox" class="ace" />--}%
                                %{--<span class="lbl"></span>--}%
                                %{--</label>--}%
                                %{--</td>--}%

                                %{--<td class="center">--}%
                                %{--<div class="action-buttons">--}%
                                %{--<a href="#" class="green bigger-140 show-details-btn" title="Show Details">--}%
                                %{--<i class="ace-icon fa fa-angle-double-down"></i>--}%
                                %{--<span class="sr-only">Details</span>--}%
                                %{--</a>--}%
                                %{--</div>--}%
                                %{--</td>--}%

                                %{--<td>--}%
                                %{--<a href="#">ace.com</a>--}%
                                %{--</td>--}%
                                %{--<td>$45</td>--}%
                                %{--<td class="hidden-480">3,330</td>--}%
                                %{--<td>Feb 12</td>--}%

                                %{--<td class="hidden-480">--}%
                                %{--<span class="label label-sm label-warning">Expiring</span>--}%
                                %{--</td>--}%

                                %{--<td>--}%
                                %{--<div class="hidden-sm hidden-xs btn-group">--}%
                                %{--<button class="btn btn-xs btn-success">--}%
                                %{--<i class="ace-icon fa fa-check bigger-120"></i>--}%
                                %{--</button>--}%

                                %{--<button class="btn btn-xs btn-info">--}%
                                %{--<i class="ace-icon fa fa-pencil bigger-120"></i>--}%
                                %{--</button>--}%

                                %{--<button class="btn btn-xs btn-danger">--}%
                                %{--<i class="ace-icon fa fa-trash-o bigger-120"></i>--}%
                                %{--</button>--}%

                                %{--<button class="btn btn-xs btn-warning">--}%
                                %{--<i class="ace-icon fa fa-flag bigger-120"></i>--}%
                                %{--</button>--}%
                                %{--</div>--}%

                                %{--<div class="hidden-md hidden-lg">--}%
                                %{--<div class="inline pos-rel">--}%
                                %{--<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">--}%
                                %{--<i class="ace-icon fa fa-cog icon-only bigger-110"></i>--}%
                                %{--</button>--}%

                                %{--<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">--}%
                                %{--<li>--}%
                                %{--<a href="#" class="tooltip-info" data-rel="tooltip" title="View">--}%
                                %{--<span class="blue">--}%
                                %{--<i class="ace-icon fa fa-search-plus bigger-120"></i>--}%
                                %{--</span>--}%
                                %{--</a>--}%
                                %{--</li>--}%

                                %{--<li>--}%
                                %{--<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">--}%
                                %{--<span class="green">--}%
                                %{--<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>--}%
                                %{--</span>--}%
                                %{--</a>--}%
                                %{--</li>--}%

                                %{--<li>--}%
                                %{--<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">--}%
                                %{--<span class="red">--}%
                                %{--<i class="ace-icon fa fa-trash-o bigger-120"></i>--}%
                                %{--</span>--}%
                                %{--</a>--}%
                                %{--</li>--}%
                                %{--</ul>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</td>--}%
                                %{--</tr>--}%

                                %{--<tr class="detail-row">--}%
                                %{--<td colspan="8">--}%
                                %{--<div class="table-detail">--}%
                                %{--<div class="row">--}%
                                %{--<div class="col-xs-12 col-sm-2">--}%
                                %{--<div class="text-center">--}%
                                %{--<img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="assets/images/avatars/profile-pic.jpg" />--}%
                                %{--<br />--}%
                                %{--<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">--}%
                                %{--<div class="inline position-relative">--}%
                                %{--<a class="user-title-label" href="#">--}%
                                %{--<i class="ace-icon fa fa-circle light-green"></i>--}%
                                %{--&nbsp;--}%
                                %{--<span class="white">Alex M. Doe</span>--}%
                                %{--</a>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</div>--}%

                                %{--<div class="col-xs-12 col-sm-7">--}%
                                %{--<div class="space visible-xs"></div>--}%

                                %{--<div class="profile-user-info profile-user-info-striped">--}%
                                %{--<div class="profile-info-row">--}%
                                %{--<div class="profile-info-name"> Username </div>--}%

                                %{--<div class="profile-info-value">--}%
                                %{--<span>alexdoe</span>--}%
                                %{--</div>--}%
                                %{--</div>--}%

                                %{--<div class="profile-info-row">--}%
                                %{--<div class="profile-info-name"> Location </div>--}%

                                %{--<div class="profile-info-value">--}%
                                %{--<i class="fa fa-map-marker light-orange bigger-110"></i>--}%
                                %{--<span>Netherlands, Amsterdam</span>--}%
                                %{--</div>--}%
                                %{--</div>--}%

                                %{--<div class="profile-info-row">--}%
                                %{--<div class="profile-info-name"> Age </div>--}%

                                %{--<div class="profile-info-value">--}%
                                %{--<span>38</span>--}%
                                %{--</div>--}%
                                %{--</div>--}%

                                %{--<div class="profile-info-row">--}%
                                %{--<div class="profile-info-name"> Joined </div>--}%

                                %{--<div class="profile-info-value">--}%
                                %{--<span>2010/06/20</span>--}%
                                %{--</div>--}%
                                %{--</div>--}%

                                %{--<div class="profile-info-row">--}%
                                %{--<div class="profile-info-name"> Last Online </div>--}%

                                %{--<div class="profile-info-value">--}%
                                %{--<span>3 hours ago</span>--}%
                                %{--</div>--}%
                                %{--</div>--}%

                                %{--<div class="profile-info-row">--}%
                                %{--<div class="profile-info-name"> About Me </div>--}%

                                %{--<div class="profile-info-value">--}%
                                %{--<span>Bio</span>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</div>--}%

                                %{--<div class="col-xs-12 col-sm-3">--}%
                                %{--<div class="space visible-xs"></div>--}%
                                %{--<h4 class="header blue lighter less-margin">Send a message to Alex</h4>--}%

                                %{--<div class="space-6"></div>--}%

                                %{--<form>--}%
                                %{--<fieldset>--}%
                                %{--<textarea class="width-100" resize="none" placeholder="Type something…"></textarea>--}%
                                %{--</fieldset>--}%

                                %{--<div class="hr hr-dotted"></div>--}%

                                %{--<div class="clearfix">--}%
                                %{--<label class="pull-left">--}%
                                %{--<input type="checkbox" class="ace" />--}%
                                %{--<span class="lbl"> Email me a copy</span>--}%
                                %{--</label>--}%

                                %{--<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">--}%
                                %{--Submit--}%
                                %{--<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>--}%
                                %{--</button>--}%
                                %{--</div>--}%
                                %{--</form>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</td>--}%
                                %{--</tr>--}%
                                %{--</tbody>--}%
                                %{--</table>--}%
                                %{--</div><!-- /.span -->--}%
                                %{--</div><!-- /.row -->--}%

                                %{--<div class="row">--}%
                                %{--<div class="col-xs-12">--}%
                                %{--<h3 class="header smaller lighter blue">jQuery dataTables</h3>--}%

                                %{--<div class="clearfix">--}%
                                %{--<div class="pull-right tableTools-container"></div>--}%
                                %{--</div>--}%
                                %{--<div class="table-header">--}%
                                %{--Results for "Latest Registered Domains"--}%
                                %{--</div>--}%

                                %{--<!-- div.table-responsive -->--}%

                                %{--<!-- div.dataTables_borderWrap -->--}%
                                %{--<div>--}%
                                %{--<table id="dynamic-table" class="table table-striped table-bordered table-hover">--}%
                                %{--<thead>--}%
                                %{--<tr>--}%
                                %{--<th class="center">--}%
                                %{--<label class="pos-rel">--}%
                                %{--<input type="checkbox" class="ace" />--}%
                                %{--<span class="lbl"></span>--}%
                                %{--</label>--}%
                                %{--</th>--}%
                                %{--<th>Domain</th>--}%
                                %{--<th>Price</th>--}%
                                %{--<th class="hidden-480">Clicks</th>--}%

                                %{--<th>--}%
                                %{--<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>--}%
                                %{--Update--}%
                                %{--</th>--}%
                                %{--<th class="hidden-480">Status</th>--}%

                                %{--<th></th>--}%
                                %{--</tr>--}%
                                %{--</thead>--}%

                                %{--<tbody>--}%
                                %{--<tr>--}%
                                %{--<td class="center">--}%
                                %{--<label class="pos-rel">--}%
                                %{--<input type="checkbox" class="ace" />--}%
                                %{--<span class="lbl"></span>--}%
                                %{--</label>--}%
                                %{--</td>--}%

                                %{--<td>--}%
                                %{--<a href="#">app.com</a>--}%
                                %{--</td>--}%
                                %{--<td>$45</td>--}%
                                %{--<td class="hidden-480">3,330</td>--}%
                                %{--<td>Feb 12</td>--}%

                                %{--<td class="hidden-480">--}%
                                %{--<span class="label label-sm label-warning">Expiring</span>--}%
                                %{--</td>--}%

                                %{--<td>--}%
                                %{--<div class="hidden-sm hidden-xs action-buttons">--}%
                                %{--<a class="blue" href="#">--}%
                                %{--<i class="ace-icon fa fa-search-plus bigger-130"></i>--}%
                                %{--</a>--}%

                                %{--<a class="green" href="#">--}%
                                %{--<i class="ace-icon fa fa-pencil bigger-130"></i>--}%
                                %{--</a>--}%

                                %{--<a class="red" href="#">--}%
                                %{--<i class="ace-icon fa fa-trash-o bigger-130"></i>--}%
                                %{--</a>--}%
                                %{--</div>--}%

                                %{--<div class="hidden-md hidden-lg">--}%
                                %{--<div class="inline pos-rel">--}%
                                %{--<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">--}%
                                %{--<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>--}%
                                %{--</button>--}%

                                %{--<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">--}%
                                %{--<li>--}%
                                %{--<a href="#" class="tooltip-info" data-rel="tooltip" title="View">--}%
                                %{--<span class="blue">--}%
                                %{--<i class="ace-icon fa fa-search-plus bigger-120"></i>--}%
                                %{--</span>--}%
                                %{--</a>--}%
                                %{--</li>--}%

                                %{--<li>--}%
                                %{--<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">--}%
                                %{--<span class="green">--}%
                                %{--<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>--}%
                                %{--</span>--}%
                                %{--</a>--}%
                                %{--</li>--}%

                                %{--<li>--}%
                                %{--<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">--}%
                                %{--<span class="red">--}%
                                %{--<i class="ace-icon fa fa-trash-o bigger-120"></i>--}%
                                %{--</span>--}%
                                %{--</a>--}%
                                %{--</li>--}%
                                %{--</ul>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</td>--}%
                                %{--</tr>--}%
                                %{--</tbody>--}%
                                %{--</table>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</div>--}%

                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->


                    <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
                <span class="bigger-120">
                    %{--<span class="blue bolder">&copy; </span>--}%
                    %{--Powered By <a href="www.bestsolutions.co.in" ></a>--}%
                %{--</span>--}%

                &nbsp; &nbsp;
                %{--<span class="action-buttons">--}%
                    %{--<a href="#">--}%
                        %{--<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>--}%
                    %{--</a>--}%

                    %{--<a href="#">--}%
                        %{--<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>--}%
                    %{--</a>--}%

                    %{--<a href="#">--}%
                        %{--<i class="ace-icon fa fa-google-plus-square red bigger-150"></i>--}%
                    %{--</a>--}%
                %{--</span>--}%
            </div>
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!--[if !IE]> -->
%{--<script src="${resource(dir: 'assets/js',file: 'jquery-2.1.4.min.js')}"></script>--}%
<!-- <![endif]-->

<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='${resource(dir: 'assets/js',file: 'jquery.mobile.custom.min.js')}'>"+"<"+"/script>");
</script>
<script src="${resource(dir: 'assets/js',file: 'bootstrap.min.js')}"></script>


<!-- page specific plugin scripts -->

<script src="${resource(dir: 'assets/js',file: 'jquery-ui.custom.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'jquery.ui.touch-punch.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'chosen.jquery.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'jquery.easypiechart.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'jquery.sparkline.index.min.js')}"></script>

<script src="${resource(dir: 'assets/js',file: 'bootstrap-datepicker.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'bootstrap-timepicker.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'moment.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'daterangepicker.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'bootstrap-datetimepicker.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'autosize.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'jquery.inputlimiter.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'jquery.maskedinput.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'bootstrap-tag.min.js')}"></script>

<script src="${resource(dir: 'assets/js',file: 'jquery.flot.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'jquery.flot.pie.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'jquery.flot.resize.min.js')}"></script>

<!-- page specific plugin scripts -->
<script src="${resource(dir: 'assets/js',file: 'jquery.dataTables.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'jquery.dataTables.bootstrap.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'dataTables.buttons.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'buttons.flash.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'buttons.html5.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'buttons.print.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'buttons.colVis.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'dataTables.select.min.js')}"></script>

<!-- ace scripts -->
<script src="${resource(dir: 'assets/js',file: 'ace-elements.min.js')}"></script>
<script src="${resource(dir: 'assets/js',file: 'ace.min.js')}"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    $("#myElem").show();
    setTimeout(function() { $("#myElem").hide(); }, 5000);

    jQuery(function($) {
        //initiate dataTables plugin
        var myTable =
                $('#dynamic-table')
                    //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                        .DataTable( {
                            bAutoWidth: false,
                            "aoColumns": [
                                { "bSortable": false },
                                null, null,null, null, null,
                                { "bSortable": false }
                            ],
                            "aaSorting": [],


                            //"bProcessing": true,
                            //"bServerSide": true,
                            //"sAjaxSource": "http://127.0.0.1/table.php"	,

                            //,
                            //"sScrollY": "200px",
                            //"bPaginate": false,

                            //"sScrollX": "100%",
                            //"sScrollXInner": "120%",
                            //"bScrollCollapse": true,
                            //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                            //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                            //"iDisplayLength": 50


                            select: {
                                style: 'multi'
                            }
                        } );



        $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

        new $.fn.dataTable.Buttons( myTable, {
            buttons: [
                {
                    "extend": "colvis",
                    "text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
                    "className": "btn btn-white btn-primary btn-bold",
                    columns: ':not(:first):not(:last)'
                },
                {
                    "extend": "copy",
                    "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "csv",
                    "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "excel",
                    "text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "pdf",
                    "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "print",
                    "text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
                    "className": "btn btn-white btn-primary btn-bold",
                    autoPrint: false,
                    message: 'This print was produced using the Print button for DataTables'
                }
            ]
        } );
        myTable.buttons().container().appendTo( $('.tableTools-container') );

        //style the message box
        var defaultCopyAction = myTable.button(1).action();
        myTable.button(1).action(function (e, dt, button, config) {
            defaultCopyAction(e, dt, button, config);
            $('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
        });


        var defaultColvisAction = myTable.button(0).action();
        myTable.button(0).action(function (e, dt, button, config) {

            defaultColvisAction(e, dt, button, config);


            if($('.dt-button-collection > .dropdown-menu').length == 0) {
                $('.dt-button-collection')
                        .wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
                        .find('a').attr('href', '#').wrap("<li />")
            }
            $('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
        });

        ////

        setTimeout(function() {
            $($('.tableTools-container')).find('a.dt-button').each(function() {
                var div = $(this).find(' > div').first();
                if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
                else $(this).tooltip({container: 'body', title: $(this).text()});
            });
        }, 500);





        myTable.on( 'select', function ( e, dt, type, index ) {
            if ( type === 'row' ) {
                $( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
            }
        } );
        myTable.on( 'deselect', function ( e, dt, type, index ) {
            if ( type === 'row' ) {
                $( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
            }
        } );




        /////////////////////////////////
        //table checkboxes
        $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

        //select/deselect all rows according to table header checkbox
        $('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
            var th_checked = this.checked;//checkbox inside "TH" table header

            $('#dynamic-table').find('tbody > tr').each(function(){
                var row = this;
                if(th_checked) myTable.row(row).select();
                else  myTable.row(row).deselect();
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
        $('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
            var row = $(this).closest('tr').get(0);
            if(this.checked) myTable.row(row).deselect();
            else myTable.row(row).select();
        });



        $(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
            e.stopImmediatePropagation();
            e.stopPropagation();
            e.preventDefault();
        });



        //And for the first simple table, which doesn't have TableTools or dataTables
        //select/deselect all rows according to table header checkbox
        var active_class = 'active';
        $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
            var th_checked = this.checked;//checkbox inside "TH" table header

            $(this).closest('table').find('tbody > tr').each(function(){
                var row = this;
                if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
        $('#simple-table').on('click', 'td input[type=checkbox]' , function(){
            var $row = $(this).closest('tr');
            if($row.is('.detail-row ')) return;
            if(this.checked) $row.addClass(active_class);
            else $row.removeClass(active_class);
        });



        /********************************/
        //add tooltip for small view action buttons in dropdown menu
        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        //tooltip placement on right or left
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
            return 'left';
        }




        /***************/
        $('.show-details-btn').on('click', function(e) {
            e.preventDefault();
            $(this).closest('tr').next().toggleClass('open');
            $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
        });
        /***************/





        /**
         //add horizontal scrollbars to a simple table
         $('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
         {
           horizontal: true,
           styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
           size: 2000,
           mouseWheelLock: true
         }
         ).css('padding-top', '12px');
         */


    })
</script>
<!-- inline scripts related to this page -->

</body>
</html>
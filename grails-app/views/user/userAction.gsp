

<%@ page import="onlineexam.Tbladdquestin" contentType="text/html;charset=UTF-8" %>
<g:applyLayout name="userLayout">
    <html>
    <head>
        <title>Online Exam</title>
        <script src="${resource(dir: 'assets/js',file: 'jquery-2.1.4.min.js')}"></script>
    </head>

    <body>
    <div class="page-content">

        <div class="tab-content">
        %{--<div class="tab-pane active" id="tab_5_1">--}%
            <g:form controller="masterEntry" action="correctans" method="POST" useToken="true">
                <div style="clear: both">
                    <g:if test="${flash.message}">
                        <div class="message" style="color: red">${flash.message}</div>
                    </g:if>
                </div>
                <g:set value="${onlineexam?.Tbladdquestin?.findAllByEname(exam)}" var="var1"></g:set>
                <div class="timeline-container">
                    <div class="timeline-label">
                        <span class="label label-primary  arrowed-in-right label-lg">
                            <b>Exam</b>
                        </span>
                        <span class="label label-primary label-lg pull-right"><b>Question: ${qsnsl} Out Of  ${var1.size()}</b>
                        </span>
                    </div>

                    <div class="timeline-items">
                        <div class="timeline-item clearfix">
                            <div class="timeline-info">
                                <i class="timeline-indicator ace-icon fa fa-star btn btn-warning no-hover green"></i>
                            </div>

                            <div class="widget-box transparent">
                                <div class="widget-header widget-header-small">
                                    <h5 class="widget-title ">${qsnsl}. ${var1[qsnsl - 1]?.questionname}</h5>

                                    <span class="widget-toolbar">
                                        <a href="#" data-action="reload">
                                            <i class="ace-icon fa fa-refresh"></i>
                                        </a>
                                    </span>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main">
                                        <input name="opt" type="radio" id="opt1" value="${var1[qsnsl - 1].opt1}"
                                               required="required" class="ace input-lg"/><label
                                            class="lbl bigger-110" for="opt1">${var1[qsnsl - 1].opt1} &nbsp;&nbsp;</label>
                                        <input name="opt" type="radio" id="opt2" value="${var1[qsnsl - 1].opt2}"
                                               required="required" class="ace input-lg"/><label
                                            class="lbl bigger-110" for="opt2">${var1[qsnsl - 1].opt2} &nbsp;&nbsp;</label>
                                        <input name="opt" type="radio" id="opt3" value="${var1[qsnsl - 1].opt3}"
                                               required="required" class="ace input-lg"/><label
                                            class="lbl bigger-110" for="opt3">${var1[qsnsl - 1].opt3} &nbsp;&nbsp;</label>
                                        <input name="opt" type="radio" id="opt4" value="${var1[qsnsl - 1].opt4}"
                                               required="required" class="ace input-lg"/><label
                                            class="lbl bigger-110" for="opt4">${var1[qsnsl - 1].opt4} &nbsp;&nbsp;</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.timeline-items -->
                </div>
                <input type="hidden" name="questionid" id="questionid" value="${var1[qsnsl - 1]?.id}">
                <input type="hidden" name="qsnsl" id="qsnsl" value="${qsnsl}">
                <input type="hidden" name="examname" id="examname" value="${exam}">

                <div class="clearfix">
                    <div class="col-md-offset-5 col-md-7">
                        <button class="btn btn-info" type="submit">
                            <i class="ace-icon fa fa-arrow-right bigger-110"></i>
                            Next
                        </button>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
    <!-- END FORM-->
    </body>
    </html>
</g:applyLayout>
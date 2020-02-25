

<g:applyLayout name="adminLayout">
    <html>
    <head>
        <title>Online Examination</title>
    </head>

    <body>
    <h3 class="header smaller lighter green">
        <i class="ace-icon fa fa-bullhorn"></i>
        Add Examination
    </h3>
    <!-- BEGIN FORM-->
    <div class="tabbable-custom ">
        <ul class="nav nav-tabs ">
            <li class="active">
                <a href="#tab_5_1" data-toggle="tab"><i class="fa fa-plus-square"></i> Insert data </a>

            </li>
            <li>
                <a href="#tab_5_2" data-toggle="tab"><i class="fa fa-eye"></i> View </a>
            </li>

        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="tab_5_1">
                <g:form controller="masterEntry" action="addexam" method="POST" >
                    <div style="clear: both">
                        <g:if test="${flash.message}">
                            <div class="message" style="color: red">${flash.message}</div>
                        </g:if>
                    </div>
                    <div class="col-md-12 col-sm-12 col-md-offset-0">
                        <div class="form-group">
                            <div class="col-sm-3 col-md-3">
                                <label for="name"><font color="#FF0000">*</font> Exam Name:</label>
                                %{--<input type="hidden" name="id" id="id" value="${id}">--}%
                                <input type="text" class="form-control" name="name" id="name" style="text-transform: uppercase">
                                %{--<g:select name="feedbacktypeid" id="feedbacktypeid" from="${bs.grails.feedback.Tbladmin?.list()}" class="form-control" value="${feedbacktypeid}" optionKey="id" optionValue="feedbacktype" required="required" tabindex="1"></g:select>--}%
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="examdate"><font color="#FF0000">*</font>Exam Date:</label>
                                <input type="date" class="form-control" name="examdate" id="examdate" value="${examdate}"  required="required"/>
                            </div>



                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-sm-12 col-md-12">
                        <br>
                    </div>
                    <div class=" col-md-offset-5">
                        <button type="submit" data-loading-text="Loading..." class="width-35 btn btn-sm btn-primary" data-style="expand-right">
                            <span class="ladda-label"><i class="fa fa-check"></i> Save </span>
                        </button>
                    </div>
                </g:form>
            </div>

                        <!-- END EXAMPLE TABLE PORTLET-->
            <div class="tab-pane" id="tab_5_2">
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet light ">
                            <div class="portlet-body" style="overflow-y: auto">
                                <table class="table table-striped table-bordered table-hover" id="sample_1">
                                    <thead>
                                    <tr>
                                        <th>Exam Name</th>
                                        <th>Exam Date</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${onlineexam.Tblexam.list(sort: 'id',order: 'asc')}" var="var1">
                                        <tr>
                                            <td>${var1?.name}</td>
                                            <td>${var1?.examdate}</td>

                                            <td style="width: 150px">
                                                <a name="edit" id="ff" href="${createLink(controller: 'masterEntry', action: 'editExam', params: [id: var1.id])}"><img src="${resource(dir: '/images' ,file: 'edit.png')}"/></a>&nbsp &nbsp
                                                <a name="delete" id="del" href="${createLink(controller: 'masterEntry', action: 'delExam', params: [id: var1.id])}"><img src="${resource(dir: '/images' ,file: 'delete.png')}"/></a>
                                            </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END EXAMPLE TABLE PORTLET-->
                    </div>
                </div>
            </div>
    <!-- END FORM-->
    <script type="text/javascript">

        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

    </script>
    </body>
    </html>
</g:applyLayout>
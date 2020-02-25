

<g:applyLayout name="adminLayout">
    <html>
    <head>
        <title>User Creation</title>
    </head>

    <body>
    <h3 class="header smaller lighter green">
        <i class="ace-icon fa fa-bullhorn"></i>
        User Creation
    </h3>
    <!-- BEGIN FORM-->
    <div class="tabbable-custom ">
        <ul class="nav nav-tabs ">
            <li class="active">
                <a href="#tab_5_1" data-toggle="tab"><i class="fa fa-plus-square"></i> Add New User </a>
            </li>
            <li>
                <a href="#tab_5_2" data-toggle="tab"><i class="fa fa-eye"></i> View </a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="tab_5_1">
                <g:form controller="masterEntry" action="admindata" method="POST" >
                    <div style="clear: both">
                        <g:if test="${flash.message}">
                            <div class="message" style="color: red">${flash.message}</div>
                        </g:if>
                    </div>
                    <div class="col-md-12 col-sm-12 col-md-offset-0">
                        <div class="form-group">
                            <div class="col-sm-3 col-md-3">
                                <label for="name"><font color="#FF0000">*</font>Name:</label>
                                <input type="hidden" name="id" id="id" value="${id}">
                                <input type="text" class="form-control" name="name" id="name" value="${name}">
                                %{--<g:select name="feedbacktypeid" id="feedbacktypeid" from="${bs.grails.feedback.Tbladmin?.list()}" class="form-control" value="${feedbacktypeid}" optionKey="id" optionValue="feedbacktype" required="required" tabindex="1"></g:select>--}%
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="email"><font color="#FF0000">*</font>Email:</label>
                                <input type="text" class="form-control" name="email" id="email" value="${email}"  required="required"/>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="mob"><font color="#FF0000">*</font>Mobile:</label>
                                %{--<g:select name="naturename" id="naturename" from="${bs.grails.feedback.Tblfeedbacknature?.list()}" class="form-control" value="${naturename}" optionKey="naturename" optionValue="naturename" required="required" tabindex="3"></g:select>--}%
                                <input type="text" class="form-control" name="mob" id="mob" value="${mob}">
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="gender"><font color="#FF0000">*</font>Gender:</label>
                                <input type="text" name="gender" id="gender" class="form-control" value="${gender}" required="required"  />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3 col-md-3">
                                <label for="address"><font color="#FF0000">*</font>Address:</label>
                                %{--<input type="hidden" name="address" id="address" value="${address}">--}%
                                %{--<g:select name="feedbacktypeid" id="feedbacktypeid" from="${bs.grails.feedback.Tbladmin?.list()}" class="form-control" value="${feedbacktypeid}" optionKey="id" optionValue="feedbacktype" required="required" tabindex="1"></g:select>--}%
                                <input type="text" class="form-control" name="address" id="address" value="${address}">
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="password"><font color="#FF0000">*</font>Password:</label>
                                <input type="text" class="form-control" name="password" id="password" value="${password}"  />
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
            <div class="tab-pane" id="tab_5_2">
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet light ">
                            <div class="portlet-body" style="overflow-y: auto">
                                <table class="table table-striped table-bordered table-hover" id="sample_1">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Mobile</th>
                                        <th>Email</th>
                                        <th>Gender</th>
                                        <th>Address</th>
                                        <th>&nbsp &nbsp</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${onlineexam.Tbladmin.list(sort: 'id',order: 'asc')}" var="var1">
                                        <tr>
                                            <td>${var1?.name}</td>
                                            <td>${var1?.mob}</td>
                                            <td>${var1?.email}</td>
                                            <td>${var1?.gender}</td>
                                            <td>${var1?.address}</td>
                                            <td style="width: 150px">
                                                <a name="edit" id="ff" href="${createLink(controller: 'masterEntry', action: 'editUserdata', params: [id: var1.id])}"><img src="${resource(dir: '/images' ,file: 'edit.png')}"/></a>&nbsp &nbsp
                                                <a name="delete" id="del" href="${createLink(controller: 'masterEntry', action: 'delUserdata', params: [id: var1.id])}"><img src="${resource(dir: '/images' ,file: 'delete.png')}"/></a>
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
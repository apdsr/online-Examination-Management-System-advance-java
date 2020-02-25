<%@ page  %>

<g:applyLayout name="adminLayout">
    <html>
    <head>
        <title>Online Examination</title>
        <script>
            function findExam() {
                var edate=document.getElementById('examdate').value;
                $('#ename').empty().append("<option value=''>-----Select-----</option>");
                jQuery.ajax({
                    type:'POST',
                    data:'edate='+edate,
                    url:'${createLink(controller: 'masterEntry',action: 'searchExam')}',
                    success:function(data){
                        var exam=JSON.parse(data.examname);
                        for(var i=0;i<exam.length;i++){
                            $('#ename').append("<option value='" + exam[i].id + "'>" + exam[i].name + "</option>")
                        }

                    }
                });
            }
        </script>
    </head>

    <body>
    <h3 class="header smaller lighter green">
        <i class="ace-icon fa fa-bullhorn"></i>
        Add Question
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
                <g:form controller="masterEntry" action="addquestion" method="POST" >
                    <div style="clear: both">
                        <g:if test="${flash.message}">
                            <div class="message" style="color: red">${flash.message}</div>
                        </g:if>
                    </div>
                    <div class="col-md-12 col-sm-12 col-md-offset-0">
                        <div class="form-group">
                            <div class="col-sm-3 col-md-3">
                                <label for="correctans"><font color="#FF0000">*</font>Exam date:</label>
                                <input type="date" class="form-control" name="examdate" id="examdate" value="${examdate}" onchange="findExam();"  required="required"/>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="Ename"><font color="#FF0000">*</font> Exam Name:</label>
                                %{--<input type="hidden" name="id" id="id" value="${id}">--}%
                                %{--<input type="text" class="form-control" name="ename" id="ename">--}%
                                <g:select name="ename" id="ename" from="${[]}" class="form-control"  required="required" tabindex="1"></g:select>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="questionname"><font color="#FF0000">*</font>Question Name:</label>
                                <input type="text" class="form-control" name="questionname" id="questionname" value="${questionname}"  required="required"/>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="opt1"><font color="#FF0000">*</font>Option 1:</label>
                                <input type="text" class="form-control" name="opt1" id="opt1" value="${opt1}"  required="required"/>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="opt2"><font color="#FF0000">*</font>Option 2:</label>
                                <input type="text" class="form-control" name="opt2" id="opt2" value="${opt2}"  required="required"/>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="opt3"><font color="#FF0000">*</font>Option 3:</label>
                                <input type="text" class="form-control" name="opt3" id="opt3" value="${opt3}"  required="required"/>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="opt4"><font color="#FF0000">*</font>Option 4:</label>
                                <input type="text" class="form-control" name="opt4" id="opt4" value="${opt4}"  required="required"/>
                            </div>
                            <div class="col-sm-3 col-md-3">
                                <label for="correctans"><font color="#FF0000">*</font>Correct Ans:</label>
                                <input type="text" class="form-control" name="correctans" id="correctans" value="${correctans}"  required="required"/>
                                %{--<g:select name="correctans" id="correctans" from="${['1','2']}" noSelection="${['-select-']}"></g:select>--}%
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
                                        <th>Question</th>
                                        <th>Opt1</th>
                                        <th>Opt2</th>
                                        <th>Opt3</th>
                                        <th>Opt4</th>
                                        <th>&nbsp &nbsp</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${onlineexam.Tbladdquestin.list(sort: 'id',order: 'asc')}" var="var1">
                                        <tr>
                                            <td>${var1?.ename}</td>
                                            <td>${var1?.questionname}</td>
                                            <td>${var1?.opt1}</td>
                                            <td>${var1?.opt2}</td>
                                            <td>${var1?.opt3}</td>
                                            <td>${var1?.opt4}</td>
                                            <td style="width: 150px">
                                                %{--<a name="edit" id="ff" href="${createLink(controller: 'masterEntry', action: 'editques', params: [id: var1.id])}"><img src="${resource(dir: '/images' ,file: 'edit.png')}"/></a>&nbsp &nbsp--}%
                                                <a name="delete" id="del" href="${createLink(controller: 'masterEntry', action: 'delquestion', params: [id: var1.id])}"><img src="${resource(dir: '/images' ,file: 'delete.png')}"/></a>
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
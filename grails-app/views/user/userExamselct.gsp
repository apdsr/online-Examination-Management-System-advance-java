
<g:applyLayout name="userLayout">
    <html>
    <head>
        <title>User Action</title>
        <style type="text/css">
        h2{
            color: blue;
        }
        </style>
    </head>

    <body>
    <h2>Select Examination</h2>
    <div style="clear: both">
        <g:if test="${flash.message}">
            <div class="message" style="color: red">${flash.message}</div>
        </g:if>
    </div>
    <g:form controller="masterEntry" action="seelectedexm" method="POST">
        <div class="clarifixx">
            <label class="block clearfix">
                <span class="block input-icon input-icon-right">
                    <g:select name="examname" from="${onlineexam.Tblexam.list()}" optionKey="id" optionValue="name" class="form-control" tabindex="2" noSelection="${['':'--Select Exam--']}" required="required" ></g:select>
                </span>
            </label>
            <button type="submit" class="width-65 pull-right btn btn-sm btn-success">
                <span class="bigger-110">Next</span>

                <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
            </button>
        </div>
    </g:form>
    </body>

    </html>
</g:applyLayout>
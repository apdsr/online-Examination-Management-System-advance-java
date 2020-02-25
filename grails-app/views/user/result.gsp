


<g:applyLayout name="userLayout">
    <html>
    <head>
        <title>User Result</title>
    </head>

    <body>
        %{--<g:set var="res" value="${onlineexam.Tbleanswer.findAllByUserid(session['stuid'] as String).examname.unique()}"></g:set>--}%
        <g:set var="i" value="${0}"></g:set>
        <g:each in="${examList}" var="exam">
            <label>Exam Name : ${onlineexam?.Tblexam?.findById(exam as int)?.name}</label><br>
            <label>Total Question : ${onlineexam?.Tbladdquestin?.findAllByEname(exam as String)?.size()}</label><br>
            <g:set var="ansgiven" value="${onlineexam?.Tbleanswer?.findAllByExamnameAndUserid(exam as String,session['stuid'] as String)?.size()}"></g:set>
            <label>Answer Given: ${ansgiven}</label><br>
            <label>Correct Answer: ${correctAns[i]}</label><br>
            <label>Wrong Answer:${ansgiven-correctAns[i] as int}</label><br>
            <label>Result:${correctAns[i]} </label>
            <g:set var="i" value="${i+1}"></g:set>
        </g:each>
    </body>

    </html>
</g:applyLayout>
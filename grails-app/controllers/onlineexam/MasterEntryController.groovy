package onlineexam

import grails.converters.JSON
import org.codehaus.groovy.grails.web.json.JSONObject

class MasterEntryController {

    def searchExam() {
        JSONObject jsonObject = new JSONObject();
        ArrayList<String> examlist = new ArrayList<String>()
        List examdetails = Tblexam.findAllByExamdate(params?.edate);
        if (examdetails) {
            jsonObject.put("examname", examdetails as JSON);
        }
        render jsonObject;
    }

    def studata() {
        if (request.method.equals("POST")) {
            try {
                def insertdata = new Tblstudent(params);

                if (!insertdata.hasErrors() && insertdata.save(flush: true, failOnError: true)) {
                    flash.message = "Registration Completed"
                    render view: '/user/userLogin'
                    return true;
                } else {
                    flash.message = "Error! please insert correct data"
                    render view: '/user/userLogin'
                }
            }
            catch (Exception ex) {
                log.error(ex.getMessage());
                render view: '/user/userLogin'
            }
        } else {
            flash.message = "Invalid Operation"
            render view: '/user/userLogin'
            return false;
        }
    }

    def admindata() {
        if (request.method.equals("POST")) {
            try {
                String pass = ""
                def insertdata2 = Tbladmin.findById(params?.id)
                if (insertdata2) {
                    if (params?.password == "") {
                        pass = insertdata2.password
                    } else {
                        pass = params.password
                    }
                    insertdata2.properties = params;
                    insertdata2.password = pass;
                } else {
                    insertdata2 = new Tbladmin(params);
                }

                if (!insertdata2.hasErrors() && insertdata2.save(flush: true, failOnError: true)) {
                    flash.message = "Record Saved Successfully"
                    render view: '/admin/userCreation'
                    return true;
                } else {
                    flash.message = "Sign Up Error! please insert correct data"
                    render view: '/admin/userCreation'
                }
            }
            catch (Exception ex) {
                log.error(ex.getMessage());
                render view: '/admin/userCreation'
            }
        } else {
            flash.message = "Invalid Operation"
            render view: '/admin/userCreation'
            return false;
        }
    }

    def editUserdata() {
        def regdata = Tbladmin.findById(params.id)
        if (regdata) {

            render view: '/admin/userCreation', model: [id: regdata.id, name: regdata.name, mob: regdata.mob, email: regdata.email, address: regdata.address, gender: regdata.gender]
        } else {
            flash.message = "Invalid id"
        }
    }
    def editExam() {
        def regdata = Tblexam.findById(params.id)
        if (regdata) {

            render view: '/admin/adexam', model: [id: regdata.name, name: regdata.examdate]
        } else {
            flash.message = "Invalid id"
        }
    }


    def delUserdata() {
        def regdata = Tbladmin.findById(params.id)
        if (regdata) {
            regdata.delete();
            flash.message = "Record deleted successfully"
            render view: '/admin/userCreation'
        }
    }
    def delExam() {
        def regdata = Tblexam.findById(params.id)
        if (regdata) {
            regdata.delete();
            flash.message = "Record deleted successfully"
            render view: '/admin/adexam'
        }
    }
    def delquestion() {
        def regdata = Tbladdquestin.findById(params.id)
        if (regdata) {
            regdata.delete();
            flash.message = "Record deleted successfully"
            render view: '/admin/addquestion'
        }
    }

    def addexam() {
        if (request.method.equals("POST")) {
            try {
                def examdta = new Tblexam(params);
                def check=Tblexam.findByName(params.name)
                if(check)
                {
                    flash.message = "Already Exist"
                    render view: '/admin/adexam'
                }
                else {
                    if (!examdta.hasErrors() && examdta.save(flush: true, failOnError: true)) {
                        flash.message = "Exam Added"
                        render view: '/admin/adexam'
                        return true;
                    } else {
                        flash.message = "Error! please valid data"
                        render view: '/admin/adexam'
                    }
                }
            }
            catch (Exception ex) {
                log.error(ex.getMessage());
                render view: '/admin/adexam'
            }
        } else {
            flash.message = "Invalid Operation"
            render view: '/admin/adexam'
            return false;
        }
    }

    def addquestion() {
        if (request.method.equals("POST")) {
            try {
                def examquestion = new Tbladdquestin(params);

                if (!examquestion.hasErrors() && examquestion.save(flush: true, failOnError: true)) {
                    flash.message = "Question Added"
                    render view: '/admin/addquestion'
                    return true;
                } else {
                    flash.message = "Error! please Enter valid data"
                    render view: '/admin/addquestion'
                }
            }
            catch (Exception ex) {
                log.error(ex.getMessage());
                render view: '/admin/addquestion'
            }
        } else {
            flash.message = "Invalid Operation"
            render view: '/admin/addquestion'
            return false;
        }
    }


    def seelectedexm() {
        if (request.method.equals("POST")) {
            def exam = Tbladdquestin.findAllByEname(params.examname).ename
            if(exam.size()>Tbleanswer.findAllByExamname(params.examname).size()){
                 flash.message="";
                render view: '/user/userAction', model: [exam: exam[0], qsnsl: Tbleanswer.findAllByExamname(params.examname).size()+1]
           }
             else{
                flash.message="Exam not valid "
                render view: '/user/userExamselct'
          }
        }
    }

    def correctans() {
        if (request.method.equals("POST")) {
            withForm {
                try {
                    def ans = new Tbleanswer(params);
                    ans.userid = session['stuid'] as String;
                    if (!ans.hasErrors() && ans.save(flush: true, failOnError: true)) {
                        if(Tbladdquestin.findAllByEname(params.examname).size()>=Integer.parseInt(params.qsnsl) + 1){
                            render view: '/user/userAction', model: [qsnsl: Integer.parseInt(params.qsnsl) + 1, exam: params.examname]
                            return true;
                        }
                        else{
                            flash.message="Exam is over"
                            render view: '/user/userExamselct'
                        }
                    }
                }
                catch (Exception ex) {
                    log.error(ex.getMessage());
                    render view: '/user/userAction'
                }
            }.invalidToken {
                render view: '/user/userAction', model: [qsnsl: Integer.parseInt(params.qsnsl)+1, exam: params.examname]
            }
        }
    }


}


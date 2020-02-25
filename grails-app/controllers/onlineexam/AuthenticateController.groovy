package onlineexam

class AuthenticateController {

    def login() {
        if(request.method.equals("POST")){
            def regdata = Tblstudent.findByEmailidAndPas(params.eid,params.pwd)
            if(regdata){
                session['stuid']=regdata.emailid;
                render view: '/user/userExamselct'
            }
            else
            {
                render view: '/user/userLogin'
            }

        }

    }
    def adminLogin(){
        if(request.method.equals("POST")) {
            def admindata = Tbladmin.findByEmailAndPassword(params.email,params.password)
           if(admindata){
               session['admin']=admindata.name;
               render view: '/admin/userCreation'
           }
            else
           {
               render view: '/admin/adminLogin'
           }

        }
        else{
            render view: '/admin/adminLogin'
        }
    }
}

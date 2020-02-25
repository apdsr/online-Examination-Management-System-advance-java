package onlineexam

import groovy.sql.Sql

class MenuLinkController {
    def dataSource_Reg;
    def db;
    def adminpage(String view) {
        render view : '/admin/'+view;
    }
    def adminadexam(String view) {
        render view : '/admin/'+view;
    }
    def adminquestion(String view) {
        render view : '/admin/'+view;
    }
    def startexam(String view){
        render view: '/user/'+view
    }
    def examresult(String view){
        List<Integer> correctAns= new ArrayList<Integer>()
        List<String> exam=new ArrayList<String>()
        def chk=Tbleanswer?.findAllByUserid(session['stuid'] as String)?.id?.max()
        def examList=Tbleanswer.findAllById(chk).examname
        for(int i=0;i<examList.size();i++){
            String query="select * from Tbleanswer as t1 join Tbladdquestin as t2 on t1.questionid=t2.id  where t1.opt=t2.correctans and ename='${examList[i]}'"
            db=new Sql(dataSource_Reg);
            def correct=db.rows(query);
            correctAns.add(i,correct.size());
            exam.add(i,examList[i]);
        }
        render view: '/user/result',model: [examList:exam,correctAns:correctAns]
    }
    def selectexam(String view){
        render view: '/user/'+view
    }
}

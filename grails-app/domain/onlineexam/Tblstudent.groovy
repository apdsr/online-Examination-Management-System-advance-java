package onlineexam

class Tblstudent {

    String name;
    String dep;
    String sem;
    String emailid;
    String mob;
    String pas;
    String repas;

    static constraints = {
        emailid(email:true,unique:true);


    }
    static mapping = {
        table name: 'Tblstudent';
        id generator: 'org.hibernate.id.enhanced.TableGenerator',
                params: [
                        table_name         : 'table_segs',
                        segment_column_name: 'table_names',
                        value_column_name  : 'next_id',
                        segment_value      : 'Tblstudent_id'

                ]
        datasource('Reg')
        version false
    }
}

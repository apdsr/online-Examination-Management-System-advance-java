package onlineexam

class Tbleanswer {
    String userid;
    String examname;
    int questionid;
    String opt;
//    Date doe=new Date();
    static constraints = {
    }
    static mapping = { table name: 'Tbleanswer';
        id generator: 'org.hibernate.id.enhanced.TableGenerator',
                params: [
                        table_name         : 'table_segs',
                        segment_column_name: 'table_names',
                        value_column_name  : 'next_id',
                        segment_value      : 'Tbleanswer_id'

                ]
        datasource('Reg')
        version false
    }
}

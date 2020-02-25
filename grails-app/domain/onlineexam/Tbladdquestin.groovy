package onlineexam

class Tbladdquestin {
    String ename
    String questionname
    String opt1
    String opt2
    String opt3
    String opt4
    String correctans
    String examdate;
    Date doe = new Date();
    Date dou;
    static constraints = {
        dou(nullable: true, blank: true);

    }
    static mapping = {
        table name: 'Tbladdquestin';
        id generator: 'org.hibernate.id.enhanced.TableGenerator',
                params: [
                        table_name         : 'table_segs',
                        segment_column_name: 'table_names',
                        value_column_name  : 'next_id',
                        segment_value      : 'Tbladdquestin_id'

                ]
        datasource('Reg')
        version false
    }
}

package onlineexam

class Tblexam {
    String name;
    String examdate;
    Date doe = new Date();
    Date dou;

    static constraints = {
        dou(nullable: true, blank: true);
        name(nullable: false);

    }
    static mapping = {
        table name: 'Tblexam';
        id generator: 'org.hibernate.id.enhanced.TableGenerator',
                params: [
                        table_name         : 'table_segs',
                        segment_column_name: 'table_names',
                        value_column_name  : 'next_id',
                        segment_value      : 'Tblexam_id'

                ]
        datasource('Reg')
        version false
    }
}

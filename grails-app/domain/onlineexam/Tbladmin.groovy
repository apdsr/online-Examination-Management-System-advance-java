package onlineexam

class Tbladmin {
    String name;
    String mob;
    String email;
    String password;
    String gender;
    String address;
     Date  doe=new Date();
     Date dou;
    static constraints = {
      dou(nullable: true,blank:true)
        email(unique: true)
    }
    static mapping = {
        table name: 'Tbladmin';
        id generator: 'org.hibernate.id.enhanced.TableGenerator',
                params: [
                        table_name         : 'table_segs',
                        segment_column_name: 'table_names',
                        value_column_name  : 'next_id',
                        segment_value      : 'Tbladmin_id'

                ]
        datasource('Reg')
        version false
    }
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

//import javax.ejb.Stateless;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 *
 *
 */
//@Stateless
public class ordersBean {

    String error;
    List<Object> allData=new ArrayList<Object>();
     

    public String id,quantity,first_name,last_name,phone_number,address,city,zipcode,shipping,cc_number,cc_exp_date,cc_csc;
    Object obj=new Object();
 
    public void setObj(Object obj) {
        this.obj = obj;
    }
    public String getError() {
        return error;
    }
    public List getDb_Data()
    {
        int i=0;
        try
        {
                String qry;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inf124grp12","root","");
                Statement s = con.createStatement();                
//                qry="Select id,quantity,first_name,last_name,phone_number,address,city,zipcode,shipping,cc_number,cc_exp_date,cc_csc from orders";
                qry="Select first_name,last_name,phone_number,address,city,zipcode,shipping,cc_number,cc_exp_date,cc_csc from orders";
                ResultSet r=s.executeQuery(qry);
                while(r.next())
                {
//                    DataFields d=new DataFields(r.getString(1), r.getString(2), r.getString(3),r.getString(4), r.getString(5),r.getString(6),r.getString(7),r.getString(8),r.getString(9),r.getString(10),r.getString(11),r.getString(12));                    
                    DataFields d=new DataFields(r.getString(1), r.getString(2), r.getString(3),r.getString(4), r.getString(5),r.getString(6),r.getString(7),r.getString(8),r.getString(9),r.getString(10));
                    allData.add(i,d);
                    i++;
                }
                 
        }
        catch(Exception ex)
        {
                error="<b>Contact Administrator :</b><br/>" + ex;
                System.out.println("Your query is not working" + ex);
        }
       return allData;
    }
//    public String getid()
//    {
//        this.id=((DataFields)obj).id;
//        return this.id;
//    }
    
//    public String getquantity()
//    {
//        this.quantity=((DataFields)obj).quantity;
//        return this.quantity;
//    }
    public String getfirst_name() {
        this.first_name=((DataFields)obj).first_name;
        return this.first_name;
    }
 
    public String getlast_name() {
        this.last_name=((DataFields)obj).last_name;
        return this.last_name;
    }
    public String getphone_number() {
        this.phone_number=((DataFields)obj).phone_number;
        return this.phone_number;
    }
    public String getaddress() {
        this.address=((DataFields)obj).address;
        return this.address;
    }
    public String getcity() {
        this.city=((DataFields)obj).city;
        return this.city;
    }
    public String getzipcode() {
        this.zipcode=((DataFields)obj).zipcode;
        return this.zipcode;
    }
    
    public String getshipping() {
        this.shipping=((DataFields)obj).shipping;
        return this.shipping;
    }
    
    public String getcc_number() {
        this.cc_number=((DataFields)obj).cc_number;
        return this.zipcode;
    }
    
    public String getcc_exp_date() {
        this.cc_exp_date=((DataFields)obj).cc_exp_date;
        return this.cc_exp_date;
    }
    
    public String getcc_csc() {
        this.cc_csc=((DataFields)obj).cc_csc;
        return this.cc_csc;
    }
    public class DataFields
    {
//        public String id,quantity,first_name,last_name,phone_number,address,city,zipcode,shipping,cc_number,cc_exp_date,cc_csc;
 
        public String first_name,last_name,phone_number,address,city,zipcode,shipping,cc_number,cc_exp_date,cc_csc;
 
//        public DataFields(String  id, String quantity,String first_name,String last_name,String phone_number,String address,String city,String zipcode,String shipping,String cc_number,String cc_exp_date,String cc_csc)
//        {
            public DataFields(String first_name,String last_name,String phone_number,String address,String city,String zipcode,String shipping,String cc_number,String cc_exp_date,String cc_csc)
        {
//            this.id = id;
//            this.quantity=quantity;
            this.first_name=first_name;
            this.last_name=last_name;
            this.phone_number=phone_number;
            this.address=address;
            this.city=city;
            this.zipcode=zipcode;
            this.shipping=shipping;
            this.cc_number=cc_number;
            this.cc_exp_date=cc_exp_date;
            this.cc_csc=cc_csc;
        }
    }
}

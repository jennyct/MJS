/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
//import javax.ejb.Stateless;

/**
 *
 *
 */
//@Stateless
public class shoesBean{

    String error;
    List<Object> allData=new ArrayList<Object>();
     

//    public String id,name,price,color,material,folder_name,description;
    public String name,price,color,material,folder_name,description,quantity;
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
                qry="Select Shoes.name as name ,Shoes.price as price, Shoes.color as color,Shoes.material as material,Shoes.folder_name as folder_name,Shoes.description as description, Orders.quantity as quantity from shoes Shoes, orders Orders where Orders.id = Shoes.id";
                ResultSet r=s.executeQuery(qry);
                while(r.next())
                {
                    DataFields d=new DataFields(r.getString(1), r.getString(2), r.getString(3),r.getString(4), r.getString(5),r.getString(6), r.getString(7));                    
                    allData.add(i,d);
                    i++;
                }
                 
        }
        catch(Exception ex)
        {
                error="<b>Some error :</b><br/>" + ex;
                System.out.println("Your query is not working" + ex);
        }
       return allData;
    }
//    public String getshoeid()
//    {
//        this.id=((DataFields)obj).id;
//        return this.id;
//    }
    
    public String getname()
    {
        this.name=((DataFields)obj).name;
        return this.name;
    }
    public String getprice() {
        this.price=((DataFields)obj).price;
        return this.price;
    }
 
    public String getcolor() {
        this.color=((DataFields)obj).color;
        return this.color;
    }
    public String getmaterial() {
        this.material=((DataFields)obj).material;
        return this.material;
    }
    public String getfolder_name() {
        this.folder_name=((DataFields)obj).folder_name;
        return this.folder_name;
    }
    public String getdescription() {
        this.description=((DataFields)obj).description;
        return this.description;
    }
    
     public String getquantity()
    {
        this.quantity=((DataFields)obj).quantity;
        return this.quantity;
    }
     
     
    public class DataFields
    {

        public String name,price,color,material,folder_name,description,quantity;
 
        public DataFields(String name,String price,String color,String material,String folder_name,String description,String quantity)
        {
//            this.id = id;
            this.name=name;
            this.price=price;
            this.color=color;
            this.material=material;
            this.folder_name=folder_name;
            this.description=description;
            this.quantity = quantity;
            
        }
    }
}

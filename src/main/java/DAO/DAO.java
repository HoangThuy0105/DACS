package DAO;

import Context.DBContext;
import Entity.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    /*---------------------------PRODUCT-------------------------------------*/
    //HOME
    public List<Product> getNewProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select top 8 * from Product ORDER BY ID DESC ";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        } catch (Exception e){}
        return list;
    }
    //ALL-PRODUCT
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        } catch (Exception e){}
        return list;
    }
    //PRODUCT-DETAIL
    public Product getProductById(String id){
        String query = "select * from Product where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()){
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7));
            }
        } catch (Exception e){}
        return null;
    }
    //SEARCH
    public List<Product> searchByName(String txtSearch){
        List<Product> list = new ArrayList<>();
        String query = "select * from Product where [Name1] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%"+txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        } catch (Exception e){}
        return list;
    }
    //DELETE PRODUCT
    public void deleteProduct(String pid){
        String query = "delete from Product where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //INSERT PRODUCT
    public void insertProduct(String id, String name, double price, String title, String color, int gender, String image){
        String query = "insert into Product (ID, Name1, Price, Title, Color, Gender, Image) values (?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setDouble(3, price);
            ps.setString(4, title);
            ps.setString(5, color);
            ps.setInt(6, gender);
            ps.setString(7, image);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //EDIT PRODUCT
    public void editProduct(String name, double price, String title, String color, int gender, String image, String id){
        String query = "update Product set Name1 = ?, Price = ?, Title = ?, Color = ?, Gender = ?, Image = ? where ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setDouble(2, price);
            ps.setString(3, title);
            ps.setString(4, color);
            ps.setInt(5, gender);
            ps.setString(6, image);
            ps.setString(7, id);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //Dem so luong san pham
    public int getTotalProduct(int gender){
        String query = "select count(*) from Product where Gender = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, gender);
            rs = ps.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e){}
        return 0;
    }
    //Phan trang su dung OFFSET FETCH
    public List<Product> getProductMale1(int index){
        List<Product> list = new ArrayList<>();
            String query = "SELECT * FROM Product ORDER BY ID OFFSET ? ROWS FETCH NEXT 8 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index-1)*8);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        }catch (Exception e){}
        return list;
    }
    //FEMALE TOP 8
    public List<Product> getFemale(int gender){
        List<Product> list = new ArrayList<>();
        String query = "select top 8 * from Product where Gender = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, gender);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        } catch (Exception e){}
        return list;
    }
    //OFFSET FETCH bước nhảy 4
    //Load dữ liệu bằng ajax
    public List<Product> getNext8Product(int amount){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM Product ORDER BY ID OFFSET ? ROWS FETCH NEXT 4 ROWS ONLY";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, amount);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        } catch (Exception e){}
        return list;
    }
    //TEST
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getFemale(0);
        for(Product o : list){
            System.out.println(o);
        }
    }
    /*-------------------------------------------------------------------------*/
    /*---------------------------------ACCOUNT----------------------------------*/
    //INSERT ACCOUNT
    public void signup(String email, String fullname, String pass){
        String query = "insert into ACCOUNT1 values (?,?,?,null,null,0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(3, fullname);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e){}
    }
    //GET ACCOUNT
    public List<Account1> getAllAccount(){
        List<Account1> list = new ArrayList<>();
        String query = "select * from ACCOUNT1";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Account1(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6)));
            }
        } catch (Exception e){}
        return list;
    }
    //CHECK ACCOUNT
    public Account1 checkAccountExist(String email){
        String query = "select * from ACCOUNT1 where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account1(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        }catch (Exception e){}
        return null;
    }
    //LOGIN
    public Account1 login(String email, String pass){
        String query = "select * from ACCOUNT1 where email = ? and password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account1(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        }catch (Exception e){}
        return null;
    }
    //EDIT-ACCOUNT
    public void editAccount(int phone, String address, String email){
        String query = "update ACCOUNT1 set phone = ?, Address = ? where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, phone);
            ps.setString(2, address);
            ps.setString(3, email);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //CHANGE PASSWORD
    public void changePassword(String password, String email){
        String query = "update ACCOUNT1 set password = ? where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, email);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //Đếm số lượng account
    public int getTotalAcc(){
        String query = "select count(*) from ACCOUNT1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e){}
        return 0;
    }
    /*--------------------------------------------------------------------------*/
    /*----------------------------------CART-----------------------------------*/
    //INSERT
    public void insertCart(String email, String id){
        String query = "insert into Cart (email, ID, quantity) values (?,?,1)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception e){}
    }
    //ADD CART
    public void AddCart(String email, String id, int quantity){
        String query = "insert into Cart (email, ID, quantity) values (?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, id);
            ps.setInt(3, quantity);
            ps.executeUpdate();
        } catch (Exception e){}
    }
    //PLUS AND SUB
    public void plusCart(int quantity, String ID, String email){
        String query = "update Cart set quantity = ? where ID = ? and email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setString(2, ID);
            ps.setString(3, email);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //get QUANTITY
    public Cart getQuantity(String email, String id){
        String query = "select * from Cart where email = ? and ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Cart(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        }catch (Exception e){}
        return null;
    }
    //GET by EMAIL
    public List<Product> getCartByID(String email){
        List<Product> list = new ArrayList<>();
        String query = "select  p.ID, Name1, Price, Title, Color, Gender, Image, quantity from Cart c join Product p on c.ID = p.ID where email = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e){}
        return list;
    }
    //REMOVE
    public void deleteCart(String pid, String email){
        String query = "delete from Cart where ID = ? and email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.setString(2, email);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //REMOVE by EMAIL (ORDER)
    public void deleteCartByUser(String email){
        String query = "delete from Cart where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //CHECK PRODUCT
    public Cart checkProduct(String id){
        String query = "select * from Cart where ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Cart(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        }catch (Exception e){}
        return null;
    }
    //CHECK ACCOUNT
    public Cart checkUser(String email){
        String query = "select * from Cart where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Cart(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        }catch (Exception e){}
        return null;
    }
    /*-------------------------------------------------------------------------*/
    /*----------------------------HEART---------------------------------------*/
    //INSERT
    public void insertHeart(String email, String id){
        String query = "insert into Heart (email, ID, quantity) values (?,?,1)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, id);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //GET BY EMAIL
    public List<Product> getHeartByID(String email){
        List<Product> list = new ArrayList<>();
        String query = "select  p.ID, Name1, Price, Title, Color, Gender, Image, quantity from Heart h join Product p on h.ID = p.ID where email = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e){}
        return list;
    }
    //REMOVE
    public void deleteHeart(String pid, String email){
        String query = "delete from Heart where ID = ? and email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.setString(2, email);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //CHECK EMAIL HEART
    public Heart checkUserH(String email){
        String query = "select * from Heart where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Heart(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        }catch (Exception e){}
        return null;
    }
    //CHECK PRODUCT HEART
    public Heart checkProductH(String id){
        String query = "select * from Heart where ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Heart(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        }catch (Exception e){}
        return null;
    }
    //get QUANTITY
    public Heart getQuantityH(String email, String id){
        String query = "select * from Heart where email = ? and ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Heart(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        }catch (Exception e){}
        return null;
    }
    //PLUS
    public void plusHeart(int quantity, String ID, String email){
        String query = "update Heart set quantity = ? where ID = ? and email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setString(2, ID);
            ps.setString(3, email);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    /*-------------------------------------------------------------------------*/
    /*---------------------------------ODER------------------------------------*/
    public void addOder(String email, String status, double total){
        String query = "insert into Oder (email, status1, total) values (?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, status);
            ps.setDouble(3, total);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //get ORDER
    public List<Oder> getOderByUser(String email){
        List<Oder> list = new ArrayList<>();
        String query = "select * from Oder where email = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Oder(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4)));
            }
        } catch (Exception e){}
        return list;
    }
    //get order ADMIN
    public List<Oder> getOder(){
        List<Oder> list = new ArrayList<>();
        String query = "select Oderid, o.email, status1,  total, fullname, phone  from Oder o join ACCOUNT1 a on o.email = a.email";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Oder(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6)));
            }
        } catch (Exception e){}
        return list;
    }
    //GET ORDER BY ID
    public Oder getOrderByID(int id){
        String query = "select Oderid, o.email, status1,  total, fullname, phone  from Oder o join ACCOUNT1 a on o.email = a.email where Oderid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Oder(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        }catch (Exception e){}
        return null;
    }
    //UPDATE ORDER BY ID
    public void updateOder(int id, String status){
        String query = "update Oder set status1 = ? where Oderid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setInt(2, id);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //DELETE ORDER BY ID
    public void deleteOrder(int pid){
        String query = "delete from Oder where Oderid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pid);
            ps.executeUpdate();
        }catch (Exception e){}
    }
    //Đếm số lượng đơn hàng
    public int getTotalOrder(){
        String query = "select count(*) from Oder";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e){}
        return 0;
    }
}


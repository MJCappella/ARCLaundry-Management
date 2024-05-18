/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package business;

/**
 *
 * @author Krafty Coder
 */
public class User {
    private String email;
    private String password;
    private String confirmPassword;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String blockName;
    private String hostelName;
    private String roomNumber;
    
    private String pickUp;
    private String time;
    
    
    public User(String string, String string1, String string2)
    {
        email = "";
        password = "";
        confirmPassword = "";
        firstName="";
        lastName="";
        phoneNumber="";
        blockName="";
        hostelName="";
        roomNumber="";
        pickUp="";
        time="";

    }
    
    public User(String gmail, String pass,String confirm,String fname,String lname,String phone,String bname,String hname,String rname,String pick, String item, String wgt)
    {
        email = gmail;
        password = pass;
        confirmPassword = confirm;
        firstName=fname;
        lastName=lname;
        phoneNumber=phone;
        blockName = bname;
        hostelName = hname;
        roomNumber =rname;
        pickUp=pick;

        
    }

    public User(String password, String confirmPassword,String firstName, String lastName,String phoneNumber,String blockName,String hostelName,String roomNumber,String pickUp, String time, String weight) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

//    public User(String email, String password, String confirmPassword,String firstName,String lastName,String phoneNumber,String blockName,String hostelName,String roomNumber) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
    public void setEmailAddress(String e)
    {
        email = e;
    }
    public String getEmailAddress()
    { 
        return email; 
    }
    
    public void setPassword(String pass)
    {
        password = pass;
    }

    public String getPassword()
    { 
        return password; 
    }
    public void setConfirmPassword(String conf)
    {
        confirmPassword = conf;
    }

    public String getConfirmPassword()
    { 
        return confirmPassword; 
    }
    public void setFirstName(String first)
    {
        firstName = first;
    }

    public String getFirstName()
    { 
        return firstName; 
    }
    public void setLastName(String last)
    {
        lastName = last;
    }

    public String getLastName()
    { 
        return lastName; 
    }
    public void setPhoneNumber(String phone)
    {
        phoneNumber = phone;
    }

    public String getPhoneNumber()
    { 
        return phoneNumber; 
    }
     public void setBlockName(String bn)
    {
        blockName = bn;
    }

    public String getBlockName()
    { 
        return blockName; 
    }
    public void setHostelName(String hn)
    {
        hostelName = hn;
    }

    public String getHostelName()
    { 
        return hostelName; 
    }
    public void setRoomNumber(String rn)
    {
        roomNumber = rn;
    }

    public String getRoomNumber()
    { 
        return roomNumber; 
    }
        public void setPickUp(String pu)
    {
        pickUp = pu;
    }

    public String getPickUp()
    { 
        return pickUp; 
    }
        public void setTime(String in)
    {
        time = in;
    }

    public String getTime()
    { 
        return time; 
    }

    
}

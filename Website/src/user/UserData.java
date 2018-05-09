package user;


public class UserData {
    String username;
    String address;
    String name;
    String phone;
    String email;
    String picture;
    String password;
    
    int age;

    public void setUsername( String value )
    {
        username = value;
    }

    public void setAddress( String value )
    {
        address = value;
    }

    public void setName( String value )
    {
        name = value;
    }
    
    public void setPhone( String value )
    {
        phone = value;
    }
    
    public void setEmail( String value )
    {
        email = value;
    }
    
    public void setPicture( String value )
    {
        picture = value;
    }
    
    public void setPassword( String value )
    {
        password = value;
    }
    
    
    

    public String getUsername() { return username; }

    public String getAddress() { return address; }

    public String getName() { return name; }
    
    public String getPhone() { return phone; }
    
    public String getEmail() { return email; }
    
    public String getPicture() { return picture; }
    
    public String getPassword() { return password; }
}
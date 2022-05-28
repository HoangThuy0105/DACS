package Entity;

public class Account {
    private String user;
    private String pass;
    private String fullname;
    private String position;

    public Account(String user, String pass, String fullname, String position) {
        this.user = user;
        this.pass = pass;
        this.fullname = fullname;
        this.position = position;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Override
    public String toString() {
        return "Account{" +
                "user='" + user + '\'' +
                ", pass='" + pass + '\'' +
                ", fullname='" + fullname + '\'' +
                ", position='" + position + '\'' +
                '}';
    }
}

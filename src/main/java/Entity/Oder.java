package Entity;

public class Oder {
    private int oderId;
    private String email;
    private String status;
    private double total;
    private String name;
    private int phone;

    public Oder(int oderId, String email, String status, double total) {
        this.oderId = oderId;
        this.email = email;
        this.status = status;
        this.total = total;
    }
    public Oder(int oderId, String email, String status, double total, String name, int phone) {
        this.oderId = oderId;
        this.email = email;
        this.status = status;
        this.total = total;
        this.name = name;
        this.phone = phone;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public int getOderId() {
        return oderId;
    }

    public void setOderId(int oderId) {
        this.oderId = oderId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}

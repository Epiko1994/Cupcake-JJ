package FunctionLayer;

public class TopCake {

    private int top_id;
    private String top_name;
    private int top_price;

    public TopCake(int top_id, String top_name, int top_price) {
        this.top_id = top_id;
        this.top_name = top_name;
        this.top_price = top_price;
    }

    public int getTop_id() {
        return top_id;
    }

    public void setTop_id(int top_id) {
        this.top_id = top_id;
    }

    public String getTop_name() {
        return top_name;
    }

    public void setTop_name(String top_name) {
        this.top_name = top_name;
    }

    public int getTop_price() {
        return top_price;
    }

    public void setTop_price(int top_price) {
        this.top_price = top_price;
    }
}
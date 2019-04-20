package FunctionLayer;

public class BottomCake {
    private int top_id;
    private String top_name;
    private int top_price;

    public BottomCake(int top_id, String top_name, int top_price) {
        this.top_id = top_id;
        this.top_name = top_name;
        this.top_price = top_price;
    }

    public int getTop_id() {
        return top_id;
    }

    public String getTop_name() {
        return top_name;
    }

    public int getTop_price() {
        return top_price;
    }
}

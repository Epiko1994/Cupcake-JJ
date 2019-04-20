package FunctionLayer;

public class BottomCake {
    private int bottom_id;
    private String bottom_name;
    private int bottom_price;

    public BottomCake(int bottom_id, String bottom_name, int bottom_price) {
        this.bottom_id = bottom_id;
        this.bottom_name = bottom_name;
        this.bottom_price = bottom_price;
    }

    public int getBottom_id() {
        return bottom_id;
    }

    public String getBottom_name() {
        return bottom_name;
    }

    public int getBottom_price() {
        return bottom_price;
    }
}

package FunctionLayer;

import DBAccess.UserMapper;

public class Cupcake {

    private String top;
    private String bottom;


    public String getTop() {
        return top;
    }

    public String getBottom() {
        return bottom;
    }


    public Cupcake (String bottom_name, String top_name) {
        this.top = top_name;
        this.bottom = bottom_name;
    }

}


}

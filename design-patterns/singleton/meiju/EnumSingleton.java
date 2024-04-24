package singleton.meiju;

public enum EnumSingleton {
    INSTANCE;

    private MyObject myObject;

    EnumSingleton() {
        this.myObject = new MyObject();
    }

    public Object getData() {
        return myObject;
    }

    public static EnumSingleton getInstance(){
        return INSTANCE;
    }
}
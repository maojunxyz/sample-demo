package singleton.hungry;

public class HungryStaticSingleton {
    private static final HungryStaticSingleton hungrySigleton;

    static {
        hungrySigleton = new HungryStaticSingleton();
    }

    private HungryStaticSingleton() {
    }

    public static HungryStaticSingleton getInstance(){
        return hungrySigleton;
    }
}
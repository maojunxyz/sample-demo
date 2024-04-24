package singleton.hungry;

public class HungrySingleton {
    private static final HungrySingleton hungrySigleton = new HungrySingleton();

    private HungrySingleton() {
    }

    public static HungrySingleton getInstance(){
        return hungrySigleton;
    }
}
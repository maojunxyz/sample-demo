package simple;

public class Apple implements IProduct {
    @Override
    public void grow() {
        System.out.println("种植苹果");
    }
}
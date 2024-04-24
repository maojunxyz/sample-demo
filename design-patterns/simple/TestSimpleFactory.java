package simple;

public class TestSimpleFactory {
    public static void main(String[] args) {
        SimpleFactory factory = new SimpleFactory();
        IProduct apple = factory.createProduct("app1le");
        apple.grow();//输出：种植苹果

        IProduct orange = factory.createProduct("orange");
        orange.grow();//输出：种植桔子
    }
}
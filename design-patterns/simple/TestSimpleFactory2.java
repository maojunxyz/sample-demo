package simple;

public class TestSimpleFactory2 {
    public static void main(String[] args) throws Exception {
        SimpleFactory factory = new SimpleFactory();
        IProduct apple = factory.createProduct2(Apple.class);
        apple.grow();//输出：种植苹果

        IProduct orange = factory.createProduct2(Orange.class);
        orange.grow();//输出：种植桔子
    }
}
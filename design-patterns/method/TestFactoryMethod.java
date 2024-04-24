package method;

public class TestFactoryMethod {
    public static void main(String[] args) {
        IFarmFactory appleFactory = new AppleFactory();
        IProduct apple = appleFactory.create();
        apple.grow();//输出：种植苹果

        IFarmFactory orangeFactory = new OrangeFactory();
        IProduct orange = orangeFactory.create();
        orange.grow();//输出：种植桔子
    }
}
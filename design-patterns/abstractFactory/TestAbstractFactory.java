package abstractFactory;

public class TestAbstractFactory {
    public static void main(String[] args) {
        IFactory southFarmFactory = new SouthFarmFactory();//构建南方农场
        IApple apple = southFarmFactory.createApple();//获得南方苹果
        apple.growApple();//输出：种植南方苹果

        IOrange orange = southFarmFactory.createOrange();//获得南方桔子
        orange.growOrange();//输出：种植南方桔子
    }
}
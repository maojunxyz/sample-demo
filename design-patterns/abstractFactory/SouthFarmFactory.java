package abstractFactory;

public class SouthFarmFactory implements IFactory {
    @Override
    public IApple createApple() {
        return new SouthApple();//南方农场生产南方苹果
    }

    @Override
    public IOrange createOrange() {
        return new SouthOrange();//南方农场生产南方桔子
    }
}
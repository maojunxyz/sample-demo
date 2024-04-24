package method;

public class AppleFactory implements IFarmFactory {
    @Override
    public IProduct create() {
        return new Apple();//苹果工厂生产苹果
    }
}
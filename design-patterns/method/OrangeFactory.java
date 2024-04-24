package method;

public class OrangeFactory implements IFarmFactory {
    @Override
    public IProduct create() {
        return new Orange();//桔子工厂生产桔子
    }
}
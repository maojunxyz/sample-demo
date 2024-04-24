package abstractFactory;

public class SouthOrange implements IOrange {
    @Override
    public void growOrange() {
        System.out.println("种植南方桔子");
    }
}
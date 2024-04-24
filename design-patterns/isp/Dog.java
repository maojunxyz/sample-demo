package isp;

public class Dog implements IRunAnimal,ISwimAnimal {
    @Override
    public void run() {
        System.out.println("我跑的很快");
    }

    @Override
    public void swim() {
        System.out.println("我还会游泳");
    }
}
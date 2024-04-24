package singleton.meiju;

import java.lang.reflect.Constructor;

public class TestEnumSingleton1 {

    public static void main(String[] args) throws Exception{
        //测试反射是否可以破坏枚举式单例
        Class clazz = EnumSingleton.class;
        Constructor c1 = clazz.getDeclaredConstructor();//无参构造器
        System.out.println(c1.newInstance());
    }
}
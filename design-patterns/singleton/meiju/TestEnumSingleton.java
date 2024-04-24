package singleton.meiju;

public class TestEnumSingleton {
    public static void main(String[] args) throws Exception{
        EnumSingleton enumSingleton = EnumSingleton.getInstance();
        System.out.println(enumSingleton.getData() == enumSingleton.getData());//输出：true
    }
}
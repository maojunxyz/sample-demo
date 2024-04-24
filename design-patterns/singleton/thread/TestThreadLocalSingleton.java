package singleton.thread;

public class TestThreadLocalSingleton {

    public static void main(String[] args) {
        System.out.println(ThreadLocalSingleton.getInstance());//主线程输出
        System.out.println(ThreadLocalSingleton.getInstance());//主线程输出

        Thread t1 = new Thread(()-> {
            ThreadLocalSingleton singleton = ThreadLocalSingleton.getInstance();
            System.out.println(Thread.currentThread().getName() + ":" + singleton);//t1线程输出
        });
        t1.start();
    }
}
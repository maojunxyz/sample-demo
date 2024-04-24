package singleton.thread;

public class ThreadLocalSingleton {
    private ThreadLocalSingleton() {
    }

    private static final ThreadLocal<ThreadLocalSingleton> singleton =
            new ThreadLocal<ThreadLocalSingleton>() {
                @Override
                protected ThreadLocalSingleton initialValue() {
                    return new ThreadLocalSingleton();
                }
            };
    public static ThreadLocalSingleton getInstance(){
        return singleton.get();
    }
}
package strategy;

public class TestPayStrategy2 {
    public static void main(String[] args) {
        IPayStrategy IPayStrategy = PayEnum.getValue("aliPay");
        IPayStrategy.pay(10);
        IPayStrategy.queryBalance();
    }
}
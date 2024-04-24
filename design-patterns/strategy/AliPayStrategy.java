package strategy;

import java.math.BigDecimal;

public class AliPayStrategy implements IPayStrategy {
    @Override
    public boolean pay(int money) {
        System.out.println("支付宝支付成功");
        return true;
    }

    @Override
    public BigDecimal queryBalance() {
        System.out.println("支付宝余额20元");
        return new BigDecimal("20");
    }
}
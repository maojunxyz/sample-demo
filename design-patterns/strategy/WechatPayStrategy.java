package strategy;

import java.math.BigDecimal;

public class WechatPayStrategy implements IPayStrategy {
    @Override
    public boolean pay(int money) {
        System.out.println("微信支付成功");
        return true;
    }

    @Override
    public BigDecimal queryBalance() {
        System.out.println("微信余额10元");
        return new BigDecimal(10);
    }
}
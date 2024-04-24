package strategy;

import java.math.BigDecimal;

public interface IPayStrategy {
    boolean pay(int money);//支付
    BigDecimal queryBalance();//查询余额
}
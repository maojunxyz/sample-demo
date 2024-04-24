package ocp;

import java.math.BigDecimal;

public class Cabbage implements IGoods {
    @Override
    public String getName() {//获取商品名称
        return "蔬菜";
    }

    @Override
    public BigDecimal getSalePrice() {//获取商品每kg出售价格
        return new BigDecimal("3.98");
    }
}
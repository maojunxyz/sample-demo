package strategy;

public enum PayEnum {
    AliPay("aliPay",new AliPayStrategy()),
    WechatPay("wechatPay",new WechatPayStrategy());

    private String key;
    private IPayStrategy value;

    PayEnum(String key, IPayStrategy value) {
        this.key = key;
        this.value = value;
    }

    public static IPayStrategy getValue(String key){
        for (PayEnum payEnum : PayEnum.values()){//遍历枚举类
            if (payEnum.key.equals(key)){
                return payEnum.value;
            }
        }
       return new AliPayStrategy();//没有合适key则默认支付宝支付
    }
}
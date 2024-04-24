package srp;

public class Goods {
    public void action(String type){
        if ("进货".equals(type)){
            System.out.println("我要去进货了");
        }else if("售卖".equals(type)){
            System.out.println("我要卖商品");
        }
    }
}
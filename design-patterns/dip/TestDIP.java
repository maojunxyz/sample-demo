package dip;

public class TestDIP {
    public static void main(String[] args) {
        SuperMarket superMarket = new SuperMarket();
        superMarket.sale(new Cabbage());//输出：我有蔬菜可以卖
    }
}
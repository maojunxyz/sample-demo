package lod;

public class Manager {
    private Cabbage cabbage;
    public Manager(Cabbage cabbage) {
        this.cabbage = cabbage;
    }
    public void getCabbageSaleMoney(){
        cabbage.saleRecord();
    }
}
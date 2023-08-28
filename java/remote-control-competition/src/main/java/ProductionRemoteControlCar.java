class ProductionRemoteControlCar implements RemoteControlCar, Comparable<ProductionRemoteControlCar> {
    private int driveUnit = 0;
    private int numberOfVictories = 0;

    public void drive() {
        driveUnit += 10;
    }

    public int getDistanceTravelled() {
        return this.driveUnit;
    }

    public int getNumberOfVictories() {
        return this.numberOfVictories;
    }

    public void setNumberOfVictories(int numberOfVictories) {
        this.numberOfVictories = numberOfVictories;
    }

    @Override
    public int compareTo(ProductionRemoteControlCar prc) {
        return prc.numberOfVictories - this.numberOfVictories;
    }
}

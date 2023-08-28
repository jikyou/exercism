public class ExperimentalRemoteControlCar implements RemoteControlCar {
    private int driveUnit = 0;

    public void drive() {
        driveUnit += 20;
    }

    public int getDistanceTravelled() {
        return this.driveUnit;
    }
}

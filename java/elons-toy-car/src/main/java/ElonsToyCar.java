public class ElonsToyCar {
    private int driveMeters = 0;
    private int battery = 100;

    public static ElonsToyCar buy() {
        return new ElonsToyCar();
    }

    public String distanceDisplay() {
        return "Driven " + driveMeters + " meters";
    }

    public String batteryDisplay() {
        if (this.battery == 0) {
            return "Battery empty";
        }
        return "Battery at " + (100 - driveMeters / 20) + "%";
    }

    public void drive() {
        if (this.battery != 0) {
            this.driveMeters += 20;
            this.battery--;
        }
    }
}

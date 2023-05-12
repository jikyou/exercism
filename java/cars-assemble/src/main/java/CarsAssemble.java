public class CarsAssemble {

    static final int ProducedCarEachHour = 221;

    public double productionRatePerHour(int speed) {
        if (speed <= 0 || speed > 10) {
            return 0;
        }
        int producedCarsInLowSpeed = speed * ProducedCarEachHour;
        if (speed >= 1 && speed <= 4) {
            return producedCarsInLowSpeed;
        }
        if (speed >= 5 && speed <= 8) {
            return producedCarsInLowSpeed * 0.9;
        }
        if (speed == 9) {
            return producedCarsInLowSpeed * 0.8;
        }
        {
            return producedCarsInLowSpeed * 0.77;
        }
    }

    public int workingItemsPerMinute(int speed) {
        return (int) (productionRatePerHour(speed) / 60);
    }
}

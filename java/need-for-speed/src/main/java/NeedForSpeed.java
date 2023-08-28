class NeedForSpeed {
    private int speed;
    private int batteryDrain;
    private int drivenMeters = 0;
    private int remainBattery = 100;

    public NeedForSpeed(int speed, int batteryDrain) {
        this.speed = speed;
        this.batteryDrain = batteryDrain;
    }

    public boolean batteryDrained() {
        return this.remainBattery == 0;
    }

    public int distanceDriven() {
        return this.drivenMeters;
    }

    public void drive() {
        if (this.batteryDrained()) {
            return;
        }
        this.drivenMeters += this.speed;
        this.remainBattery -= this.batteryDrain;
    }

    public static NeedForSpeed nitro() {
        return new NeedForSpeed(50, 4);
    }
}

class RaceTrack {
    private int distance;

    public RaceTrack(int distance) {
        this.distance = distance;
    }

    public boolean tryFinishTrack(NeedForSpeed car) {
        while (!car.batteryDrained()) {
            car.drive();
            if (car.distanceDriven() >= this.distance) {
                return true;
            }
        }
        return false;
    }
}

import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneOffset;

public class Gigasecond {
    private long seconds = 0;

    public Gigasecond(LocalDate moment) {
        Instant instant = moment.atStartOfDay(ZoneOffset.UTC).toInstant();
        this.seconds = instant.getEpochSecond();
    }

    public Gigasecond(LocalDateTime moment) {
        Instant instant = moment.toInstant(ZoneOffset.UTC);
        this.seconds = instant.getEpochSecond();
    }

    public LocalDateTime getDateTime() {
        return Instant.ofEpochSecond(this.seconds + (long) Math.pow(10, 9)).atZone(ZoneOffset.UTC).toLocalDateTime();
    }
}

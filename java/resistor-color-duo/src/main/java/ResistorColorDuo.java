import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

class ResistorColorDuo {

    private final Map<String, Integer> COLOR_CODES = new HashMap<>() {
        {
            put("black", 0);
            put("brown", 1);
            put("red", 2);
            put("orange", 3);
            put("yellow", 4);
            put("green", 5);
            put("blue", 6);
            put("violet", 7);
            put("grey", 8);
            put("white", 9);
        }
    };

    int value(String[] colors) {
        return Arrays.stream(colors)
                .map(c -> COLOR_CODES.get(c))
                .limit(2)
                .reduce(0, (a, b) -> a * 10 + b);
    }
}

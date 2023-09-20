import java.util.HashMap;
import java.util.Map;

class ResistorColor {
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

    int colorCode(String color) {
        return COLOR_CODES.get(color);
    }

    String[] colors() {
        return COLOR_CODES.entrySet().stream()
                .sorted(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey)
                .toArray(String[]::new);
    }
}

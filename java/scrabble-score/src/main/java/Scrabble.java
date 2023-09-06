import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

class Scrabble {
    private static Map<String, Integer> LETTER_SCORE = new HashMap<>(26);
    private String word;

    static {
        Arrays.stream("AEIOULNRST".split("")).forEach(c -> LETTER_SCORE.put(c, 1));
        Arrays.stream("DG".split("")).forEach(c -> LETTER_SCORE.put(c, 2));
        Arrays.stream("BCMP".split("")).forEach(c -> LETTER_SCORE.put(c, 3));
        Arrays.stream("FHVWY".split("")).forEach(c -> LETTER_SCORE.put(c, 4));
        Arrays.stream("K".split("")).forEach(c -> LETTER_SCORE.put(c, 5));
        Arrays.stream("JX".split("")).forEach(c -> LETTER_SCORE.put(c, 8));
        Arrays.stream("QZ".split("")).forEach(c -> LETTER_SCORE.put(c, 10));
    }

    Scrabble(String word) {
        this.word = word.toUpperCase();
    }

    int getScore() {
        if (this.word == "") {
            return 0;
        }

        int totalScore = 0;
        for (String str : this.word.split("")) {
            totalScore += Scrabble.LETTER_SCORE.get(str);
        }
        return totalScore;
    }

}

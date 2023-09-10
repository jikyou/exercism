import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

class Anagram {
    private String word;

    public Anagram(String word) {
        this.word = word.toLowerCase();
    }

    public List<String> match(List<String> candidates) {
        var wordChars = this.word.toCharArray();
        Arrays.sort(wordChars);
        return candidates.stream().filter(word -> {
            word = word.toLowerCase();
            if (word.equals(this.word)) {
                return false;
            }

            var tempChars = word.toCharArray();
            Arrays.sort(tempChars);
            return new String(tempChars).equals(new String(wordChars));
        }).collect(Collectors.toList());
    }

}

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

class Anagram {
    private String word;

    public Anagram(String word) {
        this.word = word;
    }

    public List<String> match(List<String> candidates) {
        var sortedWord = sort(this.word);
        return candidates.stream()
                .filter(word -> !word.equalsIgnoreCase(this.word))
                .filter(word -> word.length() == this.word.length())
                .filter(word -> sort(word).equals(sortedWord))
                .collect(Collectors.toList());
    }

    private String sort(String word) {
        return word.toLowerCase()
                .chars()
                .mapToObj(c -> String.valueOf(c))
                .sorted()
                .collect(Collectors.joining());
    }

}

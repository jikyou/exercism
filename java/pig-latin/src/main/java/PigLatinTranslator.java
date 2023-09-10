import java.util.Arrays;
import java.util.stream.Collectors;

class PigLatinTranslator {

    private final String[] Vowels = new String[] { "a", "e", "i", "o", "u", "xr", "yt" };
    private final String[] ConsonantBlends = new String[] {
            "bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr",
            "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu",
            "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw",
            "th", "tr", "tw", "wh", "wr",
            "rh", // ?
            "nth", "sch", "scr", "shr", "spl", "spr", "str", "thr" };
    // "squ",

    public String translate(String word) {
        return Arrays.stream(word.split("\\s")).map(w -> this.translateByWord(w)).collect(Collectors.joining(" "));
    }

    private String translateByWord(String word) {
        if (Arrays.stream(Vowels).anyMatch(v -> word.startsWith(v))) {
            return word + "ay";
        }

        var blends = Arrays.stream(ConsonantBlends).filter(b -> word.startsWith(b)).toArray(String[]::new);
        var endIndex = 1;
        if (blends.length > 0) {
            endIndex += blends[blends.length - 1].length() - 1;
        }

        if (word.length() > endIndex + 1 && word.substring(endIndex, endIndex + 2).equals("qu")) {
            endIndex += 2;
        }

        return word.substring(endIndex) + word.substring(0, endIndex) + "ay";
    }

}
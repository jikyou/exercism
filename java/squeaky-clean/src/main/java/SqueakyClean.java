import java.util.regex.Pattern;

class SqueakyClean {
    static String clean(String identifier) {
        identifier = identifier
                .replaceAll("[\\p{Cntrl}]", "CTRL")
                .replaceAll("\\s", "_")
                .replaceAll("[^a-zA-Z\\-_àḃçΟĐ]", "");

        var newIdentifier = "";
        var isNeedUpperCase = false;
        for (char c : identifier.toCharArray()) {
            if (c == '-') {
                isNeedUpperCase = true;
            } else {
                if (isNeedUpperCase) {
                    c = Character.toUpperCase(c);
                    isNeedUpperCase = false;
                }
                newIdentifier += c;
            }
        }

        return newIdentifier;
    }
}

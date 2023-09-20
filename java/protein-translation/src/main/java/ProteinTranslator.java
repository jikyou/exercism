import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

class ProteinTranslator {

    private final Map<String, String> CODON_PROTEINS = new HashMap<>();

    {
        CODON_PROTEINS.put("AUG", "Methionine");
        List.of("UUU", "UUC", "UUU", "UUC").forEach(c -> CODON_PROTEINS.put(c, "Phenylalanine"));
        List.of("UUA", "UUG").forEach(c -> CODON_PROTEINS.put(c, "Leucine"));
        List.of("UCU", "UCC", "UCA", "UCG").forEach(c -> CODON_PROTEINS.put(c, "Serine"));
        List.of("UAU", "UAC").forEach(c -> CODON_PROTEINS.put(c, "Tyrosine"));
        List.of("UGU", "UGC").forEach(c -> CODON_PROTEINS.put(c, "Cysteine"));
        List.of("UGG").forEach(c -> CODON_PROTEINS.put(c, "Tryptophan"));
        List.of("UAA", "UAG", "UGA").forEach(c -> CODON_PROTEINS.put(c, "STOP"));
    }

    List<String> translate(String rnaSequence) {
        var codons = new ArrayList<String>();
        for (int i = 0; i < rnaSequence.length(); i += 3) {
            int end = (i + 3) < rnaSequence.length() ? (i + 3) : rnaSequence.length();
            codons.add(rnaSequence.substring(i, end));
        }

        return codons.stream()
                .map(r -> CODON_PROTEINS.getOrDefault(r, "STOP"))
                .takeWhile(r -> !r.equals("STOP"))
                .collect(Collectors.toList());
    }
}

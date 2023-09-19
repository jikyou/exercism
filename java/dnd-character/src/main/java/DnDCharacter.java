import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

class DnDCharacter {
    private final Map<Ability, Integer> abilities = new HashMap<>();

    int ability(List<Integer> scores) {
        return scores.stream().sorted().skip(1).collect(Collectors.summingInt(Integer::intValue));
    }

    List<Integer> rollDice() {
        return Arrays.asList(rollSixDice(), rollSixDice(), rollSixDice(), rollSixDice());
    }

    private int rollSixDice() {
        return (int) Math.ceil(Math.random() * 6);
    }

    int modifier(int input) {
        return (int) Math.floor((input - 10) / 2.0);
    }

    int getStrength() {
        return getAbility(Ability.Strength);
    }

    int getDexterity() {
        return getAbility(Ability.Dexterity);
    }

    int getConstitution() {
        return getAbility(Ability.Constitution);
    }

    int getIntelligence() {
        return getAbility(Ability.Intelligence);
    }

    int getWisdom() {
        return getAbility(Ability.Wisdom);
    }

    int getCharisma() {
        return getAbility(Ability.Charisma);
    }

    private int getAbility(Ability ability) {
        if (!abilities.containsKey(ability)) {
            abilities.put(ability, ability(rollDice()));
        }
        return abilities.get(ability);
    }

    int getHitpoints() {
        return 10 + modifier(getConstitution());
    }
}

enum Ability {
    Strength,
    Dexterity,
    Constitution,
    Intelligence,
    Wisdom,
    Charisma,
}
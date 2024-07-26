module Blackjack

  CARD_VALUES = {
    "ace" => 11,
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9,
    "ten" => 10,
    "jack" => 10,
    "queen" => 10,
    "king" => 10,
    "other" => 0,
  };

  def self.parse_card(card)
    CARD_VALUES[card] || CARD_VALUES["other"]
  end

  def self.card_range(card1, card2)
    case CARD_VALUES[card1] + CARD_VALUES[card2]
    when(4..11)
      "low"
    when(12..16)
      "mid"
    when(17..20)
      "high"
    when(21)
      "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    return "P" if card1 == card2 && card1 == "ace"

    case CARD_VALUES[card1] + CARD_VALUES[card2]
    when 21
      return "W" if dealer_card != "ace" && dealer_card != "ten"
      "S"
    when (17..20)
      "S"
    when (12..16)
      return "H" if (CARD_VALUES[dealer_card] >= 7)
      "S"
    when (0..11)
      "H"
    end
  end
end

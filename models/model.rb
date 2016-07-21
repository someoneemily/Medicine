def evaluate(symptom)
  @symptoms_hash = {
    "Weak/Uneasy" => ["Tylenol", "Advil", "Mucinex"],
    "Dizzy/Light Headed" => ["Excedrin", "Tylenol", "Motrin"],
    "Uncomfortable/Indifferent to foods." => ["Emetrol", "pre-vacid", "Nexium"]
  }

  @symptoms_hash[symptom]
end

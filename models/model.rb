<<<<<<< HEAD
<<<<<<< HEAD
def describe(adj="actual human sunshine")
  "Karlie is #{adj}"
=======
=======
>>>>>>> e799990e49e6a97a64745db1a6a30c43bcd58067
def evaluate(symptom)
  @symptoms_hash = {
    "nausea" => ["nausea med1", "nausea med2"],
    "headaches" => ["headaches med1", "headaches med2"],
    "fever" => ["fever med1", "fever med2"]
  }
<<<<<<< HEAD
  params[:symptom]
>>>>>>> 74102782eac951655554ef7c886d34946848288e
=======
  @symptoms_hash[symptom]
>>>>>>> e799990e49e6a97a64745db1a6a30c43bcd58067
end

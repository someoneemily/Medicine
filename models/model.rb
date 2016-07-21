def evaluate(symptom)
  @symptoms_hash = {
    "Weak/Uneasy" => ["Tylenol", "Advil", "Mucinex"],
    "Dizzy/Light Headed" => ["Excedrin", "Tylenol", "Motrin"],
    "Uncomfortable/Indifferent to foods." => ["Emetrol", "Prevacid", "Nexium"]
  }

  @symptoms_hash[symptom]
end

def getpics(medhash)
  medpics = {
    "Tylenol" => "http://c4.soap.com/images/products/p/jj/jj-301_1z.jpg",
    "Excedrin" => "http://s.wsj.net/public/resources/images/OB-TX459_excedr_E_20120726122308.jpg",
    "Motrin" => "",
    "Prevacid" => "",
    "Emetrol" => "",
    "Nexium" => "",
    "Advil" => "",
    "Mucinex" => "",
  }
  medpics
end

def getdescrip(medhash)
  meddescrip = {
    "Tylenol" => "",
    "Excedrin" => "",
    "Motrin" => "",
    "Prevacid" => "",
    "Emetrol" => "",
    "Nexium" => "",
    "Advil" => "",
    "Mucinex" => "",
  }
  meddesarray = []
  medhash.each do |med|
    meddesarray.push(meddescrip[med])
  end
  meddesarray
end
def feedback(painlevel)
  if painlevel<5
    "Rest up, Stay hydrated, Eat healthy food"
  elsif painlevel>=5
    "Please contact your nearest doctor/physician"
  end
end

def evaluate(symptom)
  @symptoms_hash = {
    "Weak/Uneasy" => ["Tylenol", "Advil", "Mucinex"],
    "Dizzy/Light Headed" => ["Excedrin", "Tylenol", "Motrin"],
    "Uncomfortable/Indifferent to foods" => ["Emetrol", "Prevacid", "Nexium"]
  }
  @symptoms_hash[symptom]
end

def getpics(medhash)
  medpics = {
    "Tylenol" => "http://c4.soap.com/images/products/p/jj/jj-301_1z.jpg",
    "Excedrin" => "http://s.wsj.net/public/resources/images/OB-TX459_excedr_E_20120726122308.jpg",
    "Motrin" => "http://scene7.samsclub.com/is/image/samsclub/0030045048137_A?$img_size_380x380$",
    "Prevacid" => "http://www.druglawsuitsource.com/wp-content/uploads/2016/07/Prevacid-300x300.jpg",
    "Emetrol" => "http://www.prestoimages.net/graphics08/648_pd195197_1.jpg",
    "Nexium" => "http://mms.businesswire.com/media/20140527005752/en/416299/4/Nex_245042_f.jpg",
    "Advil" => "https://www.conney.com/WEBSPHERE/FULLSIZE/25040.GIF",
    "Mucinex" => "http://drugsdetails.com/wp-content/uploads/2016/03/mucinex.jpg",
  }
  medpics
end

def getdescrip(medhash)
  meddescrip = {
    "Tylenol" => "Tylenol (acetaminophen) is a pain reliever and a fever reducer used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers.",
    "Excedrin" => "Excedrin is used specifically for alleivating headaches and is the leader in headache pain relief",
    "Motrin" => "Motrin is a pain reliever and fever reducer for both adults and children (contains ibuprofen)",
    "Prevacid" => "Prevacid decreases the amount of acid that is produced in your stomach. It can be used to treat stomach ulcers, a damaged esophagus, gastroesophageal reflux disease (GERD), and high levels of stomach acid",
    "Emetrol" => "Emetrol is taken primarily to relieve nausea and vomiting",
    "Nexium" => "Nexium treats symptoms of acid reflux disease (heartburn for 2 or more days)",
    "Advil" => "Advil is a pain reliever for headaches, migraines, back pains, and joint pains. ",
    "Mucinex" => "Mucinex can be used to treat a variety of cold and flu symptoms such as chest congestion, sore throats, and runny noses.",
  }
  meddescrip
end
def feedback(painlevel)
  if painlevel.to_i<5
    "Rest up, Stay hydrated, Eat healthy food"
  elsif painlevel.to_i>=5
    "Please contact your nearest doctor/physician"
  end
end
def pain_area(area)
  pain_to_med = {
    "Head" => ["Tylenol", "Excedrin", "Advil"],
    "Stomach" => ["Prevacid", "Nexium"],
    "My entire body" => ["Tylenol", "Motrin", "Advil", "Mucinex"]
  }
  pain_to_med
end
def thentonow(betterorworse)
  if betterorworse == "Better"
    "We see that you indicated you are feeling better! That's great news. :)"
  else
    "You may want to think about visiting a doctor if your conditions get worse!"
  end
end

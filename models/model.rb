def evaluate(symptom)
  @symptoms_hash = {
    :nausea => ["nausea med1", "nausea med2"],
    :headaches => ["headaches med1", "headaches med2"],
    :fever => ["fever med1", "fever med2"]
  }
  params[:symptom]
end

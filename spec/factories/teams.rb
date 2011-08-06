Factory.define :team do |t|
  t.name { Factory.next :somestring }
end

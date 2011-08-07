Factory.define :task do |t|
  t.cross { Factory.create :cross }
  t.content { Factory.next :sometext}
  t.answer { Factory.next :somestring }
  t.first_hint { Factory.next :somestring }
  t.second_hint { Factory.next :somestring }
  t.third_hint { Factory.next :somestring }
end

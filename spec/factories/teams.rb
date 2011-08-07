Factory.define :team do |t|
  t.name { Factory.next :somestring }
  t.email { Factory.next :email }
  password = Factory.next :somestring
  t.password password
  t.password_confirmation password
end

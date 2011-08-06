Factory.define :cross do |c|
  c.name { Factory.next :somestring }
  c.active true
  c.start { Time.now }
end

require 'pry'
require_relative './bloodoath'
require_relative './cult'
require_relative './followers'

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

keystone = Cult.new('keystone', 'dillon',1800, 'full send')
breck = Cult.new('breck', 'frisco',1900, 'powder day')
vail = Cult.new('vail', 'eagle',2000, 'groomers')
bc = Cult.new('bc', 'eagle',2010, 'lift line')

adam = Follower.new('adam', 18, 'just do it')
bill = Follower.new('bill', 20, 'get rich')
chris = Follower.new('chris',22, 'be happy')
dan = Follower.new('dan', 24, 'im dope and i do dope things')
evan = Follower.new('evan',26, 'protect and serve')
greg = Follower.new('greg',28, 'who am i')

oath1 = BloodOath.new(keystone, adam, '2020/1/1')
oath2 = BloodOath.new(breck, bill, '2020/1/2')
oath3 = BloodOath.new(vail, chris, '2020/1/1')
oath4 = BloodOath.new(bc, dan,'2020/1/1')
oath5 = BloodOath.new(keystone, evan, '2020/1/1')
oath6 = BloodOath.new(breck, greg,'2019/1/5')
oath7 = BloodOath.new(vail, adam,'2017/1/5')
oath8 = BloodOath.new(bc, bill,'2017/1/15')
oath9 = BloodOath.new(keystone, chris, '2018/1/5')
oath10 = BloodOath.new(breck, dan, '2020/1/13')
oath11 = BloodOath.new(vail, evan, '2020/1/5')
oath12 = BloodOath.new(keystone, dan, '2020/12/1')
oath13 = BloodOath.new(keystone, greg, '2020/10/1')
oath14 = BloodOath.new(vail, bill, '2020/11/15')
oath15 = BloodOath.new(vail, dan, '2020/9/5')


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
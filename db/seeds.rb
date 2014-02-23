# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# coding: utf-8

admin = User.create(name: 'admin', email: 'admin@local.host', password: 'password')

event = Event.create(name: 'introduction', description: 'an introduction to CTF_portal', start_datetime: '2014/02/20 00:00:00', end_datetime: '2698/03/02 00:00:00')
event_test1 = Event.create(name: 'test event', description: 'test event', start_datetime: '2013/03/20 00:00:00', end_datetime: '2013/03/21 00:00:00')
event_test2 = Event.create(name: 'test event', description: 'test event', start_datetime: '2014/03/20 00:00:00', end_datetime: '2014/03/21 00:00:00')

EventUser.create(user: admin, event: event)

forensics = Genre.create(name: 'forensics')
programming_crypt = Genre.create(name: 'programming, crypt')
binary = Genre.create(name: 'binary')
network_web = Genre.create(name: 'network, web')
etc = Genre.create(name: 'etc')

q1 = Question.create(name: 'echo', description: 'say "Hello World"', answer: 'Hello World', genre: etc, default_point: 100)
q2 = Question.create(name: 'expr', description: '1 + 2', answer: '3', genre: etc, default_point: 100)

eq1 = EventQuestion.create(order_number: 1, point: 100, question: q1)
eq2 = EventQuestion.create(order_number: 2, point: 100, question: q2)

event.event_questions.push eq1
event.event_questions.push eq2
event.save

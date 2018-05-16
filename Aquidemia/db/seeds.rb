# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'opendata', 'Gyms.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  g = Gym.new
  g.rpa = row['rpa']
  g.microregion = row['micro_regiao']
  g.cnes = row['cnes']
  g.name = row['academia_nome']
  g.adress = row['endereco']
  g.bairro = row['bairro']
  g.phone = row['fone']
  g.latitude = row['latitude']
  g.longitude = row['longitude']
  g.hour = row['horario_de_aulas']
  g.rating = 0
  g.save
end

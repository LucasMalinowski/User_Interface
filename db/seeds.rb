# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

states = [
  {name: "Acre", initial: "AC"},
  {name: "Alagoas", initial: "AL"},
  {name: "Amapá", initial: "AP"},
  {name: "Amazonas", initial: "AM"},
  {name: "Bahia", initial: "BA"},
  {name: "Ceará", initial: "CE"},
  {name: "Distrito Federal", initial: "DF"},
  {name: "Espírito Santo", initial: "ES"},
  {name: "Goiás", initial: "GO"},
  {name: "Maranhão", initial: "MA"},
  {name: "Mato Grosso", initial: "MT"},
  {name: "Mato Grosso do Sul", initial: "MS"},
  {name: "Minas Gerais", initial: "MG"},
  {name: "Pará", initial: "PA"},
  {name: "Paraíba", initial: "PB"},
  {name: "Paraná", initial: "PR"},
  {name: "Pernambuco", initial: "PE"},
  {name: "Piauí", initial: "PI"},
  {name: "Rio de Janeiro", initial: "RJ"},
  {name: "Rio Grande do Norte", initial: "RN"},
  {name: "Rio Grande do Sul", initial: "RS"},
  {name: "Rondônia", initial: "RO"},
  {name: "Roraima", initial: "RR"},
  {name: "Santa Catarina", initial: "SC"},
  {name: "São Paulo", initial: "SP"},
  {name: "Sergipe", initial: "SE"},
  {name: "Tocantins", initial: "TO"}
]

states.each do |state|
  State.find_or_create_by!(state)
end
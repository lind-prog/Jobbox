User.destroy_all

User.create!(
  name: "duke Kaboom",
  email: "tata@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 12 34 56 78",
  address: "15 Rue Fondaudège, 33000 Bordeaux",
  diplome: "J'ai obtenu une Licence en Informatique suivie d'un Master en Sciences des Données à l'Université de Paris-Saclay, où j'ai développé une expertise en algorithmes et en analyse de données",
  experience: "j'ai travaillé comme ingénieur en intelligence artificielle chez TechInnov, où j'ai conçu des solutions d'apprentissage automatique et optimisé des systèmes de recommandation, tout en dirigeant des projets de R&D pour améliorer les performances des produits technologiques.",

)


User.create!(
  name: "techInnov",
  email: "toto@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
)

puts "votre profil a bien été créé"


# Seeds pour Bordeaux

JobOffer.create!(
  title: "Développeur Full Stack",
  city: "Bordeaux",
  contract_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  sector: "Technologie",
  location: "15 Rue Fondaudège, 33000 Bordeaux"
)

JobOffer.create!(
  title: "Chef de Projet Digital",
  city: "Bordeaux",
  contract_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "50k€ - 60k€",
  sector: "Marketing",
  location: "23 Rue Vital Carles, 33000 Bordeaux"
)

JobOffer.create!(
  title: "Responsable Marketing",
  city: "Bordeaux",
  contract_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Doctorat",
  salary: "> 50k€",
  sector: "Marketing",
  location: "35 Cours de Verdun, 33000 Bordeaux"
)

JobOffer.create!(
  title: "Ingénieur DevOps",
  city: "Bordeaux",
  contract_type: "CDI",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "30k€ - 40k€",
  sector: "Technologie",
  location: "8 Rue Elie Gintrac, 33000 Bordeaux"
)

JobOffer.create!(
  title: "Analyste Financier",
  city: "Bordeaux",
  contract_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  sector: "Finance",
  location: "14 Rue des Bahutiers, 33000 Bordeaux"
)

JobOffer.create!(
  title: "Chargé de Communication",
  city: "Bordeaux",
  contract_type: "CDD",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "20k€ - 30k€",
  sector: "Communication",
  location: "22 Rue Sainte-Catherine, 33000 Bordeaux"
)

JobOffer.create!(
  title: "Technicien Réseau",
  city: "Bordeaux",
  contract_type: "CDI",
  experience_level: "2-3 ans",
  study_level: "Bac+2",
  salary: "30k€ - 40k€",
  sector: "Technologie",
  location: "7 Place Pey-Berland, 33000 Bordeaux"
)

JobOffer.create!(
  title: "Responsable Logistique",
  city: "Bordeaux",
  contract_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Bac+3",
  salary: "40k€ - 50k€",
  sector: "Logistique",
  location: "11 Quai de Paludate, 33800 Bordeaux"
)

# Seeds pour Paris

JobOffer.create!(
  title: "Consultant en Stratégie",
  city: "Paris",
  contract_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "70k€ - 80k€",
  sector: "Consulting",
  location: "25 Avenue de l'Opéra, 75001 Paris"
)

JobOffer.create!(
  title: "Data Scientist",
  city: "Paris",
  contract_type: "CDI",
  experience_level: "2-5 ans",
  study_level: "Master",
  salary: "50k€ - 60k€",
  sector: "Technologie",
  location: "45 Rue de Rennes, 75006 Paris"
)

JobOffer.create!(
  title: "Ingénieur Sécurité Réseau",
  city: "Paris",
  contract_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "60k€ - 70k€",
  sector: "Technologie",
  location: "30 Rue du Faubourg Saint-Honoré, 75008 Paris"
)

JobOffer.create!(
  title: "Product Owner",
  city: "Paris",
  contract_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "45k€ - 55k€",
  sector: "Technologie",
  location: "12 Boulevard Haussmann, 75009 Paris"
)

JobOffer.create!(
  title: "Architecte Cloud",
  city: "Paris",
  contract_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Doctorat",
  salary: "> 50k€",
  sector: "Technologie",
  location: "22 Rue de Rivoli, 75004 Paris"
)

JobOffer.create!(
  title: "Responsable des Ressources Humaines",
  city: "Paris",
  contract_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Master",
  salary: "70k€ - 80k€",
  sector: "Ressources Humaines",
  location: "18 Rue de la Paix, 75002 Paris"
)

JobOffer.create!(
  title: "Chef de Produit Marketing",
  city: "Paris",
  contract_type: "CDD",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "35k€ - 45k€",
  sector: "Marketing",
  location: "16 Rue de la République, 75011 Paris"
)

JobOffer.create!(
  title: "Chargé de Recrutement",
  city: "Paris",
  contract_type: "CDD",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "30k€ - 35k€",
  sector: "Ressources Humaines",
  location: "5 Rue de la Boétie, 75008 Paris"
)

puts Offer.count

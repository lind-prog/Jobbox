# Destroy all existing users and offers
puts "Destroy start"
Match.destroy_all
Offer.destroy_allrails
UserJobSearch.destroy_all
User.destroy_all
puts "Destroy end"

# Creating users
User.create!(
  name: "duke Kaboom",
  email: "tata@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 12 34 56 78",
  address: "15 Rue Fondaudège, 33000 Bordeaux",
  diplome: "J'ai obtenu une Licence en Informatique suivie d'un Master en Sciences des Données à l'Université de Paris-Saclay, où j'ai développé une expertise en algorithmes et en analyse de données",
  experience: "j'ai travaillé comme ingénieur en intelligence artificielle chez TechInnov, où j'ai conçu des solutions d'apprentissage automatique et optimisé des systèmes de recommandation, tout en dirigeant des projets de R&D pour améliorer les performances des produits technologiques."
)

recruiter=User.create!(
  name: "techInnov",
  email: "toto@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1
)

puts "votre profil a bien été créé"

# Seeds for Bordeaux
Offer.create!(
  title: "Développeur Full Stack",
  contrat_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  sector: "Technologie",
  address: "15 Rue Fondaudège, 33000 Bordeaux",
  recruiter: recruiter
)


Offer.create!(
  title: "Chef de Projet Digital",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "50k€ - 60k€",
  sector: "Marketing",
  address: "23 Rue Vital Carles, 33000 Bordeaux",
  recruiter: recruiter
)


Offer.create!(
  title: "Responsable Marketing",
  contrat_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Doctorat",
  salary: "50k€",
  sector: "Marketing",
  address: "35 Cours de Verdun, 33000 Bordeaux",
  recruiter: recruiter
)


Offer.create!(
  title: "Ingénieur DevOps",
  contrat_type: "CDI",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "30k€ - 40k€",
  sector: "Technologie",
  address: "8 Rue Elie Gintrac, 33000 Bordeaux",
  recruiter: recruiter
)


Offer.create!(
  title: "Analyste Financier",
  contrat_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  sector: "Finance",
  address: "14 Rue des Bahutiers, 33000 Bordeaux",
  recruiter: recruiter
)


Offer.create!(
  title: "Chargé de Communication",
  contrat_type: "CDD",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "20k€ - 30k€",
  sector: "Communication",
  address: "22 Rue Sainte-Catherine, 33000 Bordeaux",
  recruiter: recruiter
)


Offer.create!(
  title: "Technicien Réseau",
  contrat_type: "CDI",
  experience_level: "2-3 ans",
  study_level: "Bac+2",
  salary: "30k€ - 40k€",
  sector: "Technologie",
  address: "7 Place Pey-Berland, 33000 Bordeaux",
  recruiter: recruiter
)


Offer.create!(
  title: "Responsable Logistique",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Bac+3",
  salary: "40k€ - 50k€",
  sector: "Logistique",
  address: "11 Quai de Paludate, 33800 Bordeaux",
  recruiter: recruiter
)


# Seeds for Paris
Offer.create!(
  title: "Consultant en Stratégie",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "70k€ - 80k€",
  sector: "Consulting",
  address: "25 Avenue de l'Opéra, 75001 Paris",
  recruiter: recruiter
)


Offer.create!(
  title: "Data Scientist",
  contrat_type: "CDI",
  experience_level: "2-5 ans",
  study_level: "Master",
  salary: "50k€ - 60k€",
  sector: "Technologie",
  address: "45 Rue de Rennes, 75006 Paris",
  recruiter: recruiter
)


Offer.create!(
  title: "Ingénieur Sécurité Réseau",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "60k€ - 70k€",
  sector: "Technologie",
  address: "30 Rue du Faubourg Saint-Honoré, 75008 Paris",
  recruiter: recruiter
)


Offer.create!(
  title: "Product Owner",
  contrat_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "45k€ - 55k€",
  sector: "Technologie",
  address: "12 Boulevard Haussmann, 75009 Paris",
  recruiter: recruiter
)


Offer.create!(
  title: "Architecte Cloud",
  contrat_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Doctorat",
  salary: "> 50k€",
  sector: "Technologie",
  address: "22 Rue de Rivoli, 75004 Paris",
  recruiter: recruiter
)


Offer.create!(
  title: "Responsable des Ressources Humaines",
  contrat_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Master",
  salary: "70k€ - 80k€",
  sector: "Ressources Humaines",
  address: "18 Rue de la Paix, 75002 Paris",
  recruiter: recruiter
)


Offer.create!(
  title: "Chef de Produit Marketing",
  contrat_type: "CDD",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "35k€ - 45k€",
  sector: "Marketing",
  address: "16 Rue de la République, 75011 Paris",
  recruiter: recruiter
)


Offer.create!(
  title: "Chargé de Recrutement",
  contrat_type: "CDD",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "30k€ - 35k€",
  sector: "Ressources Humaines",
  address: "5 Rue de la Boétie, 75008 Paris",
  recruiter: recruiter
)


puts Offer.count

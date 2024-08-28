puts "Destroy everything"

Chatroom.destroy_all
Candidacy.destroy_all
Match.destroy_all
Offer.destroy_all
User.destroy_all

# Creating users
puts "Creating job seekers"

User.create!(
  name: "Jean Dupont",
  email: "dupont@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 12 34 56 78",
  address: "15 Rue Fondaudège, 33000 Bordeaux",
  diplome: "J'ai obtenu une Licence en Informatique suivie d'un Master en Sciences des Données à l'Université de Paris-Saclay, où j'ai développé une expertise en algorithmes et en analyse de données.",
  experience: "J'ai travaillé comme ingénieur en intelligence artificielle chez TechInnov, où j'ai conçu des solutions d'apprentissage automatique et optimisé des systèmes de recommandation, tout en dirigeant des projets de R&D pour améliorer les performances des produits technologiques."
)

User.create!(
  name: "Jules Durand",
  email: "durand@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 98 76 54 32",
  address: "17 Rue Sainte Catherine, 33000 Bordeaux",
  diplome: "Diplômé d'un Master en Développement Logiciel à l'École Polytechnique, spécialisé dans le développement d'applications web et mobiles.",
  experience: "J'ai occupé le poste de développeur full-stack chez WebDevCo, où j'ai travaillé sur le développement d'applications web complexes en utilisant des frameworks modernes tels que React et Ruby on Rails."
)

User.create!(
  name: "Alice Martin",
  email: "martin.alice@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "07 11 22 33 44",
  address: "12 Boulevard des Capucines, 75009 Paris",
  diplome: "Titulaire d'un Doctorat en Intelligence Artificielle de l'Université de Grenoble, avec une spécialisation en apprentissage profond et réseaux de neurones.",
  experience: "Chercheuse senior en IA chez DeepMind Labs, j'ai mené des recherches sur les réseaux de neurones profonds et développé des modèles d'apprentissage automatique pour des applications dans la reconnaissance vocale et la vision par ordinateur."
)

User.create!(
  name: "Marie Leclerc",
  email: "leclerc.marie@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 44 55 66 77",
  address: "25 Avenue des Champs-Élysées, 75008 Paris",
  diplome: "Diplômée d'un Master en Cybersécurité à l'École Nationale Supérieure des Télécommunications de Paris.",
  experience: "Ingénieure en cybersécurité chez SecureNetworks, j'ai élaboré des stratégies de protection des données, réalisé des tests de pénétration, et mis en place des protocoles de sécurité pour protéger les systèmes d'information des entreprises."
)

User.create!(
  name: "Paul Simon",
  email: "simon.paul@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "07 88 99 00 11",
  address: "30 Rue du Louvre, 75001 Paris",
  diplome: "Licence en Informatique et Réseaux de Télécommunication de l'Université de Lille.",
  experience: "Administrateur réseau chez NetworkSolutions, où j'ai été responsable de la gestion et de la maintenance des infrastructures réseau, en assurant la disponibilité et la sécurité des services réseau pour une clientèle internationale."
)

User.create!(
  name: "Emma Lefebvre",
  email: "lefebvre.emma@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 77 88 99 22",
  address: "45 Rue de Rivoli, 75004 Paris",
  diplome: "Master en Design UX/UI de l'École Supérieure des Arts et Technologies de l'Image (ESATI).",
  experience: "Designer UX/UI chez CreativeTech, j'ai conçu des interfaces utilisateur intuitives pour des applications mobiles et web, en me concentrant sur l'expérience utilisateur et l'amélioration de l'accessibilité et de la convivialité des produits."
)

User.create!(
  name: "Lucas Bernard",
  email: "bernard.lucas@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 55 66 77 88",
  address: "50 Quai de la Rapée, 75012 Paris",
  diplome: "Master en Ingénierie Logicielle de l'Université de Strasbourg, avec une spécialisation en architecture logicielle.",
  experience: "Architecte logiciel chez SoftBuild, où j'ai dirigé des équipes de développement pour concevoir des architectures logicielles robustes et scalables, tout en optimisant les performances et la sécurité des systèmes d'information."
)

job_seekers = User.where(role: 0)

puts "Creating recruiters"

User.create!(
  name: "TechInnov",
  email: "tech@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 23 45 67 89",
  address: "10 Rue Prunier, 33000 Bordeaux"
)

User.create!(
  name: "OVHcloud",
  email: "contact@ovhcloud.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 56 78 90 11",
  address: "22 Rue Jean Jaurès, 33000 Bordeaux"
)

User.create!(
  name: "Cdiscount",
  email: "recrutement@cdiscount.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 34 67 89 00",
  address: "120 Quai de Bacalan, 33300 Bordeaux"
)

User.create!(
  name: "Betclic",
  email: "hr@betclicgroup.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 45 12 34 56",
  address: "117 Quai des Chartrons, 33300 Bordeaux"
)

User.create!(
  name: "Capgemini",
  email: "contact@capgemini.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 67 89 01 23",
  address: "45 Rue de Laseppe, 33000 Bordeaux"
)

User.create!(
  name: "Sopra Steria",
  email: "info@soprasteria.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 67 23 45 67",
  address: "15 Avenue Louis de Broglie, 33600 Pessac"
)

User.create!(
  name: "Ubisoft Bordeaux",
  email: "jobs.bordeaux@ubisoft.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 24 68 90 12",
  address: "66 Rue des Meuniers, 33300 Bordeaux"
)

User.create!(
  name: "Thales",
  email: "careers@thalesgroup.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 55 44 33 22",
  address: "30 Avenue de Canteranne, 33600 Pessac"
)

User.create!(
  name: "Dassault Systèmes",
  email: "recruitment@3ds.com",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 22 33 44 55",
  address: "23 Avenue de Canteranne, 33600 Pessac"
)

User.create!(
  name: "Atos",
  email: "contact@atos.net",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 99 88 77 66",
  address: "6 Avenue Jean Mermoz, 33185 Le Haillan"
)

User.create!(
  name: "Onepoint",
  email: "contact@onepoint.fr",
  password: "password123",
  password_confirmation: "password123",
  role: 1,
  phone: "05 61 23 45 67",
  address: "29 Rue du Pont, 33000 Bordeaux"
)

recruiters = User.where(role: 1)

puts "Users created"

# Creating offers
puts "Creating offers"
puts User.where(role: 0).count

Offer.create!(
  title: "Développeur Full Stack",
  contrat_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  sector: "Technologie",
  address: "15 Rue Fondaudège, 33000 Bordeaux",
  description: "En tant que Développeur Full Stack, vous jouerez un rôle clé dans le développement de solutions web robustes et innovantes. Vous interviendrez à la fois sur le front-end et le back-end, en utilisant des technologies modernes pour créer des applications performantes et évolutives. Vos missions incluront la conception et la mise en œuvre de nouvelles fonctionnalités, l'intégration d'API, et l'optimisation continue des performances du site. Vous serez également responsable de la maintenance des systèmes existants et de l'amélioration continue des processus de développement. Ce poste offre un environnement de travail dynamique avec des opportunités de formation continue, un accès à des technologies de pointe, et la possibilité de participer à des conférences et événements technologiques. Avantages : flexibilité de travail, télétravail possible, et une équipe collaborative.",
  recruiter: recruiters[0]
)

Offer.create!(
  title: "Chef de Projet Digital",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "50k€ - 60k€",
  sector: "Marketing",
  address: "23 Rue Vital Carles, 33000 Bordeaux",
  description: "Le Chef de Projet Digital est responsable de la planification, de la gestion et de l'exécution des projets numériques. Vous serez en charge de coordonner les équipes créatives, techniques, et marketing pour mener à bien des projets complexes allant du développement de sites web à la mise en place de campagnes digitales. Vos missions incluront l'analyse des besoins clients, la définition des stratégies digitales, et la supervision des phases de conception, développement, et lancement des projets. Vous serez également responsable de la gestion des budgets, du respect des délais et de la satisfaction client. Ce poste offre une grande visibilité au sein de l'entreprise avec des possibilités de progression rapide, ainsi que des formations continues pour rester à jour avec les dernières tendances digitales. Avantages : primes de performance, environnement de travail stimulant, et possibilités de networking.",
  recruiter: recruiters[1]
)

Offer.create!(
  title: "Responsable Marketing",
  contrat_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Doctorat",
  salary: "50k€ - 60k€",
  sector: "Marketing",
  address: "35 Cours de Verdun, 33000 Bordeaux",
  description: "En tant que Responsable Marketing, vous dirigerez la stratégie marketing de l'entreprise en mettant l'accent sur le développement de la marque et l'acquisition de nouveaux clients. Vous serez responsable de la création et de la mise en œuvre de campagnes marketing multicanal, incluant la publicité, le marketing digital, et la gestion des relations publiques. Vous superviserez une équipe de marketeurs et collaborerez étroitement avec les équipes commerciales pour aligner les stratégies et maximiser les résultats. Vous effectuerez également des analyses de marché pour identifier de nouvelles opportunités et ajuster les stratégies en conséquence. Ce poste vous permettra de jouer un rôle stratégique au sein de l'entreprise avec des avantages tels que des bonus de performance, des opportunités de carrière internationales, et un environnement de travail axé sur l'innovation. Avantages : salaire compétitif, avantages sociaux complets, et des perspectives de carrière en expansion.",
  recruiter: recruiters[2]
)

Offer.create!(
  title: "Ingénieur DevOps",
  contrat_type: "CDI",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "30k€ - 40k€",
  sector: "Technologie",
  address: "8 Rue Elie Gintrac, 33000 Bordeaux",
  description: "L'Ingénieur DevOps est un élément central dans l'optimisation des processus de développement et de déploiement. Vous serez en charge de l'automatisation des pipelines CI/CD, de la gestion des infrastructures cloud, et de l'optimisation des performances des systèmes. Vos missions incluront la surveillance des applications en production, la mise en place d'outils de monitoring, et l'amélioration continue de la qualité des livraisons. Vous collaborerez étroitement avec les équipes de développement pour intégrer des solutions d'automatisation et garantir la fiabilité des environnements de production. Ce poste offre des perspectives de formation continue dans les technologies DevOps, un environnement de travail flexible, et des projets stimulants avec des défis techniques. Avantages : technologies de pointe, télétravail, et ambiance collaborative.",
  recruiter: recruiters[3]
)

Offer.create!(
  title: "Analyste Financier",
  contrat_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  sector: "Finance",
  address: "14 Rue des Bahutiers, 33000 Bordeaux",
  description: "En tant qu'Analyste Financier, vous serez responsable de l'évaluation des performances financières de l'entreprise et de la formulation de recommandations stratégiques. Vous analyserez les données financières, effectuerez des projections budgétaires, et élaborerez des rapports pour la direction. Vos missions incluront également l'analyse de la rentabilité des projets, la gestion des risques financiers, et l'optimisation des ressources. Vous jouerez un rôle clé dans la prise de décisions financières et l'amélioration des processus internes. Ce poste offre une grande autonomie, des opportunités de développement professionnel, et la possibilité de progresser vers des rôles de gestion financière. Avantages : primes de performance, environnement de travail dynamique, et formations continues.",
  recruiter: recruiters[4]
)

Offer.create!(
  title: "Chargé de Communication",
  contrat_type: "CDD",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "20k€ - 30k€",
  sector: "Communication",
  address: "22 Rue Sainte-Catherine, 33000 Bordeaux",
  description: "En tant que Chargé de Communication, vous serez en charge de la création, de la diffusion, et de la gestion des supports de communication de l'entreprise. Vous rédigerez des contenus pour les réseaux sociaux, les sites web, et les supports de communication interne et externe. Vous organiserez également des événements pour promouvoir l'image de l'entreprise et gérerez les relations avec les médias. Vous serez responsable de la mise en œuvre des stratégies de communication, du suivi des retombées médiatiques, et de l'adaptation des messages en fonction des publics cibles. Ce poste vous permettra de développer vos compétences en communication dans un environnement dynamique avec des projets variés. Avantages : environnement de travail créatif, opportunités d'apprentissage, et possibilité de renouvellement du contrat.",
  recruiter: recruiters[5]
)

Offer.create!(
  title: "Technicien Réseau",
  contrat_type: "CDI",
  experience_level: "2-3 ans",
  study_level: "Bac+2",
  salary: "30k€ - 40k€",
  sector: "Technologie",
  address: "7 Place Pey-Berland, 33000 Bordeaux",
  description: "En tant que Technicien Réseau, vous serez chargé de l'installation, de la configuration, et de la maintenance des infrastructures réseau de l'entreprise. Vous assurerez la disponibilité, la sécurité, et la performance des systèmes réseau, tout en résolvant les incidents techniques qui pourraient survenir. Vos missions incluront également la gestion des équipements réseau, la mise en place de solutions de sécurité, et l'assistance technique aux utilisateurs. Vous travaillerez en étroite collaboration avec les équipes IT pour garantir la stabilité et la performance des services réseau. Ce poste offre des opportunités de formation continue, un environnement technique stimulant, et la possibilité de travailler avec des technologies de pointe. Avantages : horaires flexibles, certifications professionnelles, et environnement de travail collaboratif.",
  recruiter: recruiters[6]
)

Offer.create!(
  title: "Responsable Logistique",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Bac+3",
  salary: "40k€ - 50k€",
  sector: "Logistique",
  address: "11 Quai de Paludate, 33800 Bordeaux",
  description: "Le Responsable Logistique supervisera l'ensemble des opérations logistiques de l'entreprise, incluant la gestion des flux de marchandises, le stockage, la distribution, et le transport. Vous serez chargé d'optimiser les processus logistiques pour réduire les coûts et améliorer l'efficacité des opérations. Vous collaborerez avec les fournisseurs, les transporteurs, et les autres départements internes pour assurer la satisfaction des clients et le respect des délais. Vous serez également responsable de la gestion des équipes logistiques et de la mise en place de KPIs pour suivre les performances. Ce poste offre un environnement de travail stimulant avec des opportunités de développement professionnel et des perspectives d'évolution vers des postes de direction. Avantages : primes de performance, véhicule de fonction, et formations continues.",
  recruiter: recruiters[7]
)

Offer.create!(
  title: "Développeur Front-End",
  contrat_type: "CDI",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "28k€ - 38k€",
  sector: "Technologie",
  address: "5 Avenue de l'Yser, 33700 Mérignac",
  description: "En tant que Développeur Front-End, vous serez responsable de la création et de l'optimisation des interfaces utilisateur. Vous travaillerez avec des technologies modernes telles que React ou Vue.js pour développer des applications web réactives et performantes. Vous collaborerez avec les équipes de design pour garantir que les interfaces sont intuitives et attrayantes, et vous participerez à l'amélioration continue des processus de développement. Ce poste offre un environnement de travail dynamique avec des possibilités de croissance professionnelle.",
  recruiter: recruiters[8]
)

Offer.create!(
  title: "Analyste Business Intelligence",
  contrat_type: "CDI",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "35k€ - 45k€",
  sector: "Technologie",
  address: "12 Rue du Hâ, 33700 Mérignac",
  description: "En tant qu'Analyste Business Intelligence, vous serez chargé de la collecte, de l'analyse, et de l'interprétation des données pour soutenir les décisions stratégiques de l'entreprise. Vous développerez des tableaux de bord, des rapports et des analyses pour aider à la compréhension des tendances du marché et des performances de l'entreprise. Vous utiliserez des outils BI comme Tableau ou Power BI pour fournir des insights clairs et exploitables.",
  recruiter: recruiters[9]
)

Offer.create!(
  title: "Responsable de la Supply Chain",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "50k€ - 60k€",
  sector: "Logistique",
  address: "25 Avenue du Maréchal Juin, 33700 Mérignac",
  description: "Le Responsable de la Supply Chain sera en charge de l'ensemble de la chaîne logistique, depuis l'approvisionnement jusqu'à la distribution. Vous optimiserez les processus d'approvisionnement, de stockage et de livraison pour maximiser l'efficacité opérationnelle. Vous coordonnerez les activités avec les fournisseurs et les partenaires logistiques pour garantir un flux de marchandises fluide et sans interruption.",
  recruiter: recruiters[10]
)

puts "Offers created"

puts "Creating searches"

UserJobSearch.create!(
  job_seeker: job_seekers[0],
  sector: "Technologie",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  city: "Bordeaux"
)

UserJobSearch.create!(
  job_seeker: job_seekers[1],
  sector: "Finance",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "50k€ - 60k€",
  city: "Bordeaux"
)

UserJobSearch.create!(
  job_seeker: job_seekers[2],
  sector: "Technologie",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "28k€ - 38k€",
  city: "Pessac"
)

UserJobSearch.create!(
  job_seeker: job_seekers[3],
  sector: "Marketing",
  experience_level: "+ 10 ans",
  study_level: "Doctorat",
  salary: "50k€ - 60k€",
  city: "Paris"
)

UserJobSearch.create!(
  job_seeker: job_seekers[4],
  sector: "Technologie",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "30k€ - 40k€",
  city: "Paris"
)

UserJobSearch.create!(
  job_seeker: job_seekers[5],
  sector: "Communication",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "20k€ - 30k€",
  city: "Bordeaux"
)

UserJobSearch.create!(
  job_seeker: job_seekers[6],
  sector: "Technologie",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "28k€ - 38k€",
  city: "Mérignac"
)

puts "Searches created"
puts "Creating matches"

Offer.all.each do |offer|
  job_seekers.each do |job_seeker|
    Match.create!(
      offer: offer,
      user_job_search: job_seeker.user_job_search
    )
  end
end

puts "Matches created"


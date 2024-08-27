# Destroy all existing users and offers
#puts "Destroy start"
#Match.destroy_all

#Offer.destroy_all

#UserJobSearch.destroy_all
#User.destroy_all
#puts "Destroy end"
Chatroom.destroy_all

Candidacy.destroy_all

Match.destroy_all

Offer.destroy_all

User.destroy_all

# Creating users
User.create!(
  name: "Jean Dupont",
  email: "Dupont@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 12 34 56 78",
  address: "15 Rue Fondaudège, 33000 Bordeaux",
  diplome: "J'ai obtenu une Licence en Informatique suivie d'un Master en Sciences des Données à l'Université de Paris-Saclay, où j'ai développé une expertise en algorithmes et en analyse de données",
  experience: "J'ai travaillé comme ingénieur en intelligence artificielle chez TechInnov, où j'ai conçu des solutions d'apprentissage automatique et optimisé des systèmes de recommandation, tout en dirigeant des projets de R&D pour améliorer les performances des produits technologiques."
)

User.create!(
  name: "Jules Durand",
  email: "Durand@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0,
  phone: "06 12 34 56 78",
  address: "17 Rue sainte Catherine, 33000 Bordeaux",
  diplome: "J'ai obtenu une Licence en Informatique suivie d'un Master en Sciences des Données à l'Université de Paris-Saclay, où j'ai développé une expertise en algorithmes et en analyse de données",
  experience: "J'ai travaillé comme ingénieur en intelligence artificielle chez TechInnov, où j'ai conçu des solutions d'apprentissage automatique et optimisé des systèmes de recommandation, tout en dirigeant des projets de R&D pour améliorer les performances des produits technologiques."
)

recruiter = User.create!(
  name: "techInnov",
  email: "tech@gmail.com",
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
  description: "En tant que Développeur Full Stack, vous jouerez un rôle clé dans le développement de solutions web robustes et innovantes. Vous interviendrez à la fois sur le front-end et le back-end, en utilisant des technologies modernes pour créer des applications performantes et évolutives. Vos missions incluront la conception et la mise en œuvre de nouvelles fonctionnalités, l'intégration d'API, et l'optimisation continue des performances du site. Vous serez également responsable de la maintenance des systèmes existants et de l'amélioration continue des processus de développement. Ce poste offre un environnement de travail dynamique avec des opportunités de formation continue, un accès à des technologies de pointe, et la possibilité de participer à des conférences et événements technologiques. Avantages : flexibilité de travail, télétravail possible, et une équipe collaborative.",
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
  description: "Le Chef de Projet Digital est responsable de la planification, de la gestion et de l'exécution des projets numériques. Vous serez en charge de coordonner les équipes créatives, techniques, et marketing pour mener à bien des projets complexes allant du développement de sites web à la mise en place de campagnes digitales. Vos missions incluront l'analyse des besoins clients, la définition des stratégies digitales, et la supervision des phases de conception, développement, et lancement des projets. Vous serez également responsable de la gestion des budgets, du respect des délais et de la satisfaction client. Ce poste offre une grande visibilité au sein de l'entreprise avec des possibilités de progression rapide, ainsi que des formations continues pour rester à jour avec les dernières tendances digitales. Avantages : primes de performance, environnement de travail stimulant, et possibilités de networking.",
  recruiter: recruiter
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
  description: "L'Ingénieur DevOps est un élément central dans l'optimisation des processus de développement et de déploiement. Vous serez en charge de l'automatisation des pipelines CI/CD, de la gestion des infrastructures cloud, et de l'optimisation des performances des systèmes. Vos missions incluront la surveillance des applications en production, la mise en place d'outils de monitoring, et l'amélioration continue de la qualité des livraisons. Vous collaborerez étroitement avec les équipes de développement pour intégrer des solutions d'automatisation et garantir la fiabilité des environnements de production. Ce poste offre des perspectives de formation continue dans les technologies DevOps, un environnement de travail flexible, et des projets stimulants avec des défis techniques. Avantages : technologies de pointe, télétravail, et ambiance collaborative.",
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
  description: "En tant qu'Analyste Financier, vous serez responsable de l'évaluation des performances financières de l'entreprise et de la formulation de recommandations stratégiques. Vous analyserez les données financières, effectuerez des projections budgétaires, et élaborerez des rapports pour la direction. Vos missions incluront également l'analyse de la rentabilité des projets, la gestion des risques financiers, et l'optimisation des ressources. Vous jouerez un rôle clé dans la prise de décisions financières et l'amélioration des processus internes. Ce poste offre une grande autonomie, des opportunités de développement professionnel, et la possibilité de progresser vers des rôles de gestion financière. Avantages : primes de performance, environnement de travail dynamique, et formations continues.",
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
  description: "En tant que Chargé de Communication, vous serez en charge de la création, de la diffusion, et de la gestion des supports de communication de l'entreprise. Vous rédigerez des contenus pour les réseaux sociaux, les sites web, et les supports de communication interne et externe. Vous organiserez également des événements pour promouvoir l'image de l'entreprise et gérerez les relations avec les médias. Vous serez responsable de la mise en œuvre des stratégies de communication, du suivi des retombées médiatiques, et de l'adaptation des messages en fonction des publics cibles. Ce poste vous permettra de développer vos compétences en communication dans un environnement dynamique avec des projets variés. Avantages : environnement de travail créatif, opportunités d'apprentissage, et possibilité de renouvellement du contrat.",
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
  description: "En tant que Technicien Réseau, vous serez chargé de l'installation, de la configuration, et de la maintenance des infrastructures réseau de l'entreprise. Vous assurerez la disponibilité, la sécurité, et la performance des systèmes réseau, tout en résolvant les incidents techniques qui pourraient survenir. Vos missions incluront également la gestion des équipements réseau, la mise en place de solutions de sécurité, et l'assistance technique aux utilisateurs. Vous travaillerez en étroite collaboration avec les équipes IT pour garantir la stabilité et la performance des services réseau. Ce poste offre des opportunités de formation continue, un environnement technique stimulant, et la possibilité de travailler avec des technologies de pointe. Avantages : horaires flexibles, certifications professionnelles, et environnement de travail collaboratif.",
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
  description: "Le Responsable Logistique supervisera l'ensemble des opérations logistiques de l'entreprise, incluant la gestion des flux de marchandises, le stockage, la distribution, et le transport. Vous serez chargé d'optimiser les processus logistiques pour réduire les coûts et améliorer l'efficacité des opérations. Vous collaborerez avec les fournisseurs, les transporteurs, et les autres départements internes pour assurer la satisfaction des clients et le respect des délais. Vous serez également responsable de la gestion des équipes logistiques et de la mise en place de KPIs pour suivre les performances. Ce poste offre un environnement de travail stimulant avec des opportunités de développement professionnel et des perspectives d'évolution vers des postes de direction. Avantages : primes de performance, véhicule de fonction, et formations continues.",
  recruiter: recruiter
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
  recruiter: recruiter
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
  recruiter: recruiter
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
  recruiter: recruiter
)

Offer.create!(
  title: "Chargé de Clientèle",
  contrat_type: "CDD",
  experience_level: "1-2 ans",
  study_level: "Bac+2",
  salary: "22k€ - 32k€",
  sector: "Service",
  address: "8 Rue de la République, 33130 Bègles",
  description: "En tant que Chargé de Clientèle, vous serez le point de contact principal pour les clients, répondant à leurs demandes, résolvant les problèmes et assurant un service de qualité. Vous gérerez les appels entrants, traiterez les réclamations, et travaillerez à la satisfaction client. Ce poste offre une opportunité de développer vos compétences en communication et en gestion de la relation client.",
  recruiter: recruiter
)

Offer.create!(
  title: "Assistant Marketing",
  contrat_type: "CDD",
  experience_level: "0-1 an",
  study_level: "Bac+3",
  salary: "20k€ - 28k€",
  sector: "Marketing",
  address: "15 Avenue de la Liberté, 33130 Bègles",
  description: "En tant qu'Assistant Marketing, vous assisterez l'équipe marketing dans la mise en œuvre de campagnes et la gestion des projets marketing. Vous serez impliqué dans la création de contenu, la gestion des réseaux sociaux, et l'analyse des performances des campagnes. Ce poste est idéal pour débuter une carrière dans le marketing et acquérir une expérience pratique dans un environnement dynamique.",
  recruiter: recruiter
)

Offer.create!(
  title: "Développeur Java",
  contrat_type: "CDI",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "32k€ - 42k€",
  sector: "Technologie",
  address: "20 Rue du Prieuré, 33500 Bruges",
  description: "En tant que Développeur Java, vous serez responsable de la conception et du développement d'applications Java robustes et scalables. Vous travaillerez sur des projets variés, de la création de nouvelles fonctionnalités à l'amélioration des systèmes existants. Vous collaborerez avec les équipes de développement pour assurer la qualité du code et la réussite des projets.",
  recruiter: recruiter
)

Offer.create!(
  title: "Responsable Commercial",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "45k€ - 55k€",
  sector: "Commercial",
  address: "5 Avenue des Anciens Combattants, 33290 Cauderan",
  description: "Le Responsable Commercial sera chargé de développer et de gérer les relations avec les clients clés, d'identifier de nouvelles opportunités de marché, et de mettre en œuvre des stratégies pour atteindre les objectifs de vente. Vous superviserez l'équipe commerciale et travaillerez à l'élargissement de la clientèle.",
  recruiter: recruiter
)

Offer.create!(
  title: "Technicien Support IT",
  contrat_type: "CDI",
  experience_level: "1-2 ans",
  study_level: "Bac+2",
  salary: "25k€ - 35k€",
  sector: "Technologie",
  address: "10 Rue du Parc Bordelais, 33290 Cauderan",
  description: "En tant que Technicien Support IT, vous serez responsable de l'assistance technique aux utilisateurs et de la résolution des problèmes informatiques. Vous gérerez les incidents, effectuerez des réparations et veillerez à ce que les systèmes informatiques fonctionnent correctement.",
  recruiter: recruiter
)

Offer.create!(
  title: "Assistant Ressources Humaines",
  contrat_type: "CDI",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "28k€ - 38k€",
  sector: "Ressources Humaines",
  address: "22 Avenue des Capucins, 33290 Cauderan",
  description: "L'Assistant Ressources Humaines soutiendra les équipes RH dans la gestion des recrutements, l'administration des dossiers employés, et l'organisation des formations. Vous participerez à la mise en œuvre des politiques RH et contribuerez à la gestion des relations avec les employés.",
  recruiter: recruiter
)

Offer.create!(
  title: "Gestionnaire de Projet",
  contrat_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  sector: "Gestion de Projet",
  address: "3 Rue du Commerce, 33290 Blanquefort",
  description: "En tant que Gestionnaire de Projet, vous serez responsable de la planification, de l'exécution, et de la clôture des projets. Vous coordonnerez les équipes, gérerez les budgets, et assurerez la livraison des projets dans les délais impartis.",
  recruiter: recruiter
)

puts Offer.count

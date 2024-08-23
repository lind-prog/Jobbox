# Destroy all existing users and offers
puts "Destroy start"
Match.destroy_all

Offer.destroy_all

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
  experience: "J'ai travaillé comme ingénieur en intelligence artificielle chez TechInnov, où j'ai conçu des solutions d'apprentissage automatique et optimisé des systèmes de recommandation, tout en dirigeant des projets de R&D pour améliorer les performances des produits technologiques."
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

#Paris

Offer.create!(
  title: "Consultant en Stratégie",
  contrat_type: "CDI",
  experience_level: "5-10 ans",
  study_level: "Master",
  salary: "< 70k€",
  sector: "Consulting",
  address: "25 Avenue de l'Opéra, 75001 Paris",
  description: "En tant que Consultant en Stratégie, vous conseillerez nos clients sur la définition et la mise en œuvre de stratégies d'entreprise pour améliorer leur performance et leur compétitivité. Vous réaliserez des analyses approfondies de leurs activités, identifierez les opportunités de croissance, et formulerez des recommandations sur mesure. Vos missions incluront également la gestion de projets stratégiques, l'accompagnement au changement, et le suivi des performances. Vous travaillerez avec des équipes pluridisciplinaires et participerez à des projets à forte visibilité. Ce poste offre des défis intellectuels stimulants, un environnement de travail collaboratif, et des possibilités de progression rapide. Avantages : rémunération attractive, bonus de performance, et développement de réseau professionnel.",
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
  description: "En tant que Data Scientist, vous serez chargé d'exploiter les données pour fournir des analyses approfondies qui guideront les décisions stratégiques de l'entreprise. Vos missions incluront la collecte et le nettoyage des données, le développement de modèles prédictifs, et la création de visualisations pour communiquer efficacement les résultats aux équipes non techniques. Vous collaborerez étroitement avec les départements produit, marketing, et finance pour identifier des opportunités d'amélioration grâce aux données. Ce poste offre des opportunités de travail sur des projets variés et innovants, avec un accès aux dernières technologies de data science et une culture d'entreprise favorisant l'apprentissage continu. Avantages : télétravail, formations avancées en data science, et environnement de travail dynamique.",
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
  description: "L'Ingénieur Sécurité Réseau sera responsable de la protection des infrastructures réseau de l'entreprise contre les cybermenaces. Vous concevrez, implémenterez et maintiendrez des solutions de sécurité pour prévenir les attaques, les intrusions et les fuites de données. Vos missions incluront l'analyse des risques, la mise en œuvre de pare-feux, la gestion des VPN, et la surveillance continue des systèmes pour détecter et neutraliser les menaces. Vous travaillerez en étroite collaboration avec les équipes IT pour assurer une sécurité robuste tout en facilitant les besoins opérationnels. Ce poste offre un environnement stimulant avec des défis techniques constants, des formations en sécurité informatique, et des opportunités d'évolution vers des postes de direction. Avantages : bonus de performance, certifications en sécurité, et environnement de travail innovant.",
  recruiter: recruiter
)

Offer.create!(
  title: "Product Owner",
  contrat_type: "CDI",
  experience_level: "3-5 ans",
  study_level: "Master",
  salary: "40k€ - 50k€",
  sector: "Technologie",
  address: "12 Boulevard Haussmann, 75009 Paris",
  description: "En tant que Product Owner, vous serez le garant de la vision produit et vous dirigerez le développement de nouvelles fonctionnalités en collaborant étroitement avec les équipes de développement, de design, et de marketing. Vos missions incluront la définition et la priorisation des besoins, la rédaction des user stories, et la gestion du backlog produit. Vous serez également responsable de la validation des livrables et de l'amélioration continue du produit en fonction des retours utilisateurs. Ce poste offre une forte responsabilité dans le cycle de vie du produit, avec des interactions quotidiennes avec les parties prenantes clés, et une influence directe sur la réussite du produit. Avantages : environnement agile, opportunités de formation en gestion de produit, et potentiel d'évolution rapide.",
  recruiter: recruiter
)

Offer.create!(
  title: "Architecte Cloud",
  contrat_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Doctorat",
  salary: "50k€ - 60k€",
  sector: "Technologie",
  address: "22 Rue de Rivoli, 75004 Paris",
  description: "L'Architecte Cloud sera en charge de la conception et de la mise en œuvre des solutions cloud de l'entreprise. Vous serez responsable de définir l'architecture des infrastructures cloud, d'assurer leur scalabilité, et de garantir la sécurité et la conformité des données. Vos missions incluront également l'accompagnement des équipes dans la migration vers le cloud, l'optimisation des coûts, et l'intégration continue des nouvelles technologies cloud. Vous collaborerez avec les équipes DevOps pour automatiser les déploiements et améliorer les performances des systèmes. Ce poste offre des défis techniques stimulants, la possibilité de travailler avec des technologies de pointe, et un rôle stratégique dans la transformation digitale de l'entreprise. Avantages : salaire compétitif, certifications cloud, et environnement de travail innovant.",
  recruiter: recruiter
)

Offer.create!(
  title: "Responsable des Ressources Humaines",
  contrat_type: "CDI",
  experience_level: "+ 10 ans",
  study_level: "Master",
  salary: "< 70k€",
  sector: "Ressources Humaines",
  address: "18 Rue de la Paix, 75002 Paris",
  description: "En tant que Responsable des Ressources Humaines, vous dirigerez l'ensemble des fonctions RH de l'entreprise, incluant le recrutement, la gestion des talents, la formation, et les relations sociales. Vous serez en charge de définir et de mettre en œuvre la stratégie RH en alignement avec les objectifs de l'entreprise. Vos missions incluront également l'accompagnement des managers, la gestion des carrières, et la supervision des processus de rémunération et de performance. Ce poste offre un rôle central dans l'évolution de la culture d'entreprise, avec des défis stratégiques et opérationnels constants, ainsi que des opportunités de développement personnel et professionnel. Avantages : package salarial attractif, avantages sociaux complets, et possibilités d'évolution vers des fonctions de direction.",
  recruiter: recruiter
)

Offer.create!(
  title: "Chef de Produit Marketing",
  contrat_type: "CDD",
  experience_level: "2-3 ans",
  study_level: "Master",
  salary: "30k€ - 40k€",
  sector: "Marketing",
  address: "16 Rue de la République, 75011 Paris",
  description: "Le Chef de Produit Marketing sera en charge de la gestion de la gamme de produits de l'entreprise. Vous serez responsable de la définition des stratégies marketing, du lancement de nouveaux produits, et de la gestion du cycle de vie des produits existants. Vos missions incluront l'analyse du marché, la gestion des campagnes de communication, et la collaboration avec les équipes de vente pour maximiser les performances. Vous travaillerez également sur l'optimisation des mix-marketing et l'amélioration continue de l'expérience client. Ce poste offre une immersion complète dans le marketing produit, avec des responsabilités variées et un environnement dynamique. Avantages : environnement de travail stimulant, opportunités de développement professionnel, et bonus liés aux performances des produits.",
  recruiter: recruiter
)

Offer.create!(
  title: "Chargé de Recrutement",
  contrat_type: "CDD",
  experience_level: "1-2 ans",
  study_level: "Bac+3",
  salary: "30k€ - 40k€",
  sector: "Ressources Humaines",
  address: "5 Rue de la Boétie, 75008 Paris",
  description: "En tant que Chargé de Recrutement, vous serez responsable de l'ensemble du processus de recrutement, depuis la définition des besoins jusqu'à l'intégration des nouveaux collaborateurs. Vous travaillerez en étroite collaboration avec les managers pour identifier les profils recherchés, rédiger les annonces, et mener les entretiens de sélection. Vos missions incluront également la gestion des relations avec les cabinets de recrutement, l'animation des sessions de recrutement, et la participation aux forums et salons de l'emploi. Ce poste offre une opportunité unique de développer vos compétences en recrutement dans un environnement dynamique et exigeant. Avantages : environnement de travail convivial, opportunités d'apprentissage, et possibilité d'évolution au sein du département RH.",
  recruiter: recruiter
)

puts Offer.count

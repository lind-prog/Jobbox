// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Importation manuelle des contrôleurs si nécessaire
// import ScrollAnimationController from "controllers/scroll_animation_controller"
// application.register("scroll-animation", ScrollAnimationController)

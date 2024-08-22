import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-animation"
export default class extends Controller {
  static targets = ["infoBlock"]

  connect() {
    window.addEventListener("scroll", this.reveal.bind(this))
    this.reveal() // Pour déclencher l'animation lors du chargement initial de la page
  }

  disconnect() {
    window.removeEventListener("scroll", this.reveal.bind(this))
  }

  reveal() {
    this.infoBlockTargets.forEach(block => {
      const blockTop = block.getBoundingClientRect().top
      const windowHeight = window.innerHeight
      if (blockTop < windowHeight - 100) {
        block.classList.add("show")
      }
    })
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="highlight"
export default class extends Controller {
  static targets = ["contact"]

  setColor(event) {
    this.contactTargets.forEach(contact => {
      contact.classList.remove('grey-color')
    });
    event.currentTarget.classList.add('grey-color')
  }
}

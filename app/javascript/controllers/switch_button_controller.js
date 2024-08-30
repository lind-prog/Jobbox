import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="switch-button"
export default class extends Controller {
  static targets = ["button"];

  switch(event) {
    this.buttonTargets.forEach((element) => element.classList.remove("active"));
    event.currentTarget.classList.add("active")
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="switch-button"
export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log(this.buttonTarget)
  }

  switch(event) {
    event.preventDefault()

    this.buttonTargets.remove("active")
    this.buttonTarget.add("active")
  }

}

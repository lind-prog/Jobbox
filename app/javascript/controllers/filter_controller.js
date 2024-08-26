import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["field", "form"]
  connect() {
  }

  select() {
    console.log(this.formTarget.submit())
  }
}

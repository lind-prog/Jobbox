import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["field", "form"]
  connect() {
  }

  select() {
    const form = this.formTarget;
    const formData = new FormData(form);

    const params = new URLSearchParams(formData);
    const newUrl = `${form.action}?${params.toString()}`;

    Turbo.visit(newUrl, { frame: "map_frame" });

    // console.log(this.formTarget.submit())
  }
}

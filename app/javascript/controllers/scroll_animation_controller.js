import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["infoBlock"];

  connect() {
    this.handleScroll();
    window.addEventListener("scroll", this.handleScroll.bind(this));
    window.addEventListener("keydown", this.handleKeydown.bind(this));
  }

  disconnect() {
    window.removeEventListener("scroll", this.handleScroll.bind(this));
    window.removeEventListener("keydown", this.handleKeydown.bind(this));
  }

  handleScroll() {
    this.infoBlockTargets.forEach((block) => {
      const rect = block.getBoundingClientRect();
      if (rect.top < window.innerHeight && rect.bottom >= 0) {
        block.classList.add("visible", "animate");
      } else {
        block.classList.remove("visible", "animate");
      }
    });
  }

  handleKeydown(event) {
    if (event.key === "ArrowDown") {
      this.handleScroll();
    }
  }
}

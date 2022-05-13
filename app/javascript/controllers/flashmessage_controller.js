import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.classList.add('xyz-in')
  
    setTimeout(() => {
      this.close()
    }, 5000);
  }

  close() {
    this.element.style.display = "none"
  }
}

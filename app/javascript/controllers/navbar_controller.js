// app/javascript/controllers/navbar_controller.js
import { Controller } from "@hotwired/stimulus";

console.log("Hello from navbar_controller.js");

export default class extends Controller {
  static targets = ["menu"];

  toggleMenu() {
    this.menuTarget.classList.toggle('hidden');
  }
}

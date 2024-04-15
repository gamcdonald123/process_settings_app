import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { machineUrl: String }

  goToMachine() {
    window.location.href = this.machineUrlValue;
    console.log("goToMachine");
  }
}
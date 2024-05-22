import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { versionUrl: String }

  goToVersion() {
    window.location.href = this.versionUrlValue;
    console.log("goToVersion");
  }
}
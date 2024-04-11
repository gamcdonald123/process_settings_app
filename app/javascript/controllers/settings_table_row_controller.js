import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { settingUrl: String }

  goToSetting() {
    window.location.href = this.settingUrlValue;
    console.log("goToSetting");
  }
}
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { feedbackUrl: String }

  goToFeedback() {
    window.location.href = this.feedbackUrlValue;
    console.log("goToFeedback");
  }
}
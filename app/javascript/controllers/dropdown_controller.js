import { Controller } from "@hotwired/stimulus"

console.log('dropdown_controller.js loaded');

export default class extends Controller {
  static targets = [ "site", "machine" ]

  connect() {
    this.attempts = 0;
    this.updateMachines = this.updateMachines.bind(this);
    this.observer = new MutationObserver(this.updateMachines);
    this.observer.observe(this.element, { childList: true });
    this.updateMachines();
  }

  disconnect() {
    this.observer.disconnect();
  }

  updateMachines() {
    console.log('updateMachines');
    if (!this.hasMachineTarget) {
      if (this.attempts < 10) {
        this.attempts += 1;
        setTimeout(this.updateMachines, 100);
      } else {
        console.log('Failed to find machine target after 10 attempts');
      }
      return;
    }
    const siteId = this.siteTarget.value;
    fetch(`/machines.json?site_id=${siteId}`)
      .then(response => response.json())
      .then(data => {
        this.machineTarget.innerHTML = '';
        data.sort((a, b) => {
          const aName = a.machine_name.replace(/^(IMM |M)/, '');
          const bName = b.machine_name.replace(/^(IMM |M)/, '');
          return aName.localeCompare(bName, undefined, { numeric: true });
        });
        data.forEach(machine => {
          const option = document.createElement('option');
          option.text = machine.machine_name;
          option.value = machine.id;
          this.machineTarget.add(option);
        });
      });
  }
}
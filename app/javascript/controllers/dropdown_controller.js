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
    if (!siteId) {
      console.log('No site selected');
      return;
    }

    fetch(`/machines.json?site_id=${siteId}`)
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(data => {
        const selectedMachineId = this.machineTarget.value;
        this.machineTarget.innerHTML = '';

        // Sort and update machines
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

        // Restore selected value if previously set
        if (selectedMachineId) {
          this.machineTarget.value = selectedMachineId;
        }
      })
      .catch(error => {
        console.error('Fetch error:', error);
      });
  }
}

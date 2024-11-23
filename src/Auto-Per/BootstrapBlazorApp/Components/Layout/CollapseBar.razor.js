import EventHandler from "../../_content/BootstrapBlazor/modules/event-handler.js"

export function init(id) {
    const el = document.getElementById(id);
    if (el === null) {
        return;
    }

    EventHandler.on(el, 'click', e => {
        e.preventDefault();

        const layout = document.querySelector('.layout');
        if (layout) {
            layout.classList.toggle('is-collapsed');
        }
    });
}

export function dispose(id) {
    const el = document.getElementById(id);
    if (el === null) {
        return;
    }

    EventHandler.off(el, 'click');
}

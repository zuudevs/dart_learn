document.addEventListener('DOMContentLoaded', () => {
    const accordionItems = document.querySelectorAll('.accordion-item');

    accordionItems.forEach(item => {
        const header = item.querySelector('.accordion-header');

        header.addEventListener('click', () => {
            // Toggle the 'active' class on the clicked item
            item.classList.toggle('active');

            // Get the content panel
            const content = item.querySelector('.accordion-content');

            // Animate the content panel
            if (content.style.maxHeight) {
                // If it's open, close it
                content.style.maxHeight = null;
                content.style.padding = '0 1.5rem';
            } else {
                // If it's closed, open it
                content.style.padding = '0 1.5rem 1rem 1.5rem';
                content.style.maxHeight = content.scrollHeight + 'px';
            }
        });
    });
});

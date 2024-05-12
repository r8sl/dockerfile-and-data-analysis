window.onload = function(){
    fetch('http://localhost:3000/students') 
    .then(response => response.json())
    .then(data => {
        const container = document.getElementById('data-container');
        data.forEach(item => {
            const div = document.createElement('div');
            div.textContent = `ID: ${item.id}, Name: ${item.name}, CGPA: ${item.cgpa}, Age: ${item.age}, Department: ${item.department}`;
            container.appendChild(div);
        });
    })
    .catch(error => console.error('Error:', error));
}

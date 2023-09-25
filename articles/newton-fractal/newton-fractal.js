console.log("Hello world!");

// Define your function to be plotted
function plotFunction(x) {
    return x ** 3 - 8 * x ** 2; // Replace this with your desired function
}

// Create an array of x-values and corresponding y-values within the desired range
const xValues = [];
const yValues = [];
const minX = -5; // Set your desired minimum x-value
const maxX = 10;  // Set your desired maximum x-value
const step = 0.1; // Set your desired step size

for (let x = minX; x <= maxX; x += step) {
    xValues.push(x);
    yValues.push(plotFunction(x));
}

// Create a Chart.js chart
const ctx = document.getElementById('f1').getContext('2d');

const myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: xValues,
        datasets: [{
            label: 'Function Plot',
            data: yValues,
            borderColor: 'blue',
            borderWidth: 2,
            fill: false,
        }]
    },
    options: {
        aspectRatio: 1,
        scales: {
            x: {
                type: 'linear',
                position: 'bottom',
                title: {
                    display: true,
                    text: 'X'
                },
                min: minX,
                max: maxX,
            },
            y: {
                type: 'linear',
                position: 'left',
                title: {
                    display: true,
                    text: 'Y'
                }
            }
        }
    }
});


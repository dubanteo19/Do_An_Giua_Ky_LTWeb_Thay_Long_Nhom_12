const ctx = document.getElementById('doanhThuChart');
const DATA_COUNT = 6;
const NUMBER_CFG = { count: DATA_COUNT, min: -100, max: 100 };

const labels = ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6']
const data = {
    labels: labels,
    datasets: [{
            label: 'Doanh thu',
            data: [15, 20, 44, 20, 40, 99],
            borderColor: '#A7D397',
            backgroundColor: '#A7D397'
        },
        {
            label: 'Lợi nhuận',
            data: [10, 14, 30, 10, 20, 60],
            borderColor: '#F5EEC8',
            backgroundColor: '#F5EEC8',
        }
    ]
};
const config = {
    type: 'bar',
    data: data,
    options: {
        responsive: true,
        plugins: {
            legend: {
                position: 'top',
            },
            title: {
                display: true,
            }
        }
    },
};

new Chart(ctx, config);
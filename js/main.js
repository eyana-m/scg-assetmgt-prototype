$(function () {
    $('#barchart-1').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Current Inventory Count'
        },
        xAxis: {
            categories: ['Camera', 'Desktop', 'Laptop', 'Printer']
        },
        yAxis: {
            title: {
                text: 'Quantity'
            }
        },
        series: [{
            name: 'Active',
            data: [3, 5, 4, 1]
        }, {
            name: 'Inactive',
            data: [2, 7, 5, 3]
        }]
    });
});

$(function () {
    $('#barchart-2').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Inventory Status'
        },
        xAxis: {
            categories: ['Desktop', 'Laptop', 'Monitor', 'Projector']
        },
        yAxis: {
            title: {
                text: 'Quantity'
            }
        },
        series: [{
            name: 'Active',
            data: [8, 17, 7, 0]
        }, {
            name: 'Service Unit',
            data: [3, 11, 0, 0]
        }, {
            name: 'For Repair',
            data: [0, 0, 0, 3]
        }, {
            name: 'Unknown',
            data: [0, 0, 0, 0]
        }],
    });
});
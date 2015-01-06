$(function () {
    $('#barchart-PBI-1').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Philippine Batteries, Inc.'
        },
        xAxis: {
            categories: ['Access Point', 'Camera', 'Desktop', 'Digital Camera', 'External Hard Disk', 'Laptop', 'Monitor', 'Mouse', 'Printer', 'Projector', 'Server', 'Switch', 'TV', 'UPS', 'Video Conference']
        },
        yAxis: {
            title: {
                text: 'Quantity'
            }
        },
        series: [{
            name: 'Active',
            data: [3, 5, 4, 1, 3, 3, 6, 2, 7, 8, 2, 5, 2, 6, 2]
        }, {
            name: 'Inactive',
            data: [2, 7, 5, 3, 5, 6, 6, 2, 8, 2, 5, 1, 5, 3, 5]
        }]
    });
    $(window).resize();
});

$(function () {
    $('#barchart-STAM-1').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'STAM'
        },
        xAxis: {
            categories: ['Access Point', 'Camera', 'Desktop', 'Digital Camera', 'External Hard Disk', 'Laptop', 'Monitor', 'Mouse', 'Printer', 'Projector', 'Server', 'Switch', 'TV', 'UPS', 'Video Conference']
        },
        yAxis: {
            title: {
                text: 'Quantity'
            }
        },
        series: [{
            name: 'Active',
            data: [3, 5, 4, 1, 3, 3, 6, 2, 7, 8, 2, 5, 2, 6, 2]
        }, {
            name: 'Inactive',
            data: [2, 7, 5, 3, 5, 6, 6, 2, 8, 2, 5, 1, 5, 3, 5]
        }]
    });
    $(window).resize();
});

$(function () {
    $('#barchart-ALL-1').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'ALL'
        },
        xAxis: {
            categories: ['Access Point', 'Camera', 'Desktop', 'Digital Camera', 'External Hard Disk', 'Laptop', 'Monitor', 'Mouse', 'Printer', 'Projector', 'Server', 'Switch', 'TV', 'UPS', 'Video Conference']
        },
        yAxis: {
            title: {
                text: 'Quantity'
            }
        },
        series: [{
            name: 'Active',
            data: [3, 5, 4, 1, 3, 3, 6, 2, 7, 8, 2, 5, 2, 6, 2]
        }, {
            name: 'Inactive',
            data: [2, 7, 5, 3, 5, 6, 6, 2, 8, 2, 5, 1, 5, 3, 5]
        }]
    });
    $(window).resize();
});

$(function () {
    $('#barchart-PBI-2').highcharts({
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

$(function () {
    $('#barchart-STAM-2').highcharts({
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

$(function () {
    $('#barchart-ALL-2').highcharts({
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
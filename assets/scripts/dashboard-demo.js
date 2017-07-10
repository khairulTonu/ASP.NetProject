$(function() {
    //  morris Area chart on dashboard///
    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2010 Q1',
            Hijacking: 2666,
            Rape: null,
            Corruption: 2647
        }, {
            period: '2010 Q2',
            Hijacking: 2778,
            Rape: 2294,
            Corruption: 2441
        }, {
            period: '2010 Q3',
            Hijacking: 4912,
            Rape: 1969,
            Corruption: 2501
        }, {
            period: '2010 Q4',
            Hijacking: 3767,
            Rape: 3597,
            Corruption: 5689
        }, {
            period: '2011 Q1',
            Hijacking: 6810,
            Rape: 1914,
            Corruption: 2293
        }, {
            period: '2011 Q2',
            Hijacking: 5670,
            Rape: 4293,
            Corruption: 1881
        }, {
            period: '2011 Q3',
            Hijacking: 4820,
            Rape: 3795,
            Corruption: 1588
        }, {
            period: '2011 Q4',
            Hijacking: 4573,
            Rape: 1467,
            Corruption: 575
        }, {
            period: '2012 Q1',
            Hijacking: 10687,
            Rape: 4460,
            Corruption: 2028
        }, {
            period: '2012 Q2',
            Hijacking: 8432,
            Rape: 5713,
            Corruption: 1791
        }],
        xkey: 'period',
        ykeys: ['Hijacking', 'Rape', 'Corruption'],
        labels: ['Hijacking', 'Rape', 'Corruption'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });
    //  morris donut chart on dashboard///
    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Download Sales",
            value: 12
        }, {
            label: "In-Store Sales",
            value: 30
        }, {
            label: "Mail-Order Sales",
            value: 20
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });

});

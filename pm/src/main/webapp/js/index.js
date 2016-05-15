$(document).ready(function(){
	Morris.Area({
		element: 'morris-area-chart',
        data: [{
            period: '2016-05-01',
            server: 7,
            iOS: 3,
            android: 4
        }, {
            period: '2016-05-02',
            server: 10,
            iOS: 4,
            android: 4
        }, {
            period: '2016-05-03',
            server: 11,
            iOS: 5,
            android: 4
        }, {
            period: '2016-05-04',
            server: 11,
            iOS: 5,
            android: 4
        }, {
            period: '2016-05-05',
            server: 11,
            iOS: 5,
            android: 4
        }, {
            period: '2016-05-06',
            server: 11,
            iOS: 5,
            android: 4
        }, {
            period: '2016-05-07',
            server: 11,
            iOS: 5,
            android: 4
        }],
        xkey: 'period',
        ykeys: ['server', 'iOS', 'android'],
        labels: ['服务端', '苹果', '安卓'],
        pointSize: 1,
        hideHover: 'auto',
        resize: true
    });

});
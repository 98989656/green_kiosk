let totalAmountByNameCookie = getCookieValue("totalAmountByName");
let totalAmountByNameCookieObject = JSON.parse(totalAmountByNameCookie);
let menu_name = Object.keys(totalAmountByNameCookieObject);
let menu_amount = Object.values(totalAmountByNameCookieObject);
	
function barChart(){
  const ctx = document.getElementById('myChart');
  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: menu_name,
      datasets: [{
       label:  '판매량',
        data: menu_amount,
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      },
      responsive : false,
      plugins : {
		  title : {
			  display : true,
			  text : "메뉴별 판매량",
		  }
	  }
    }
  });
}  


function barChart2() {
  const ctx = document.getElementById('myChart2');
  new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['일요일' ,'월요일' , '화요일', '수요일', '목요일' , '금요일' , '토요일'],
      datasets: [{
        label: '요일별 매출 (단위 : 원)',
        data: priceSumdaily,
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      },
      responsive: true,
      plugins: {
        title: {
          display: true,
          text: '요일별 매출 (일주일)',
        },
        datalabels: {
			formatter: function(value, context) {
				return contet.chart.data.labels[context.dataIndex];
			}
		},
      }
    }
  });
}

window.addEventListener('DOMContentLoaded', function () {
  barChart();
  barChart2();
  console.log(priceSumDate);

});


function getCookieValue(cookieName) {
	const name = cookieName + "=";
	const decodedCookie = decodeURIComponent(document.cookie);
	const cookieArray = decodedCookie.split(';');
		
	for (let i = 0; i < cookieArray.length; i++) {
		let cookie = cookieArray[i].trim();
		if (cookie.indexOf(name) === 0) {
			return cookie.substring(name.length, cookie.length);
		}
	}
	return "";
}

function cookieSeparate(cookieObject) {
  const labels = Array.from(cookieObject.keys());
  const data = Array.from(cookieObject.values());


  return {
    labels: labels,
    data: data,
    label: '# of Votes'
  };
}



/*function barChart(){
  const ctx = document.getElementById('myChart');
  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: top10MenuData.map(item => item.name),
      datasets: [{
       label:  '판매량',
        data: top10MenuData.map(item => item.amount),
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      },
      responsive : true,
      plugins : {
		  title : {
			  display : true,
			  text : "당일 메뉴별 판매량(상위 10개)",
		  }
	  }
    }
  });
}  

*/
function barChart2() {

const dateValues = priceSumDate.map(date => new Date(date).getDate());
console.log(priceSumDate);
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
			formatter: function(dateValues, ctx) {
				 return dateValues[ctx.dataIndex];
			}
		},
      }
    }
  });
}


function barChart3() {
	
	 const existingChart = Chart.getChart('myChart3');
    if (existingChart) {
        existingChart.destroy();
    }
    
  const entriesArray = Array.from(menuAmountMap.entries());
  const menuData2 = entriesArray.map(([name, amount]) => ({ name, amount }));
  menuData2.sort((a, b) => b.amount - a.amount);
  const top20MenuData = menuData2.slice(0, 20);

  const ctx = document.getElementById('myChart3').getContext('2d');
  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: top20MenuData.map(item => item.name),
      datasets: [{
        label: '판매량',
        data: top20MenuData.map(item => item.amount),
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
          text: "당월 메뉴별 판매량(상위 20개)"
        }
      }
    }
  });
}


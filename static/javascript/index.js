
	// booking
function show() {
	document.querySelector('#nav-fix').style.paddingBottom = "50px";
}
function change(){
	let a = document.querySelector('#bus-booking');
	a.style.backgroundImage="url('../image/bus.jpg')";
	a.style.backgroundRepeat = "no-repeat";
}
function myToggle(event) {
	var x = document.querySelector(`#myDIV${event.value}`);
	if (x.style.display === "none") {
	  x.style.display = "block";
	} else {
	  x.style.display = "none";
	}
  }
  const searchBox = document.querySelector('.search-box');
  const searchBtn = document.querySelector('#search-btn');
  searchBtn.addEventListener('click', (event) => {
    const xhr = new XMLHttpRequest();
    xhr.open('POST', '/booking/show' );
    xhr.setRequestHeader('X-CSRFToken', getCookie('csrftoken'));
    xhr.onload = () => {
		const data = JSON.parse(xhr.responseText);
		//console.log(xhr.responseText);
		
        const table = document.querySelector('.tflight');
		let html =`<thead class="tfhead"
					<tr>
                       <th>Flight ID</th>
						<th>Name</th>
						<th>Date</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Model</th>
						<th>Action</th>
						</tr>
               </thead>`;
        for(d in data){
            
            html += '<tbody>';
            html += '<tr>';
            html += `<td>${data[d].flight_id}</td>`;
            html += `<td>${data[d].name}</td>`;
            html += `<td>${data[d].date}</td>`;
            html += `<td>${data[d].source}</td>`;
			html += `<td>${data[d].destination}</td>`;
			html += `<td>${data[d].aircraft_model}</td>`;
            html += `<td>
            <a href="update/${data[d].flight_id}"><span class="btn btn-success">Update</span></a>
            <a href="delete/${data[d].flight_id}"><span class="btn btn-danger">Delete</span></a>
            </td>`;
            html += '</tr>';
            html += '</tbody>';
        }
        
        table.innerHTML = html;

    }
    const data = new FormData();
    data.append('searchTerm', searchBox.value);
    xhr.send(data);
    return false;
});

function getCookie(name) {
    var cookieValue = null;
    if (document.cookie && document.cookie !== '') {
        var cookies = document.cookie.split(';');
        for (var i = 0; i < cookies.length; i++) {
            var cookie = cookies[i].trim();
            // Does this cookie string begin with the name we want?
            if (cookie.substring(0, name.length + 1) === (name + '=')) {
                cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                break;
            }
        }
    }
    return cookieValue;
}




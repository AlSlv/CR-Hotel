
function getCookie(name) { var cookie = document.cookie; if (document.cookie != "") 
{
	var cookie_array = cookie.split("; "); 
		for ( var index in cookie_array) 
{ 
			var cookie_name = cookie_array[index].split("="); 
				if (cookie_name[0] == "popupYN") { return cookie_name[1]; 

				}
		}
	} 
	return ; 
	}
	function openPopup(url) 
	{ 
		var cookieCheck = getCookie("popupYN");
		if (cookieCheck != "N") window.open(url, '', 'width=660,height=540,left=0,top=0') 
	} 

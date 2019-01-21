$(document).ready(function() {
	$("#servicing-service").click(function name() {
		window.location.href="../vehicle-servicing-app/servicing.htm";
	});
	
	$("#repairing-service").click(function name() {
		window.location.href="../vehicle-servicing-app/repairing.htm";
	});
	
	$("#denting-service").click(function name() {
		window.location.href="../vehicle-servicing-app/denting.htm";
	});
	
	$("#emergency-service").click(function name() {
		window.location.href="../vehicle-servicing-app/emergency.htm";
	});
	
	$("#servicing-service-tab").click(function name() {
		$(".service-info-book").attr("data-visible", "false");
		$(".service-info-book").eq(0).attr("data-visible", "true");
	});
	
	$("#repairing-service-tab").click(function name() {
		$(".service-info-book").attr("data-visible", "false");
		$(".service-info-book").eq(1).attr("data-visible", "true");
	});
	
	$("#denting-service-tab").click(function name() {
		$(".service-info-book").attr("data-visible", "false");
		$(".service-info-book").eq(2).attr("data-visible", "true");
	});
	
	$("#emergency-service-tab").click(function name() {
		$(".service-info-book").attr("data-visible", "false");
		$(".service-info-book").eq(3).attr("data-visible", "true");
	});
	
	$(".book-checkout").click(function name() {		
		let serviceName = $(this).closest(".checkout-service").find(".checkout-service-name")[0].innerHTML;
		let servicePrice = $(this).closest(".checkout-service").find(".checkout-price")[0].innerHTML;
		let newChild = $("#service-item-dummy").clone(true);
		$(newChild).removeAttr("id");
		$(newChild).attr("data-id", serviceName);
		$(newChild).find(".service-item-name")[0].innerHTML = serviceName;
		$(newChild).find(".service-item-price")[0].innerHTML = servicePrice;
		$(this).prop("disabled", true);
		$(this).next().removeClass("d-none");
		$(".service-list").append(newChild);
	});
	
	$(".service-remove").click(function name() {
		let serviceName = $(this).closest(".checkout-service").find(".checkout-service-name")[0].innerHTML;
		$("div[data-id='" + serviceName +"']").remove();
		$(this).prev().prop("disabled", false);
		$(this).addClass("d-none");
	});
});

function SolidCost(){
    document.getElementById("cc1").innerHTML = "2700/-";
    document.getElementById("m1").innerHTML = " Rs 3510/-";

    document.getElementById("cc2").innerHTML = "2700/-";
    document.getElementById("m2").innerHTML = " Rs 3100/-";

    document.getElementById("cc3").innerHTML = "2100/-";
    document.getElementById("m3").innerHTML = " Rs 2730/-";

    document.getElementById("cc4").innerHTML = "2100/-";
    document.getElementById("m4").innerHTML = " Rs 2730/-";

    document.getElementById("cc5").innerHTML = "2900/-";
    document.getElementById("m5").innerHTML = " Rs 3770/-";

    document.getElementById("cc6").innerHTML = "2900/-";
    document.getElementById("m6").innerHTML = " Rs 3770/-";
    
    document.getElementById("cc7").innerHTML = "2700/-";
    document.getElementById("m7").innerHTML = " Rs 3510/-";

    document.getElementById("cc8").innerHTML = "41000/-";
    document.getElementById("m8").innerHTML = " Rs 53300/-";
}

function MetallicCost(){
    document.getElementById("cc1").innerHTML = "2900/-";
    document.getElementById("m1").innerHTML = " Rs 3770/-";

    document.getElementById("cc2").innerHTML = "2900/-";
    document.getElementById("m2").innerHTML = " Rs 3770/-";

    document.getElementById("cc3").innerHTML = "2200/-";
    document.getElementById("m3").innerHTML = " Rs 2860/-";

    document.getElementById("cc4").innerHTML = "2200/-";
    document.getElementById("m4").innerHTML = " Rs 2860/-";

    document.getElementById("cc5").innerHTML = "3000/-";
    document.getElementById("m5").innerHTML = " Rs 3900/-";

    document.getElementById("cc6").innerHTML = "3000/-";
    document.getElementById("m6").innerHTML = " Rs 3900/-";
    
    document.getElementById("cc7").innerHTML = "2900/-";
    document.getElementById("m7").innerHTML = " Rs 3770/-";

    document.getElementById("cc8").innerHTML = "44000/-";
    document.getElementById("m8").innerHTML = " Rs 57200/-";
}

function PearlCost(){
    document.getElementById("cc1").innerHTML = "2900/-";
    document.getElementById("m1").innerHTML = " Rs 3770/-";

    document.getElementById("cc2").innerHTML = "2900/-";
    document.getElementById("m2").innerHTML = " Rs 3770/-";

    document.getElementById("cc3").innerHTML = "2200/-";
    document.getElementById("m3").innerHTML = " Rs 2860/-";

    document.getElementById("cc4").innerHTML = "2200/-";
    document.getElementById("m4").innerHTML = " Rs 2860/-";

    document.getElementById("cc5").innerHTML = "3000/-";
    document.getElementById("m5").innerHTML = " Rs 3900/-";

    document.getElementById("cc6").innerHTML = "3000/-";
    document.getElementById("m6").innerHTML = " Rs 3900/-";
    
    document.getElementById("cc7").innerHTML = "2900/-";
    document.getElementById("m7").innerHTML = " Rs 3770/-";

    document.getElementById("cc8").innerHTML = "44000/-";
    document.getElementById("m8").innerHTML = " Rs 57200/-";
}

function Book(){
    let servicename = document.getElementById("name1").innerHTML;
    let ccprice = document.getElementById("cc1").innerHTML;
    document.getElementById("billitem").innerHTML = servicename;
    document.getElementById("billamt").innerHTML =  ccprice;
}
function Bookbtn2(){
    let servicename = document.getElementById("name2").innerHTML;
    let ccprice = document.getElementById("cc2").innerHTML;
    document.getElementById("billitem").innerHTML = servicename;
    document.getElementById("billamt").innerHTML =  ccprice;
}

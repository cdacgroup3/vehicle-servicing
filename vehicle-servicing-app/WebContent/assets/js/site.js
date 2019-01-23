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
		$(this).parent().siblings().removeClass('active');
		$(this).parent().addClass('active');
	});
	
	$("#repairing-service-tab").click(function name() {
		$(".service-info-book").attr("data-visible", "false");
		$(".service-info-book").eq(1).attr("data-visible", "true");
		$(this).parent().siblings().removeClass('active');
		$(this).parent().addClass('active');
	});
	
	$("#denting-service-tab").click(function name() {
		$(".service-info-book").attr("data-visible", "false");
		$(".service-info-book").eq(2).attr("data-visible", "true");
		$(this).parent().siblings().removeClass('active');
		$(this).parent().addClass('active');
	});
	
	$("#emergency-service-tab").click(function name() {
		$(".service-info-book").attr("data-visible", "false");
		$(".service-info-book").eq(3).attr("data-visible", "true");
		$(this).parent().siblings().removeClass('active');
		$(this).parent().addClass('active');
	});
	
	var sum=0;
	var tot=0;
	
	$(".book-checkout").click(function name() {		
		let serviceName = $(this).closest(".checkout-service").find(".checkout-service-name")[0].innerHTML;
		let servicePrice = $(this).closest(".checkout-service").find(".checkout-price")[0].innerHTML;
		let newChild = $("#service-item-dummy").clone(true);
		$(newChild).removeAttr("id");
		$(newChild).attr("data-id", serviceName);
		$(newChild).find(".service-item-name")[0].innerHTML = serviceName;
		$(newChild).find(".service-item-name")[1].value = serviceName;		
		$(newChild).find(".service-item-price")[0].innerHTML = servicePrice;
		$(newChild).find(".service-item-price")[1].value = servicePrice;
		$(this).prop("disabled", true);
		$(this).next().removeClass("d-none");
		$(".service-list").append(newChild);	
		
		sum += parseInt(servicePrice);
		$(".check").find("#totalprice")[0].innerHTML="Rs. "+sum;
		tot += parseInt(marketPrice);
		$(".check").find("#marketprice")[0].innerHTML="Rs. "+tot;
		var s=Number(tot)-Number(sum);
		$(".check").find("#saveprice")[0].innerHTML="Rs. "+s;
		
	});
	
	$(".service-remove").click(function name() {
		let serviceName = $(this).closest(".checkout-service").find(".checkout-service-name")[0].innerHTML;
		$("div[data-id='" + serviceName +"']").remove();
		$(this).prev().prop("disabled", false);
		$(this).addClass("d-none");
		
		sum -= parseInt(servicePrice);
		$(".check").find("#totalprice")[0].innerHTML="Rs. "+sum;
		tot -= parseInt(marketPrice);
		$(".check").find("#marketprice")[0].innerHTML="Rs. "+tot;
		
	});
	
	$("#checkout-login").click(function name() {
		window.location.href="../vehicle-servicing-app/login.htm";
	});
	
	//var carBrandModel = { Honda:["Accent(Diesel)", "Accent(Petrol)"], Hyundai:["Accent(D)", "Accent(P)"] };
	
	var carBrandModel = { Honda:["Accent(Diesel)", "Accent(Petrol)","Accord (Petrol)","Amaze (Diesel)",
		"Amaze (Petrol)","Brio (Petrol)","CR V (Petrol)","CRV (Diesel)","City (Diesel)","City (Petrol)",
		"Civic (Petrol)","Jazz (Diesel)","Jazz (Petrol)","Mobilio (Diesel)","Mobilio (Petrol)"], 
		Hyundai:["Accent (Diesel)","Accent (Petrol)","Creta (Diesel)","Creta (Petrol)","Elantra (Diesel)",
			"Elantra (Petrol)","Elite i10 (Diesel)","Elite i10 (Petrol)","Eon (Petrol)","Eon (LPG)",
			"Getz (Petrol)","Grand i10 (Diesel)","Grand i10 (LPG)","Grand i10 (Petrol)","Grand i10 (CNG)"],
		"Maruti Suzuki":["800 MPFI (Petrol)","800 Non MPFI (Petrol)",">A Star (Petrol)","Alto (Petrol)",
			"Alto 800 (Petrol)","Alto 800 (CNG)","Alto k10 (Petrol)","Alto k10 (CNG)","Baleno (Diesel)",
			"Baleno (Petrol)","Celerio (Petrol)","Celerio (Diesel)","Celerio (CNG)","Ciaz (Diesel)",
			"Ciaz (Petrol)","Eeco (CNG)","Eeco (Petrol)","Ertiga (Diesel)","Ertiga (Petrol)","Ertiga (CNG)",
			"Esteem (Petrol)","Grand Vitara (Petrol)","Grand Vitara Brezza (Diesel)","Gypsy (Petrol)",
			"Kizashi (Petrol)","Omni (Petrol)"],	
		Toyota:["Camry (Petrol)","Corolla (Petrol)","Corolla Altis (Petrol)","Corolla Altis (Diesel)",
			"Etios (Diesel)","Etios (Petrol)","Etios Cross (Diesel)","Etios Cross (Petrol)","Etios Liva (Petrol)",
			"Etios Liva (Diesel)","Fortuner (Diesel)","Innova (Diesel)","Innova (Petrol)",
			"Land Cruiser 200(Diesel)","Land Cruiser prade (Diesel)","Prius (Petrol)","Qualis (Diesel)",
			"Qualis (Petrol)"],
		Ford:["Classic (Petrol)","Classic (Diesel)","Ecosport (Petrol)", "Ecosport (Diesel)","Endeavour (Diesel)",
			"Escort (Petrol)","Fiesta (Petrol)","Figo Aspire (Petrol)","Fusion (Petrol)","Fusion (Diesel)",
			"Ikon (Petrol)"],
		Fiat:["Abarth Avventura (Petrol)","Abarth Punto (Petrol)","Avventura (Diesel)","Avventura (Petrol)",
				"Linea (Diesel)","Linea (Petrol)","Linea Classic (Diesel)","Linea Classic (Petrol)",
				"Palio (Diesel)","Palio (Petrol)","Palio Adventure (Petrol)","Punto EVO (Petrol)",
				"Punto EVO (Diesel)","Punto Pure (Petrol)","Punto Pure (Diesel)","Siena (Diesel)","Siena (Petrol)",
				"Uno (Diesel)","Uno (Petrol)"]};
	
	$('#carBrand').on('change', function() {
		$('#carModel').find('option').remove();
		var carModel = carBrandModel[this.value];
		$.each(carModel, function(index, value) {
			 var itemval= '<option value="' + value + '">' + value + '</option>';
			 $("#carModel").append(itemval);
		});
	});
	
	
});

function SolidCost(){
    document.getElementById("cc1").innerHTML = "2700/-";
    document.getElementById("m1").innerHTML = "3510/-";

    document.getElementById("cc2").innerHTML = "2700/-";
    document.getElementById("m2").innerHTML = "3100/-";

    document.getElementById("cc3").innerHTML = "2100/-";
    document.getElementById("m3").innerHTML = "2730/-";

    document.getElementById("cc4").innerHTML = "2100/-";
    document.getElementById("m4").innerHTML = "2730/-";

    document.getElementById("cc5").innerHTML = "2900/-";
    document.getElementById("m5").innerHTML = "3770/-";

    document.getElementById("cc6").innerHTML = "2900/-";
    document.getElementById("m6").innerHTML = "3770/-";
    
    document.getElementById("cc7").innerHTML = "2700/-";
    document.getElementById("m7").innerHTML = " 3510/-";

    document.getElementById("cc8").innerHTML = "41000/-";
    document.getElementById("m8").innerHTML = "53300/-";
}

function MetallicCost(){
    document.getElementById("cc1").innerHTML = "2900/-";
    document.getElementById("m1").innerHTML = "3770/-";

    document.getElementById("cc2").innerHTML = "2900/-";
    document.getElementById("m2").innerHTML = " 3770/-";

    document.getElementById("cc3").innerHTML = "2200/-";
    document.getElementById("m3").innerHTML = "2860/-";

    document.getElementById("cc4").innerHTML = "2200/-";
    document.getElementById("m4").innerHTML = "2860/-";

    document.getElementById("cc5").innerHTML = "3000/-";
    document.getElementById("m5").innerHTML = "3900/-";

    document.getElementById("cc6").innerHTML = "3000/-";
    document.getElementById("m6").innerHTML = "3900/-";
    
    document.getElementById("cc7").innerHTML = "2900/-";
    document.getElementById("m7").innerHTML = "3770/-";

    document.getElementById("cc8").innerHTML = "44000/-";
    document.getElementById("m8").innerHTML = "57200/-";
}

function PearlCost(){
    document.getElementById("cc1").innerHTML = "2900/-";
    document.getElementById("m1").innerHTML = "3770/-";

    document.getElementById("cc2").innerHTML = "2900/-";
    document.getElementById("m2").innerHTML = " 3770/-";

    document.getElementById("cc3").innerHTML = "2200/-";
    document.getElementById("m3").innerHTML = "2860/-";

    document.getElementById("cc4").innerHTML = "2200/-";
    document.getElementById("m4").innerHTML = "2860/-";

    document.getElementById("cc5").innerHTML = "3000/-";
    document.getElementById("m5").innerHTML = "3900/-";

    document.getElementById("cc6").innerHTML = "3000/-";
    document.getElementById("m6").innerHTML = "3900/-";
    
    document.getElementById("cc7").innerHTML = "2900/-";
    document.getElementById("m7").innerHTML = "3770/-";

    document.getElementById("cc8").innerHTML = "44000/-";
    document.getElementById("m8").innerHTML = "57200/-";
}
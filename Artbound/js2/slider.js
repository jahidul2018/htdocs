sliderInt=1;
sliderNext=2;

$(document).ready(function(){
	$("#slider > img#1").fadeIn(300);
	startSlider();
});

function startSlider(){
	count=$("#slider > img");
	
	loop=setInterval(function(){
		$("#slider>img").fadeOut(300);
		$("#slider>img#"+sliderNext).fadeIn(300);
		
		sliderInt=sliderNext;
		sliderNext=sliderNext+1;
	},3000)
}


function prev(){
	newSlide=sliderInt-1;
	showSlide(newSlide);
}

function next(){
	newSlide=sliderInt+1;
	showSlide(newSlide);
}

function showSlide(id){
	 if(id>count){
		 id=1;
	 }
	 else if(id<1){
		 id=count;
	 }
	 
	 $("#slider>img").fadeOut(300);
	 $("#slider>img#"+id).fadeIn(300);
	 
	 sliderInt=id;
	 sliderNext=id+1;
}



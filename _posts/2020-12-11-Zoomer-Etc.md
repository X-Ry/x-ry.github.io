---
title: 'The Zoomer - Etcetera'
date: '2020-12-11 8:53pm'
description: ''
author: x-ry	

layout: post
comments: false
hidden: true
published: true

surfaceTags: false
showDate: false
tag:
  - Etcetera
---
<style>
#image {
  height: 300px;
  width: 300px;
  background: url('https://x-ry.github.io/assets/images/posts/DTC1/prototype1.png') 0px 0px;
}

</style>

Here is my half-finished attempt at creating something like "Eel Slap" where you can drag the 3d model around on the website.


<div id="demo">
	<p id="image"> </p>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.0.0/p5.js"></script>
<script>
	function getWidth() {
		  return Math.max(
		    document.body.scrollWidth,
		    document.documentElement.scrollWidth,
		    document.body.offsetWidth,
		    document.documentElement.offsetWidth,
		    document.documentElement.clientWidth
		  );
		}
/*
	

const el = document.querySelector("#image");

el.addEventListener("mousemove", (e) => {
  el.style.backgroundPositionX = e.offsetX + "px";
  el.style.backgroundPositionY = e.offsetY + "px";
});

*/

		
	let imgP;
	function setup() {
		const canvas = createCanvas(575, 600);
		canvas.parent('demo');
		
		imgP = loadImage("https://x-ry.github.io/assets/images/posts/DTC1/spinningTablet.gif")
	}

	function draw(){
		imgP.pause();

		background(0,0,0);
		image(imgP, 0, 0);

	    let maxFrame = imgP.numFrames() - 1;

		let frameNumber = floor(map(mouseX, 0, getWidth(), 0, maxFrame, true));
		imgP.setFrame(frameNumber);
	}


</script>

Here's a video of the first time I got animating the model in OnShape to work. (Well, sort of...)

<video width="400" controls autoplay>
    <source src="https://x-ry.github.io/assets/images/posts/DTC1/secret.mov" type="video/mp4">
</video>

Back to the "The Zoomer" Main Article [here](https://x-ry.github.io/Zoomer).
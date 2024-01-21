A couple parts in the videos frames are not matched up, but the variable change can still be seen for witdh is 32, and animation speed scale is set at 15. The vector point in the Line2D.points[1].x = 64
Hello wonderful adventures and welcome to the first tutorial by field of games studios, for simplicity, FOG studios.
In this tutorial with the Godot Engine, we're going to make a lightening bolt effect using a lin2D with an animation.
Let's get started. First in the scene we have a Node2D to hold our line2D. Next we have the line2D.
Click on it to open the inspector parameters. First we'll set the width to match our texture size.
I know that in my case it is 32. Keep in mind that width here determines the thickness of your line image.
So for instance, my image is 64 by 32. So from the image height, I grab my width.
This can vary for you and you may choose other settings for aesthetics reasons.
Next click texture mode in the fill settings drop down menu and set it to stretch.
Click the texture dropdown and choose animated texture.
Important here, if you're not animating the bolt, you can just set it to the image in your folder.
After making it animated, we'll choose to make the amount of frames for your animations.
Animation frames start at zero here. We can also adjust other parameters here for the animation like speed and even add delays.
That's it for setting it up. Now let's look at it. Up at the top we'll click add point.
Just add two for now and then I'll show you how to adjust them.
So here in points we have an array, Packed Vector Array to be exact and for this purpose the meaning will have nothing for us.
However you can use this to adjust points and refer to from code to add more points, take away points and what we'll be doing, moving points.
So if it's not at zero, let's make it for starters. Zero point is the first point and takes the index zero.
From there, the values go up the more points we add. We can obviously add nearly as many points in the beginning that we like and manipulate them as we like.
So let's try it out. Our end point will be where the touch is. In my case I am checking for touch input, but you can check for whatever you like, even buttons.

For a closer look... the short video is here

https://studio.youtube.com/video/tq87hEcjFzk/edit

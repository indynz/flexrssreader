A Note
======

This project was setup in August 2007 on Google Code. I've just moved it to GitHub. The project has not been updated since then.

But have a peak at the code and it should still be useful.

What is Flex RSS Reader
=======================

A lot of developers are looking to understand the Cairngorm framework for developing Flex 2.0 applications. However, most get intimidated by looking at the documentation and just go away.

I find that learning Cairngorm is made easier by looking at simple applications written using the Cairngorm framework.

That is the reason for setting up this project.

The project uses Cairngorm 2.2.

(Originally posted on my blog: http://nagpals.com/posts/simple-flex-rss-reader-using-cairngorm/)

1. Download and Unzip [FlexRSSReader1.0.zip](http://nagpals.com/wp-content/uploads/2010/12/FlexRSSReader1.0.zip) in a directory. This will create a subfolder:

    * com (containing the Flex code for the application and Cairngorm 2.2 SWC) 

2. Set up the app in Flex Builder.

   1. Create a new Flex project in Flex Builder. 

    2. Select "Basic" 

    3. Specify Project Name: FlexRSSReader and point it to the directory where you unzipped the source file. 

    4. Add the Cairngorm library -- Cairngorm.swc -- to the project by going to Project > Properties > Flex Build Path > Library Path (tab) > Add SWC. Select the Cairngorm.swc in /com/adobe/cairngorm directory. 

    5. Run the application and you should see the Flex RSS Reader load up in a browser.
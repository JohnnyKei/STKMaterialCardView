# STKMaterialCardView

I made a CardView which has zDepth.

Thanks to [reference(Japanese)](http://qiita.com/ShogoMizumoto/items/38ec4adba519c2977e2a), I could make shadow.


#Usage
Choose ZDepth from 5 type

	typedef enum{      
	    MaterialZDepth1 = 1,
	    MaterialZDepth2,           
	    MaterialZDepth3,           
	    MaterialZDepth4,           
	    MaterialZDepth5,           
	}MaterialZDepth;

Use like this
	         
	cardView.zDepth = MaterialZDepth1;

	cardView.zDepth = (MaterialZDepth)sender.tag;




![Image](https://github.com/Ka0sTie/STKMaterialCardView/blob/master/sample.gif)






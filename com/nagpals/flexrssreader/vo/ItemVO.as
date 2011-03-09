package com.nagpals.flexrssreader.vo{
	import com.adobe.cairngorm.vo.IValueObject;
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class ItemVO implements IValueObject{
		public var title:String;
		public var link:String;
		public var description:String;
	}
}
function handleComplete(event:Event):void {
  // ... existing code ...

  var loader:Loader = event.target as Loader;
  var data:Object = loader.content;

  if (data is Array) {
    var myArray:Array = data as Array;
    for each (var item:Object in myArray) {
      if (item.hasOwnProperty("someProperty")) {
        trace(item.someProperty);
      } else {
        trace("Item missing someProperty:", item);
      }
    }
  } else {
    trace("Loaded data is not an array:", data);
    // Handle the case where data is not an array
  }
} 
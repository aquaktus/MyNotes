//just a small explanation for some core d3 concepts
var bars = d3.select("#d3Practice")     //searches for the selector (class, tag, id) and returns the first element in the selection
    .selectAll("div")           //like above, only returns a selection with all the elements
    .data(this.data)          //binds the data (array) to the elements. If the data is smaller than the selection, then 

    bars.enter()            //.enter()   this returns a selection with all the data elements that weren't in the DOM
    .append("div")            //adds an element to the current selection
    .attr("class", "green")       //adds and attribute <div attr=""> : not for style. use for x, y, blah blah
    .style("width", "0px")        //adds a style property.... basically css
    .style("opacity", 0)
    .text((d,i:any)=>{return d})        //its the text insite the element
    .transition(this.t)               //adds a transition delay and tweens between values set before and after the method
    .style("width", "600px")
    .style("opacity",1);
    
    .on("mouseover", function(){d3.select(this).attr("class", "")})         //detects mouseover event and you can refrence the selection to change attributes of it by this, but don't use ()=>{} cuz typescript has conflicts with it 
    .on("mouseout", function(){d3.select(this).attr("class", "green")})         //same only mouseout

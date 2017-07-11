//here is a snipet for a self repeating function in js/typescript using setTimeout(()=>{})
timer(amount: number){
  //do stuff
  setTimeout(()=>{this.timer(amount)}, amount);
}
ngOnInit(){
  this.timer(300);
}


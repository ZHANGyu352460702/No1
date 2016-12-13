 /*===CSS加属性====*/
 var fn = new Class({
    defaults: {
        hoverClass:"current"
    },
    initialize: function(elements, options){
        this.container = elements;
        this.settings = $extend(this.defaults, options || {});
        this.fnClassToggle();
    },
    fnClassToggle: function(){
        var cl = this.settings.hoverClass;
        if(cl){
            this.container.each(function(term, index){
                term.addEvent("mouseenter",function(){
                    this.addClass(cl);
                });
                term.addEvent("mouseleave",function(){
                    this.removeClass(cl);
                });
            });
        }
    }
}); 
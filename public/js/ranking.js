$('document').ready(function(){
    
    

    $('.especializacion').click(function(){
        $('#especializacion-content').removeClass('fadeOutRight'),
        $('#nacional-content').addClass('fadeOutLeft'),
        $('#especializacion-content').addClass('fadeInRight'),
        $('#especializacion-content').show()
    });
    $('.nacional').click(function(){
        $('#nacional-content').removeClass('fadeOutLeft'),
        $('#especializacion-content').removeClass('fadeInRight'),
        $('#nacional-content').addClass('fadeInLeft'),
        $('#especializacion-content').addClass('fadeOutRight')
        
    });
    $('.mayoristas').click(function(){
        
        $('#mayoristas-content').removeClass('fadeOutLeft'),
        $('#mayoristas-content').removeClass('fadeOutRight'),
        $('#mayoristas-content').removeClass('fadeInRight'),
        $('#mayoristas-content').addClass('fadeInLeft'),
        $('#tiendas-content').addClass('fadeOutLeft'),
        $('#supermercados-content').addClass('fadeOutRight'),
        $('#mayoristas-content').addClass('fadeInRight'),
        $('#mayoristas-content').show()

        
    });
    
    $('.supermercados').click(function(){
        $('#supermercados-content').removeClass('fadeOutRight'),
        $('#tiendas-content').removeClass('fadeInLeft'),
        $('#tiendas-content').addClass('fadeOutLeft'),
        $('#mayoristas-content').removeClass('fadeInRight'),
        $('#mayoristas-content').addClass('fadeOutLeft'),
        $('#supermercados-content').addClass('fadeInRight'),
        $('#supermercados-content').show()
    });
    $('.tiendas').click(function(){
        $('#tiendas-content').removeClass('fadeOutLeft'),
        $('#tiendas-content').addClass('fadeInLeft'),
        $('#mayoristas-content').removeClass('fadeOutLeft'),
        $('#mayoristas-content').addClass('fadeOutRight'),
        $('#supermercados-content').removeClass('fadeInRight'),
        $('#supermercados-content').addClass('fadeOutRight')
        
    });

    
   
    
});

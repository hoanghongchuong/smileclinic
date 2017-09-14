jQuery(function ($) {

        //banner silde

        var owl = $(".banner-slider");

        owl.owlCarousel({

            loop:true,

            autoWidth:false,

            autoplay: true,

            items:1,

            dots: true,

            responsive:{

                0:{

                    items:1,

                    center:true

                },

                480:{

                    items:1

                },

                678:{

                    items:1

                },

                960:{

                    items:1

                }

            }

        });



        //end banner silde



    //end project silde

    $('.slide_partner').owlCarousel({

        loop:true,

        autoWidth:false,

        autoplay: true,

        items:3,

        dots: false,

        margin: 20,

        responsive:{

            0:{

                items:3,

                center:true

            },

            480:{

                items:5

            },

            678:{

                items:6

            },

            960:{

                items:7

            }

        }

    });

        //new product

        $('.product_slider').owlCarousel({

            loop:true,

            nav: true,

            navText: ["<img src='public/images/prev2-btn.png'>","<img src='public/images/next2-btn.png'>"],

            autoWidth:false,

            autoplay: true,

            items:5,

            dots: false,

            margin: 20,

            responsive:{

                0:{

                    items:1,

                    center:true

                },

                480:{

                    items:3

                },

                678:{

                    items:4

                },

                960:{

                    items:5

                }

            }

        });

        //end new product

        //project slide

        $('.project-slider').owlCarousel({

            loop:true,

            nav: true,

            navText: ["<img src='images/prev-btn.png'>","<img src='images/next-btn.png'>"],

            autoWidth:false,

            autoWidth:false,

            autoplay: true,

            items:4,

            dots: false,

            margin: 25,

            responsive:{

                0:{

                    items:1,

                    center:true

                },

                480:{

                    items:2

                },

                678:{

                    items:3

                },

                960:{

                    items:4

                }

            }

        });

        //end project slide



        var owlpro = $('.product-image_slide');

        owlpro.owlCarousel({

            loop: true,

            items: 1,

            thumbs: true,

            thumbImage: true,

            thumbContainerClass: 'owl-thumbs',

            thumbItemClass: 'owl-thumb-item',

            dots: false

        });



        $('.news-related_slide').owlCarousel({

            loop:true,

            autoWidth:false,

            autoplay: true,

            items:4,

            dots: false,

            margin: 20,

            responsive:{

                0:{

                    items:1,

                    center:true

                },

                480:{

                    items:2

                },

                678:{

                    items:3

                },

                960:{

                    items:4

                }

            }

        });



    $('ul.nav-dropdown li.dropdown').hover(function() {

        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(300);

    }, function() {

        $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeOut(50);

    });



    new WOW().init();





});
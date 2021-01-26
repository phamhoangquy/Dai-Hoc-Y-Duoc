$(document).ready(function() {
    //Library Base function
    $('[data-fancybox=""]').fancybox({
        smallBtn: true,
        toolbar: true,
        type: "html",
        clickSlide: 'toggleControls'
    });
    setBackground();
    tabActive();
    swiperInit();
    toggleMobileMenu();
    //Declare NEW function Javascript
    backToTop();
    watchMoreDetail();
    filterCate();
});

function backToTop() {
    let btn = $(".back-to-top");
    btn.on("click", function(e) {
        e.preventDefault();
        $("html, body").animate({
                scrollTop: 0
            },
            "300"
        );
    });
}

function watchMoreDetail() {
    let watchMore = $(".spe-detail-wrapper .btn-view-more");
    let article = $(".spe-detail-wrapper  article");
    let maxHeight = 1400;
    let height = 0;
    let cotent = $(".spe-detail-wrapper article .fullcontent");
    let pArray = $(".spe-detail-wrapper  article .fullcontent").children();
    watchMore.on("click", function() {
        // console.log()
        // console.log($(this).parents('article'))
        if ($(this).parents('article').hasClass('active')) {
            cotent.css({
                "max-height": 1400 + "px"
            });
            article.removeClass("active");
            $(this).removeClass('open')
        } else {
            $.each(pArray, function(indexInArray, valueOfElement) {
                // height.push(element.height());

                height += $(valueOfElement).height();
            });
            cotent.not($(this).parents("article").find('.fullcontent')).css({
                "max-height": 1400 + "px"
            });
            article.not($(this).parents("article")).removeClass("active");
            $(this).addClass('open')
            $(this).parents("article").find('.fullcontent').css({
                "max-height": "100%"
            });
            $(this).parents("article").addClass("active");
            $("html, body").animate({
                scrollTop: $(this).parents('.fullcontent').offset().top - 20
            });
        }
    });
    // cotent.each(function() {
    //     console.log(cotent.height())

    //     if (cotent.height() < maxHeight) {
    //         $(this).find('.btn-view-more').hide()
    //     }
    // });
}


function swiperInit() {
    var homerSwiper = new Swiper(".primary-banner .swiper-container", {
        // Optional parameters
        slidesPerView: 1,
        speed: 1205,
        autoplay: {
            delay: 3000
        },
        lazy: true,
        pagination: {
            el: '.primary-banner  .swiper-pagination',
            type: 'bullets',
            clickable: true
        },
    });
    var topBanner = new Swiper(".top-banner .swiper-container", {
        // Optional parameters
        speed: 1205,
        lazy: true,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        }
    });

    var homeChooseUs = new Swiper('.home-our-mission .swiper-container', {
        breakpointsInverse: true,
        centeredSlides: true,
        speed: 1205,
        lazy: true,
        breakpoints: {
            200: {
                slidesPerView: 1,
            },
            1024: {
                slidesPerView: 3,
            }

        },
        spaceBetween: 0,
        navigation: {
            nextEl: '.home-our-mission .nav-arrow-next',
            prevEl: '.home-our-mission .nav-arrow-prev',
        },
    });
    if ($(window).width() > 1025) {
        var facilitySiper = new Swiper('.facility-swiper .swiper-container', {
            breakpointsInverse: true,
            centeredSlides: true,
            speed: 1205,
            lazy: true,
            breakpoints: {
                200: {
                    slidesPerView: 1,
                },
                1024: {
                    slidesPerView: 1.1,
                }
            },
            navigation: {
                nextEl: '.facility-swiper .nav-arrow-next',
                prevEl: '.facility-swiper .nav-arrow-prev',
            },
        });
    }


    try {
        homeChooseUs.slideTo(1)
    } catch (error) {}
    var serviceDetail = new Swiper('.service-detail-4 .swiper-container', {
        breakpointsInverse: true,
        speed: 1205,
        lazy: true,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            400: {
                slidesPerView: 2,

            },
            480: {
                slidesPerView: 3,

            },
            768: {
                slidesPerView: 3,

            },
            1025: {
                slidesPerView: 6,
            },
            1440: {
                slidesPerView: 6,
            },

        },
        spaceBetween: 30,
        navigation: {
            nextEl: '.service-detail-4 .nav-arrow-next',
            prevEl: '.service-detail-4 .nav-arrow-prev',
        },
    });
    var serviceDetail = new Swiper('.service-detail-5 .swiper-container', {
        breakpointsInverse: true,
        speed: 1205,
        lazy: true,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            400: {
                slidesPerView: 2,

            },
            480: {
                slidesPerView: 2,

            },
            768: {
                slidesPerView: 3,

            },
            1025: {
                slidesPerView: 3,
            },
            1440: {
                slidesPerView: 3,
            },

        },
        spaceBetween: 30,
        navigation: {
            nextEl: '.service-detail-5 .nav-arrow-next',
            prevEl: '.service-detail-5 .nav-arrow-prev',
        },
    });
    var speDetail = new Swiper('.specialized-detail-2 .swiper-container', {
        breakpointsInverse: true,
        speed: 1205,
        lazy: true,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            400: {
                slidesPerView: 2,

            },
            480: {
                slidesPerView: 3,

            },
            768: {
                slidesPerView: 3,

            },
            1025: {
                slidesPerView: 6,
            },
            1440: {
                slidesPerView: 6,
            },

        },
        spaceBetween: 30,
        navigation: {
            nextEl: '.specialized-detail-2 .nav-arrow-next',
            prevEl: '.specialized-detail-2 .nav-arrow-prev',
        },
    });
    var doctorDetail = new Swiper('.doctor-detail-4 .swiper-container', {
        breakpointsInverse: true,
        speed: 1205,
        lazy: true,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            400: {
                slidesPerView: 2,

            },
            480: {
                slidesPerView: 2,

            },
            768: {
                slidesPerView: 3,

            },
            1025: {
                slidesPerView: 3,
            },
            1440: {
                slidesPerView: 3,
            },

        },
        spaceBetween: 30,
        navigation: {
            nextEl: '.doctor-detail-4 .nav-arrow-next',
            prevEl: '.doctor-detail-4 .nav-arrow-prev',
        },
    });
    var otherNews = new Swiper('.news-other .swiper-container', {
        breakpointsInverse: true,
        speed: 1205,
        lazy: true,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            400: {
                slidesPerView: 1,

            },
            480: {
                slidesPerView: 2,

            },
            768: {
                slidesPerView: 3,

            },
            1025: {
                slidesPerView: 3,
            },
            1440: {
                slidesPerView: 3,
            },

        },
        spaceBetween: 30,
        navigation: {
            nextEl: '.news-other .nav-arrow-next',
            prevEl: '.news-other .nav-arrow-prev',
        },
    });
    var specializedDetail = new Swiper('.specialized-detail .swiper-container', {
        breakpointsInverse: true,
        speed: 1205,
        lazy: true,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            400: {
                slidesPerView: 1,

            },
            480: {
                slidesPerView: 2,

            },
            768: {
                slidesPerView: 2,

            },
            1025: {
                slidesPerView: 3,
            },
            1440: {
                slidesPerView: 3,
            },

        },
        spaceBetween: 30,
        navigation: {
            nextEl: '.specialized-detail .nav-arrow-next',
            prevEl: '.specialized-detail .nav-arrow-prev',
        },
    });
    var newsService = new Swiper('.swiper-home-service .swiper-container', {
        speed: 1205,
        lazy: true,
        breakpointsInverse: true,

        breakpoints: {
            200: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 2,
            },
            576: {
                slidesPerView: 3,
            },
            768: {
                slidesPerView: 2,
                slidesPerColumn: 2,
            }

        },
        spaceBetween: 30,
        navigation: {
            nextEl: '.swiper-home-service .nav-arrow-next',
            prevEl: '.swiper-home-service .nav-arrow-prev',
        },
    });
    var homeSpecialist = new Swiper('.swiper-home-specialist .swiper-container', {
        speed: 1205,
        lazy: true,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
                slidesPerColumn: 3,
                spaceBetween: 10,
            },
            768: {
                slidesPerView: 1,
                slidesPerColumn: 4,
            },
            1280: {
                slidesPerView: 1,
                slidesPerColumn: 5,
            }
        },
        spaceBetween: 20,
        navigation: {
            nextEl: '.swiper-home-specialist .nav-arrow-next',
            prevEl: '.swiper-home-specialist .nav-arrow-prev',
        },
    });
    var galleryThumbs = new Swiper('.gallery-thumbs', {

        spaceBetween: 10,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 2,
            },
            576: {
                slidesPerView: 3,
            },
            768: {
                slidesPerView: 6,
            },
            1280: {
                slidesPerView: 10,
            }
        },
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
    });
    var galleryTop = new Swiper('.gallery-top', {
        spaceBetween: 0,
        centeredSlides: true,
        navigation: {
            nextEl: '.nav-next',
            prevEl: '.nav-prev',
        },
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
                spaceBetween: 0,
            },
            1280: {
                slidesPerView: 1,
                spaceBetween: 40,
            }
        },
        thumbs: {
            swiper: galleryThumbs
        }
    });
    $(".trinity-swiper .swiper-container").each(function(index, element) {
        var $this = $(this);
        $this.addClass("tri-instance-" + index);
        $this.parent().find(".nav-arrow-prev").addClass("btn-prev-" + index);
        $this.parent().find(".nav-arrow-next").addClass("btn-next-" + index);

        var swiper = new Swiper(".tri-instance-" + index, {
            speed: 1205,
            lazy: true,
            speed: 750,
            observer: true,
            spaceBetween: 30,
            observeParents: true,
            breakpointsInverse: true,
            breakpoints: {
                200: {
                    slidesPerView: 1,
                },
                576: {
                    slidesPerView: 2,
                },
                769: {
                    slidesPerView: 3,
                },
                1200: {
                    slidesPerView: 3,
                },
            },
            navigation: {
                nextEl: ".btn-next-" + index,
                prevEl: ".btn-prev-" + index
            }

        });
    });
    $(".single-swiper .swiper-container").each(function(index, element) {
        var $this = $(this);
        $this.addClass("single-instance-" + index);
        $this.parent().find(".nav-arrow-prev").addClass("btn-prev-" + index);
        $this.parent().find(".nav-arrow-next").addClass("btn-next-" + index);
        $this.parent().find(".swiper-pagination").addClass("pagination-instance-" + index);

        var swiper = new Swiper(".single-instance-" + index, {
            speed: 1205,
            lazy: true,
            speed: 750,
            observer: true,
            spaceBetween: 30,
            observeParents: true,
            slidesPerView: 1,
            navigation: {
                nextEl: ".btn-next-" + index,
                prevEl: ".btn-prev-" + index
            },
            pagination: {
                el: '.pagination-instance-' + index,
                type: 'bullets',
                clickable: true
            },
        });
    });
    $(".four-swiper .swiper-container").each(function(index, element) {
        var $this = $(this);
        $this.addClass("instance-" + index);
        $this.parent().find(".nav-arrow-prev").addClass("btn-prev-" + index);
        $this.parent().find(".nav-arrow-next").addClass("btn-next-" + index);

        var swiper = new Swiper(".instance-" + index, {
            speed: 1205,
            lazy: true,
            speed: 750,
            observer: true,
            spaceBetween: 30,
            observeParents: true,
            breakpointsInverse: true,
            breakpoints: {
                200: {
                    slidesPerView: 2,
                },
                576: {
                    slidesPerView: 2,
                },
                769: {
                    slidesPerView: 3,
                },
                1200: {
                    slidesPerView: 4,
                },
            },
            navigation: {
                nextEl: ".btn-next-" + index,
                prevEl: ".btn-prev-" + index
            }

        });
    });

}


//Mapping


//Toggle Plugin
function toggleItem() {
    $(".toggle-item > .title").click(function(e) {
        e.preventDefault();
        if (!$(this)
            .parent()
            .hasClass("active")
        ) {
            $(".toggle-item .content").slideUp();
            $(this)
                .next()
                .slideToggle();
            $(".toggle-item").removeClass("active");
            $(this)
                .parent()
                .addClass("active");
        } else {
            $(this)
                .next()
                .slideToggle();
            $(".toggle-item").removeClass("active");
        }
    });
}
//Toggle mobile menu

function toggleMobileMenu() {
    var $hamburger = $(".hamburger");
    $(".main-menu-toggle").on("click", function() {
        $(".header-wrap-right").toggleClass("active");
        $hamburger.toggleClass("is-active");
    });
    $('.drop-down .title em').on('click', function() {
        if ($(this).parents('.drop-down').hasClass('open-sub')) {
            console.log(12310)
            $('.drop-down .sub-nav').slideUp();
            $('.drop-down').removeClass('open-sub');
        } else {
            $('.drop-down .sub-nav').slideUp();
            $('.drop-down').removeClass('open-sub');
            $(this).parent().next().slideDown();
            $(this).parents('.drop-down').addClass('open-sub')
            console.log(9999)
        }

    })

}

//Sticky navigation

function stickyNav() {
    if ($(".sticky-nav").length) {
        $(".sticky-nav").scrollToFixed({
            zIndex: 99,
            marginTop: $("header").outerHeight(),
        });
        $(".sticky-nav a").on("click", function(event) {
            if (this.hash !== "") {
                let offset =
                    $("header").outerHeight() + $(".sticky-nav").outerHeight();
                var hash = this.hash;
                $(".sticky-nav li").removeClass('active')
                $(this).parent().addClass('active')
                $("html, body").animate({
                        scrollTop: $(hash).offset().top - offset,
                    },
                    800,
                    function() {
                        window.location.hash = hash;
                    }
                );
            } // End if
        });
    }
}

//Tab active
function tabActive() {
    $(".tab-navigation li a").on("click", function() {
        $(this)
            .parents(".tab-navigation")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");
    });
}
// Side 
function setBackground() {
    $("[setBackground]").each(function() {
        var background = $(this).attr("setBackground");
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-size": "cover",
            "background-position": "center center",
        });
    });
    $("[setBackgroundRepeat]").each(function() {
        var background = $(this).attr("setBackgroundRepeat");
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-repeat": "repeat",
        });
    });
}

function filterCate() {
    var cate_menu = $('.section-list')
    var list_header = $('.list-header')
    var tool = $('.tool-doctor')
    var cate = $('.tool-doctor .btn-cate')
    var close = $('#cls_filter')
    setTimeout(() => {
        var header = $("header").outerHeight();
    });
    cate.on('click', function() {
        cate_menu.toggleClass('active')
        list_header.remove('.list-header')
    });
    close.on('click', function() {
        cate_menu.removeClass('active')
        list_header.toggleClass('list-header')
    });
}
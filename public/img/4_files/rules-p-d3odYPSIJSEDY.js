/*
 Quantcast measurement tag
 Copyright (c) 2008-2019, Quantcast Corp.
*/
(function(a,g,f){try{__qc("defaults",a,{labels:"_fp.event.Default"})}catch(m){}var k=function(e){var d=f.createElement("a");d.href=e;return d},l=function(e,d,a){return e?"nc"===e?!d||!a||0>d.indexOf(a):"eq"===e?d===a:"sw"===e?0===d.indexOf(a):"ew"===e?(e=d.length-a.length,d=d.lastIndexOf(a,e),-1!==d&&d===e):"c"===e?0<=d.indexOf(a):!1:!1},b=function(a,d,c){var b;b=g.top===g.self?f.location.href:k(f.referrer).href;l(d,b,c)?a(b):a(!1)},c=function(a){return"array"==={}.toString.call(a).match(/\s([a-zA-Z]+)/)[1].toLowerCase()?
{labels:a.join(",")}:{labels:""+a}};__qc.apply(null,["rules",[a,null,[[c,"_fp.channel.Editor"]],[[b,"c","/editor"]]],[a,null,[[c,"_fp.event.Footage - Checkout Link"]],[[b,"c","http://www.shutterstock.com/purchase"]]],[a,null,[[c,"_fp.event.Footage Cart"]],[[b,"c","www.shutterstock.com/video/cart"]]],[a,null,[[c,"_fp.event.Checkout"]],[[b,"c","/checkout"]]],[a,null,[[c,"_fp.event.Homepage"]],[[b,"eq","https://www.shutterstock.com/home"]]],[a,null,[[c,"_fp.event.Checkout"]],[[b,"c","/purchase?orderId\x3d"]]],
[a,null,[[c,"_fp.event.Plans and Pricing"]],[[b,"c","/subscribe"]]],[a,null,[[c,"_fp.event.Music"]],[[b,"c","/music"]]],[a,null,[[c,"_fp.event.Vectors"]],[[b,"c","/vectors"]]],[a,null,[[c,"_fp.event.Photos"]],[[b,"c","/photos"]]],[a,null,[[c,"_fp.event.Blog"]],[[b,"c","/blog"]]],[a,null,[[c,"_fp.event.Editorial"]],[[b,"c","/editorial"]]],[a,null,[[c,"_fp.event.Footage"]],[[b,"c","/video"]]],[a,null,[[c,"_fp.event.Homepage"]],[[function(a,b,c){var h;h=g.top===g.self?f.location.pathname:k(f.referrer).pathname;
l(b,h,c)?a(h):a(!1)},"eq","/"]]]])})("p-d3odYPSIJSEDY",window,document);
this.wc=this.wc||{},this.wc.blocks=this.wc.blocks||{},this.wc.blocks["products-by-attribute"]=function(t){function e(e){for(var n,i,u=e[0],a=e[1],s=e[2],b=0,d=[];b<u.length;b++)i=u[b],Object.prototype.hasOwnProperty.call(o,i)&&o[i]&&d.push(o[i][0]),o[i]=0;for(n in a)Object.prototype.hasOwnProperty.call(a,n)&&(t[n]=a[n]);for(l&&l(e);d.length;)d.shift()();return c.push.apply(c,s||[]),r()}function r(){for(var t,e=0;e<c.length;e++){for(var r=c[e],n=!0,u=1;u<r.length;u++){var a=r[u];0!==o[a]&&(n=!1)}n&&(c.splice(e--,1),t=i(i.s=r[0]))}return t}var n={},o={18:0},c=[];function i(e){if(n[e])return n[e].exports;var r=n[e]={i:e,l:!1,exports:{}};return t[e].call(r.exports,r,r.exports,i),r.l=!0,r.exports}i.m=t,i.c=n,i.d=function(t,e,r){i.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:r})},i.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},i.t=function(t,e){if(1&e&&(t=i(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var r=Object.create(null);if(i.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var n in t)i.d(r,n,function(e){return t[e]}.bind(null,n));return r},i.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return i.d(e,"a",e),e},i.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},i.p="";var u=window.webpackWcBlocksJsonp=window.webpackWcBlocksJsonp||[],a=u.push.bind(u);u.push=e,u=u.slice();for(var s=0;s<u.length;s++)e(u[s]);var l=a;return c.push([593,2,1,0]),r()}({0:function(t,e){!function(){t.exports=this.wp.element}()},1:function(t,e){!function(){t.exports=this.wp.i18n}()},10:function(t,e){!function(){t.exports=this.regeneratorRuntime}()},11:function(t,e){!function(){t.exports=this.moment}()},12:function(t,e,r){"use strict";r.d(e,"d",(function(){return o})),r.d(e,"n",(function(){return c})),r.d(e,"i",(function(){return i})),r.d(e,"k",(function(){return u})),r.d(e,"a",(function(){return a})),r.d(e,"j",(function(){return s})),r.d(e,"m",(function(){return l})),r.d(e,"c",(function(){return b})),r.d(e,"l",(function(){return d})),r.d(e,"b",(function(){return p})),r.d(e,"g",(function(){return g})),r.d(e,"h",(function(){return f})),r.d(e,"e",(function(){return m})),r.d(e,"f",(function(){return h})),r.d(e,"o",(function(){return O}));var n=r(5),o=Object(n.getSetting)("enableReviewRating",!0),c=Object(n.getSetting)("showAvatars",!0),i=Object(n.getSetting)("max_columns",6),u=Object(n.getSetting)("min_columns",1),a=Object(n.getSetting)("default_columns",3),s=Object(n.getSetting)("max_rows",6),l=Object(n.getSetting)("min_rows",1),b=Object(n.getSetting)("default_rows",2),d=Object(n.getSetting)("min_height",500),p=Object(n.getSetting)("default_height",500),g=(Object(n.getSetting)("placeholderImgSrc",""),Object(n.getSetting)("thumbnail_size",300),Object(n.getSetting)("isLargeCatalog")),f=Object(n.getSetting)("limitTags"),m=(Object(n.getSetting)("hasProducts",!0),Object(n.getSetting)("hasTags",!0)),h=Object(n.getSetting)("homeUrl",""),O=(Object(n.getSetting)("productCount",0),Object(n.getSetting)("attributes",[]),Object(n.getSetting)("wcBlocksAssetUrl",""))},13:function(t,e){!function(){t.exports=this.React}()},21:function(t,e){!function(){t.exports=this.wp.editor}()},22:function(t,e){!function(){t.exports=this.wp.compose}()},24:function(t,e){!function(){t.exports=this.wp.escapeHtml}()},25:function(t,e){!function(){t.exports=this.wp.blocks}()},26:function(t,e,r){"use strict";r.d(e,"a",(function(){return c}));var n=r(10),o=r.n(n),c=function(t){var e;return o.a.async((function(r){for(;;)switch(r.prev=r.next){case 0:if("function"!=typeof t.json){r.next=11;break}return r.prev=1,r.next=4,o.a.awrap(t.json());case 4:return e=r.sent,r.abrupt("return",{message:e.message,type:e.type||"api"});case 8:return r.prev=8,r.t0=r.catch(1),r.abrupt("return",{message:r.t0.message,type:"general"});case 11:return r.abrupt("return",{message:t.message,type:t.type||"general"});case 12:case"end":return r.stop()}}),null,null,[[1,8]])}},27:function(t,e,r){"use strict";var n=r(9),o=r.n(n),c=r(8),i=r(7),u=r.n(i),a=r(4),s=r(12),l={root:"/wc/blocks",products:"".concat("/wc/blocks","/products"),categories:"".concat("/wc/blocks","/products/categories")};function b(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function d(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?b(Object(r),!0).forEach((function(e){o()(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):b(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}r.d(e,"g",(function(){return p})),r.d(e,"d",(function(){return g})),r.d(e,"e",(function(){return f})),r.d(e,"c",(function(){return m})),r.d(e,"b",(function(){return h})),r.d(e,"f",(function(){return O})),r.d(e,"a",(function(){return j})),r.d(e,"h",(function(){return w}));var p=function(t){var e=t.selected,r=void 0===e?[]:e,n=t.search,o=void 0===n?"":n,i=t.queryArgs,b=function(t){var e=t.selected,r=void 0===e?[]:e,n=t.search,o=void 0===n?"":n,i=t.queryArgs,u=void 0===i?[]:i,a={per_page:s.g?100:-1,catalog_visibility:"any",status:"publish",search:o,orderby:"title",order:"asc"},b=[Object(c.addQueryArgs)(l.products,d({},a,{},u))];return s.g&&r.length&&b.push(Object(c.addQueryArgs)(l.products,{catalog_visibility:"any",status:"publish",include:r})),b}({selected:r,search:o,queryArgs:void 0===i?[]:i});return Promise.all(b.map((function(t){return u()({path:t})}))).then((function(t){return Object(a.uniqBy)(Object(a.flatten)(t),"id").map((function(t){return d({},t,{parent:0})}))})).catch((function(t){throw t}))},g=function(t){return u()({path:"".concat(l.products,"/").concat(t)})},f=function(t){var e=t.selected,r=function(t){var e=t.selected,r=void 0===e?[]:e,n=t.search,o=[Object(c.addQueryArgs)("".concat(l.products,"/tags"),{per_page:s.h?100:-1,orderby:s.h?"count":"name",order:s.h?"desc":"asc",search:n})];return s.h&&r.length&&o.push(Object(c.addQueryArgs)("".concat(l.products,"/tags"),{include:r})),o}({selected:void 0===e?[]:e,search:t.search});return Promise.all(r.map((function(t){return u()({path:t})}))).then((function(t){return Object(a.uniqBy)(Object(a.flatten)(t),"id")}))},m=function(t){return u()({path:"".concat(l.categories,"/").concat(t)})},h=function(t){return u()({path:Object(c.addQueryArgs)("".concat(l.products,"/categories"),d({per_page:-1},t))})},O=function(t){return u()({path:Object(c.addQueryArgs)("".concat(l.products,"/").concat(t,"/variations"),{per_page:-1})})},j=function(){return u()({path:Object(c.addQueryArgs)("".concat(l.products,"/attributes"),{per_page:-1})})},w=function(t){return u()({path:Object(c.addQueryArgs)("".concat(l.products,"/attributes/").concat(t,"/terms"),{per_page:-1})})}},28:function(t,e,r){"use strict";var n=r(0),o=r(1),c=(r(2),r(24));e.a=function(t){var e,r,i,u=t.error;return Object(n.createElement)("div",{className:"wc-block-error-message"},(r=(e=u).message,i=e.type,r?"general"===i?Object(n.createElement)("span",null,Object(o.__)("The following error was returned",'woocommerce'),Object(n.createElement)("br",null),Object(n.createElement)("code",null,Object(c.escapeHTML)(r))):"api"===i?Object(n.createElement)("span",null,Object(o.__)("The following error was returned from the API",'woocommerce'),Object(n.createElement)("br",null),Object(n.createElement)("code",null,Object(c.escapeHTML)(r))):r:Object(o.__)("An unknown error occurred which prevented the block from being updated.",'woocommerce')))}},3:function(t,e){!function(){t.exports=this.wp.components}()},34:function(t,e){!function(){t.exports=this.wp.keycodes}()},38:function(t,e,r){"use strict";var n=r(9),o=r.n(n),c=r(0),i=r(1),u=(r(2),r(3));function a(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function s(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?a(Object(r),!0).forEach((function(e){o()(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):a(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}e.a=function(t){var e=t.onChange,r=t.settings,n=r.button,o=r.price,a=r.rating,l=r.title;return Object(c.createElement)(c.Fragment,null,Object(c.createElement)(u.ToggleControl,{label:Object(i.__)("Product title",'woocommerce'),help:l?Object(i.__)("Product title is visible.",'woocommerce'):Object(i.__)("Product title is hidden.",'woocommerce'),checked:l,onChange:function(){return e(s({},r,{title:!l}))}}),Object(c.createElement)(u.ToggleControl,{label:Object(i.__)("Product price",'woocommerce'),help:o?Object(i.__)("Product price is visible.",'woocommerce'):Object(i.__)("Product price is hidden.",'woocommerce'),checked:o,onChange:function(){return e(s({},r,{price:!o}))}}),Object(c.createElement)(u.ToggleControl,{label:Object(i.__)("Product rating",'woocommerce'),help:a?Object(i.__)("Product rating is visible.",'woocommerce'):Object(i.__)("Product rating is hidden.",'woocommerce'),checked:a,onChange:function(){return e(s({},r,{rating:!a}))}}),Object(c.createElement)(u.ToggleControl,{label:Object(i.__)("Add to Cart button",'woocommerce'),help:n?Object(i.__)("Add to Cart button is visible.",'woocommerce'):Object(i.__)("Add to Cart button is hidden.",'woocommerce'),checked:n,onChange:function(){return e(s({},r,{button:!n}))}}))}},4:function(t,e){!function(){t.exports=this.lodash}()},44:function(t,e){!function(){t.exports=this.ReactDOM}()},45:function(t,e,r){"use strict";var n=r(0),o=r(1),c=r(4),i=(r(2),r(3)),u=r(12);e.a=function(t){var e=t.columns,r=t.rows,a=t.setAttributes,s=t.alignButtons;return Object(n.createElement)(n.Fragment,null,Object(n.createElement)(i.RangeControl,{label:Object(o.__)("Columns",'woocommerce'),value:e,onChange:function(t){var e=Object(c.clamp)(t,u.k,u.i);a({columns:Object(c.isNaN)(e)?"":e})},min:u.k,max:u.i}),Object(n.createElement)(i.RangeControl,{label:Object(o.__)("Rows",'woocommerce'),value:r,onChange:function(t){var e=Object(c.clamp)(t,u.m,u.j);a({rows:Object(c.isNaN)(e)?"":e})},min:u.m,max:u.j}),Object(n.createElement)(i.ToggleControl,{label:Object(o.__)("Align Last Block",'woocommerce'),help:s?Object(o.__)("The last inner block will be aligned vertically.",'woocommerce'):Object(o.__)("The last inner block will follow other content.",'woocommerce'),checked:s,onChange:function(){return a({alignButtons:!s})}}))}},46:function(t,e,r){"use strict";var n=r(0),o=r(6),c=r.n(o),i=r(58),u=r.n(i),a=r(12);r.d(e,"a",(function(){return s}));var s=function(t){return function(e){var r=e.attributes,o=r.align,i=r.contentVisibility,s=c()(o?"align".concat(o):"",{"is-hidden-title":!i.title,"is-hidden-price":!i.price,"is-hidden-rating":!i.rating,"is-hidden-button":!i.button});return Object(n.createElement)(n.RawHTML,{className:s},function(t,e){var r=t.attributes,n=r.attributes,o=r.attrOperator,c=r.categories,i=r.catOperator,s=r.orderby,l=r.products,b=r.columns||a.a,d=r.rows||a.c,p=new Map;switch(p.set("limit",d*b),p.set("columns",b),c&&c.length&&(p.set("category",c.join(",")),i&&"all"===i&&p.set("cat_operator","AND")),n&&n.length&&(p.set("terms",n.map((function(t){return t.id})).join(",")),p.set("attribute",n[0].attr_slug),o&&"all"===o&&p.set("terms_operator","AND")),s&&("price_desc"===s?(p.set("orderby","price"),p.set("order","DESC")):"price_asc"===s?(p.set("orderby","price"),p.set("order","ASC")):"date"===s?(p.set("orderby","date"),p.set("order","DESC")):p.set("orderby",s)),e){case"woocommerce/product-best-sellers":p.set("best_selling","1");break;case"woocommerce/product-top-rated":p.set("orderby","rating");break;case"woocommerce/product-on-sale":p.set("on_sale","1");break;case"woocommerce/product-new":p.set("orderby","date"),p.set("order","DESC");break;case"woocommerce/handpicked-products":if(!l.length)return"";p.set("ids",l.join(",")),p.set("limit",l.length);break;case"woocommerce/product-category":if(!c||!c.length)return"";break;case"woocommerce/products-by-attribute":if(!n||!n.length)return""}var g="[products",f=!0,m=!1,h=void 0;try{for(var O,j=p[Symbol.iterator]();!(f=(O=j.next()).done);f=!0){var w=u()(O.value,2);g+=" "+w[0]+'="'+w[1]+'"'}}catch(t){m=!0,h=t}finally{try{f||null==j.return||j.return()}finally{if(m)throw h}}return g+="]"}(e,t))}}},47:function(t,e){!function(){t.exports=this.wp.viewport}()},5:function(t,e){!function(){t.exports=this.wc.wcSettings}()},52:function(t,e){!function(){t.exports=this.wp.hooks}()},54:function(t,e){!function(){t.exports=this.wp.htmlEntities}()},55:function(t,e){!function(){t.exports=this.wp.date}()},563:function(t,e,r){var n=r(564);"string"==typeof n&&(n=[[t.i,n,""]]);var o={insert:"head",singleton:!1};r(35)(n,o);n.locals&&(t.exports=n.locals)},564:function(t,e,r){},57:function(t,e,r){"use strict";var n=r(0),o=r(1),c=r(3);r(2);e.a=function(t){var e=t.value,r=t.setAttributes;return Object(n.createElement)(c.SelectControl,{label:Object(o.__)("Order products by",'woocommerce'),value:e,options:[{label:Object(o.__)("Newness - newest first",'woocommerce'),value:"date"},{label:Object(o.__)("Price - low to high",'woocommerce'),value:"price_asc"},{label:Object(o.__)("Price - high to low",'woocommerce'),value:"price_desc"},{label:Object(o.__)("Rating - highest first",'woocommerce'),value:"rating"},{label:Object(o.__)("Sales - most first",'woocommerce'),value:"popularity"},{label:Object(o.__)("Title - alphabetical",'woocommerce'),value:"title"},{label:Object(o.__)("Menu Order",'woocommerce'),value:"menu_order"}],onChange:function(t){return r({orderby:t})}})}},593:function(t,e,r){"use strict";r.r(e);var n=r(0),o=r(1),c=r(32),i=r.n(c),u=r(25),a=r(12),s=(r(563),r(16)),l=r.n(s),b=r(17),d=r.n(b),p=r(18),g=r.n(p),f=r(19),m=r.n(f),h=r(20),O=r.n(h),j=r(21),w=r(3),y=(r(2),r(38)),v=r(45),_=r(76),k=r.n(_),E=r(15),P=r.n(E),A=r(4),x=r(29),S=r(10),C=r.n(S),L=r(9),D=r.n(L),T=r(14),B=r.n(T),M=r(22),N=r(27),R=r(26);function Q(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function I(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?Q(Object(r),!0).forEach((function(e){D()(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):Q(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}var F=Object(M.createHigherOrderComponent)((function(t){var e=function(e){function r(){var t;return l()(this,r),(t=g()(this,m()(r).apply(this,arguments))).state={attributes:[],error:null,expandedAttribute:null,loading:!1,termsList:{},termsLoading:!1},t.loadAttributes=t.loadAttributes.bind(B()(t)),t.onExpandAttribute=t.onExpandAttribute.bind(B()(t)),t.debouncedLoadTerms=Object(A.debounce)(t.loadTerms.bind(B()(t)),200),t}return O()(r,e),d()(r,[{key:"componentDidMount",value:function(){this.loadAttributes()}},{key:"componentWillUnmount",value:function(){this.debouncedLoadTerms.cancel()}},{key:"componentDidUpdate",value:function(t,e){e.expandedAttribute!==this.state.expandedAttribute&&this.debouncedLoadTerms()}},{key:"loadAttributes",value:function(){var t=this,e=this.props.selected,r=this.state.expandedAttribute;this.setState({loading:!0}),Object(N.a)().then((function(n){n=n.map((function(t){return I({},t,{parent:0})}));var o=r;if(!r&&e.length>0){var c=n.find((function(t){return t.slug===e[0].attr_slug}));c&&(o=c.id)}t.setState({attributes:n,expandedAttribute:o,loading:!1,error:null})})).catch((function(e){var r;return C.a.async((function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,C.a.awrap(Object(R.a)(e));case 2:r=n.sent,t.setState({attributes:[],expandedAttribute:null,loading:!1,error:r});case 4:case"end":return n.stop()}}))}))}},{key:"loadTerms",value:function(){var t=this,e=this.state,r=e.expandedAttribute,n=e.termsList;r&&(n[r]||this.setState({termsLoading:!0}),Object(N.h)(r).then((function(e){e=e.map((function(t){return I({},t,{parent:r,attr_slug:t.attribute.slug})})),t.setState((function(t){return{termsList:I({},t.termsList,D()({},r,e)),termsLoading:!1}}))})).catch((function(e){var r;return C.a.async((function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,C.a.awrap(Object(R.a)(e));case 2:r=n.sent,t.setState({termsList:{},termsLoading:!1,error:r});case 4:case"end":return n.stop()}}))})))}},{key:"onExpandAttribute",value:function(t){var e=this.state.expandedAttribute;this.setState({expandedAttribute:t===e?null:t})}},{key:"render",value:function(){var e=this.state,r=e.error,o=e.expandedAttribute,c=e.loading,i=e.attributes,u=e.termsList,a=e.termsLoading;return Object(n.createElement)(t,P()({},this.props,{attributes:i,error:r,expandedAttribute:o,onExpandAttribute:this.onExpandAttribute,isLoading:c,termsAreLoading:a,termsList:u}))}}]),r}(n.Component);return e.defaultProps={selected:[]},e}),"withAttributes"),H=r(28),q=(r(565),function(t){var e=t.attributes,r=t.error,c=t.expandedAttribute,i=t.onChange,u=t.onExpandAttribute,a=t.onOperatorChange,s=t.isLoading,l=t.operator,b=t.selected,d=t.termsAreLoading,p=t.termsList,g=function(t){return function(){i([]),u(t.id)}},f=p[c]||[],m=[].concat(k()(e),k()(f)),h={clear:Object(o.__)("Clear all product attributes",'woocommerce'),list:Object(o.__)("Product Attributes",'woocommerce'),noItems:Object(o.__)("Your store doesn't have any product attributes.",'woocommerce'),search:Object(o.__)("Search for product attributes",'woocommerce'),selected:function(t){return Object(o.sprintf)(Object(o._n)("%d attribute selected","%d attributes selected",t,'woocommerce'),t)},updated:Object(o.__)("Product attribute search results updated.",'woocommerce')};return r?Object(n.createElement)(H.a,{error:r}):Object(n.createElement)(n.Fragment,null,Object(n.createElement)(x.a,{className:"woocommerce-product-attributes",list:m,isLoading:s,selected:b.map((function(t){var e=t.id;return Object(A.find)(m,{id:e})})).filter(Boolean),onChange:i,renderItem:function(t){var e=t.item,r=t.search,i=t.depth,u=void 0===i?0:i,a=["woocommerce-product-attributes__item","woocommerce-search-list__item"];return r.length&&a.push("is-searching"),0===u&&e.parent&&a.push("is-skip-level"),e.breadcrumbs.length?Object(n.createElement)(x.b,P()({className:a.join(" ")},t,{showCount:!0,"aria-label":"".concat(e.breadcrumbs[0],": ").concat(e.name)})):[Object(n.createElement)(x.b,P()({key:"attr-".concat(e.id)},t,{className:a.join(" "),isSelected:c===e.id,onSelect:g,isSingle:!0,disabled:"0"===e.count,"aria-expanded":c===e.id,"aria-label":Object(o.sprintf)(Object(o._n)("%s, has %d term","%s, has %d terms",e.count,'woocommerce'),e.name,e.count)})),c===e.id&&d&&Object(n.createElement)("div",{key:"loading",className:"woocommerce-search-list__item woocommerce-product-attributes__itemdepth-1 is-loading is-not-active"},Object(n.createElement)(w.Spinner,null))]},messages:h,isHierarchical:!0}),!!a&&Object(n.createElement)("div",{className:b.length<2?"screen-reader-text":""},Object(n.createElement)(w.SelectControl,{className:"woocommerce-product-attributes__operator",label:Object(o.__)("Display products matching",'woocommerce'),help:Object(o.__)("Pick at least two attributes to use this setting.",'woocommerce'),value:l,onChange:a,options:[{label:Object(o.__)("Any selected attributes",'woocommerce'),value:"any"},{label:Object(o.__)("All selected attributes",'woocommerce'),value:"all"}]})))});q.defaultProps={operator:"any"};var V=F(q),U=r(57),W=r(91),J=function(t){function e(){return l()(this,e),g()(this,m()(e).apply(this,arguments))}return O()(e,t),d()(e,[{key:"getInspectorControls",value:function(){var t=this.props.setAttributes,e=this.props.attributes,r=e.attributes,c=e.attrOperator,i=e.columns,u=e.contentVisibility,a=e.orderby,s=e.rows,l=e.alignButtons;return Object(n.createElement)(j.InspectorControls,{key:"inspector"},Object(n.createElement)(w.PanelBody,{title:Object(o.__)("Layout",'woocommerce'),initialOpen:!0},Object(n.createElement)(v.a,{columns:i,rows:s,alignButtons:l,setAttributes:t})),Object(n.createElement)(w.PanelBody,{title:Object(o.__)("Content",'woocommerce'),initialOpen:!0},Object(n.createElement)(y.a,{settings:u,onChange:function(e){return t({contentVisibility:e})}})),Object(n.createElement)(w.PanelBody,{title:Object(o.__)("Filter by Product Attribute",'woocommerce'),initialOpen:!1},Object(n.createElement)(V,{selected:r,onChange:function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:[],r=e.map((function(t){return{id:t.id,attr_slug:t.attr_slug}}));t({attributes:r})},operator:c,onOperatorChange:function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"any";return t({attrOperator:e})}})),Object(n.createElement)(w.PanelBody,{title:Object(o.__)("Order By",'woocommerce'),initialOpen:!1},Object(n.createElement)(U.a,{setAttributes:t,value:a})))}},{key:"renderEditMode",value:function(){var t=this.props,e=t.debouncedSpeak,r=t.setAttributes,c=this.props.attributes;return Object(n.createElement)(w.Placeholder,{icon:Object(n.createElement)(i.a,{icon:"custom-post-type"}),label:Object(o.__)("Products by Attribute",'woocommerce'),className:"wc-block-products-grid wc-block-products-by-attribute"},Object(o.__)("Display a grid of products from your selected attributes.",'woocommerce'),Object(n.createElement)("div",{className:"wc-block-products-by-attribute__selection"},Object(n.createElement)(V,{selected:c.attributes,onChange:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:[],e=t.map((function(t){return{id:t.id,attr_slug:t.attr_slug}}));r({attributes:e})},operator:c.attrOperator,onOperatorChange:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"any";return r({attrOperator:t})}}),Object(n.createElement)(w.Button,{isDefault:!0,onClick:function(){r({editMode:!1}),e(Object(o.__)("Showing Products by Attribute block preview.",'woocommerce'))}},Object(o.__)("Done",'woocommerce'))))}},{key:"render",value:function(){var t=this.props,e=t.attributes,r=t.name,c=t.setAttributes,i=e.editMode;return e.isPreview?W.a:Object(n.createElement)(n.Fragment,null,Object(n.createElement)(j.BlockControls,null,Object(n.createElement)(w.Toolbar,{controls:[{icon:"edit",title:Object(o.__)("Edit"),onClick:function(){return c({editMode:!i})},isActive:i}]})),this.getInspectorControls(),i?this.renderEditMode():Object(n.createElement)(w.Disabled,null,Object(n.createElement)(j.ServerSideRender,{block:r,attributes:e})))}}]),e}(n.Component),z=Object(w.withSpokenMessages)(J),G=r(46);Object(u.registerBlockType)("woocommerce/products-by-attribute",{title:Object(o.__)("Products by Attribute",'woocommerce'),icon:{src:Object(n.createElement)(i.a,{icon:"custom-post-type"}),foreground:"#96588a"},category:"woocommerce",keywords:[Object(o.__)("WooCommerce",'woocommerce')],description:Object(o.__)("Display a grid of products from your selected attributes.",'woocommerce'),supports:{align:["wide","full"],html:!1},example:{attributes:{isPreview:!0}},attributes:{attributes:{type:"array",default:[]},attrOperator:{type:"string",default:"any"},columns:{type:"number",default:a.a},editMode:{type:"boolean",default:!0},contentVisibility:{type:"object",default:{title:!0,price:!0,rating:!0,button:!0}},orderby:{type:"string",default:"date"},rows:{type:"number",default:a.c},alignButtons:{type:"boolean",default:!1},isPreview:{type:"boolean",default:!1}},deprecated:[{attributes:{attributes:{type:"array",default:[]},attrOperator:{type:"string",default:"any"},columns:{type:"number",default:a.a},editMode:{type:"boolean",default:!0},contentVisibility:{type:"object",default:{title:!0,price:!0,rating:!0,button:!0}},orderby:{type:"string",default:"date"},rows:{type:"number",default:a.c}},save:Object(G.a)("woocommerce/products-by-attribute")}],edit:function(t){return Object(n.createElement)(z,t)},save:function(){return null}})},63:function(t,e){!function(){t.exports=this.wp.dom}()},67:function(t,e){},68:function(t,e){},69:function(t,e){},7:function(t,e){!function(){t.exports=this.wp.apiFetch}()},71:function(t,e){},72:function(t,e){},8:function(t,e){!function(){t.exports=this.wp.url}()},91:function(t,e,r){"use strict";r.d(e,"a",(function(){return c}));var n=r(0),o=r(12),c=Object(n.createElement)("img",{src:o.o+"img/grid.svg",alt:"Grid Preview",width:"230",height:"250",style:{width:"100%"}})}});

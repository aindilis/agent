/**
* Loading plugin for jQuery
* 
* Small helper to give the user a visual feedback that something is happening 
* when fetching/posting data
* 
* USAGE:
* - global overlay:                     $.isLoading();
* - use javascript:                     $( selector ).isLoading();
* - On non-form elements:               $("div").isLoading({ text: "Loading", position:'inside'});
* - remove the loading element:         $( selector ).isLoading( "hide" );
*
* @author Laurent Blanes <laurent.blanes@gmail.com>
* ---
* Copyright 2013, Laurent Blanes ( https://github.com/hekigan/is-loading )
* 
* The MIT License (MIT)
* 
* Copyright (c) 2013 Laurent Blanes
 
*/(function (e, t, n, r) { function o(t, n) { this.element = t; this.options = e.extend({}, s, n); this._defaults = s; this._name = i; this._loader = null; this.init() } function u() { e[i] || (e.isLoading = function (t) { e("body").isLoading(t) }) } var i = "isLoading", s = { position: "right", text: "", "class": "icon-refresh", tpl: '<span class="isloading-wrapper %wrapper%">%text%<i class="%class% icon-spin"></i></span>', disableSource: !0, disableOthers: [] }; o.prototype = { init: function () { e(this.element).is("body") && (this.options.position = "overlay"); this.show() }, show: function () { var t = this.options.tpl.replace("%wrapper%", " isloading-show  isloading-" + this.options.position); t = t.replace("%class%", this.options["class"]); t = t.replace("%text%", this.options.text !== "" ? this.options.text + " " : ""); this._loader = e(t); e(this.element).is("input, textarea") && !0 === this.options.disableSource ? e(this.element).attr("disabled", "disabled") : !0 === this.options.disableSource && e(this.element).addClass("disabled"); switch (this.options.position) { case "inside": e(this.element).html(this._loader); break; case "overlay": if (e(this.element).is("body")) e("body").prepend('<div class="isloading-overlay" style="position:fixed; left:0; top:0; z-index: 10000; background: rgba(0,0,0,0.5); width: 100%; height: ' + e(this.element).outerHeight() + 'px;" />'); else { var n = e(this.element).css("position"), r = null; "relative" === n ? r = { top: 0, left: 0 } : r = e(this.element).position(); e(this.element).prepend('<div class="isloading-overlay" style="position:absolute; top: ' + r.top + "px; left: " + r.left + "px; z-index: 10000; background: rgba(0,0,0,0.5); width: " + e(this.element).outerWidth() + "px; height: " + e(this.element).outerHeight() + 'px;" />') } e(".isloading-overlay").html(this._loader); break; default: e(this.element).after(this._loader) } this.disableOthers() }, hide: function () { if ("overlay" === this.options.position) e(".isloading-overlay").remove(); else { e(this._loader).remove(); e(this.element).text(e(this.element).attr("data-isloading-label")) } e(this.element).removeAttr("disabled").removeClass("disabled"); this.enableOthers() }, disableOthers: function () { e.each(this.options.disableOthers, function (t, n) { var r = e(n); r.is("button, input, textarea") ? r.attr("disabled", "disabled") : r.addClass("disabled") }) }, enableOthers: function () { e.each(this.options.disableOthers, function (t, n) { var r = e(n); r.is("button, input, textarea") ? r.removeAttr("disabled") : r.removeClass("disabled") }) } }; e.fn[i] = function (t) { return this.each(function () { if (t && "hide" !== t || !e.data(this, "plugin_" + i)) e.data(this, "plugin_" + i, new o(this, t)); else { var n = e.data(this, "plugin_" + i); "hide" === t ? n.hide() : n.show() } }) }; u() })(jQuery, window, document);
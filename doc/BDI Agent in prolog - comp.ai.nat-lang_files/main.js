$.ajaxSetup({ cache: false });
$(document).ajaxStart(function (a) { $(document.body).append('<img class="Center Loading" src="/img/loading.gif" />'); });
$(document).ajaxStop(function (a) { $('.Loading').remove(); });

$(function () {
    ShowUser();
    if ($().appear) Appear();
    ShowAllDates();
});

function SaveSuccess() {
    AlertMsg('Saved Successfully');
}
function AlertError(x) { alert(GetError(x)) }
function GetError(x){ return RegExp('<title>(.+)<\/title>','g').exec(x.responseText)[1] }
function AlertMsg(msg, color) {
    if (!color) color = 'blue';
    $(document.body).append('<div id="_msg" class="Center" style="color:' + color + '"><img src="/img/icn/spin.gif" /><b>' + msg + '</b></div>');
    setTimeout(function() { $('#_msg').remove(); }, 5000);
}

function OpenTB(url, w, h, modal) {
    tb_show('', url + (url.indexOf('?') <0 ? '?': '&' )+'TB_iframe=true&height='+h+'&width=' + w + (modal==true ? '&modal=true' : '') )
}

function OpenModal(url, w, h, autoClose, title, onClosed) {
    if (typeof (autoClose) == 'function') {
        onClosed = autoClose;
        autoClose = true;
    }
    $.fn.colorbox({ href: url, iframe: true, innerWidth: w, innerHeight: h, overlayClose: autoClose, title: title, onClosed: onClosed });
}
function CloseModal() {
    parent.$.fn.colorbox.close();
}

function IsLoading(text, time) {
    $.isLoading({ text: text })
    if(time) setTimeout(function () { $.isLoading('hide') }, time)
}

function Appear(i) {
    if (!i) i = '.appear'; $(i).appear(function () { eval($(this).attr('fun')) });
}

function ShowUser() {
    $.getJSON('/api/memberApi/isAuthenticated').done(function(user) {
        if (user) {
            $('#user').html('<a href="/member~account" ><img src="/img/user16.png" />' + user + '</a>');
        } else $('#user').html('<a href="/site~signin" ><img src="/img/icn/key.png" /> register</a></b>');
    });
}

function Search(evt) {
    if(evt.keyCode == 13) location = '/site~search?q=' + $('#search').val();
}

function SearchBox() {
    $('#search').autocomplete({
        serviceUrl: '/autocomplete/countries',
        onSelect: function (suggestion) {
            alert('You selected: ' + suggestion.value + ', ' + suggestion.data);
        }
    });
}

function ShowAllDates() {
    $('.date').each(function () { DisplayDate(this); });
}

function DisplayDate(source) {

    if (!$(source).attr('title')) $(source).attr('title', $(source).text())

    var srcDate = new Date($(source).attr('title'));
 
    var now = new Date();
    currDate = new Date(now.getUTCFullYear(), now.getUTCMonth(), now.getUTCDate(), now.getUTCHours(), now.getUTCMinutes(), now.getUTCSeconds());

    var diffDate = currDate - srcDate;

    if (diffDate < 60 * 1000) srcDate = parseInt(diffDate / 1000) + ' seconds ago';
    else if (diffDate < 60 * 60 * 1000) srcDate = parseInt(diffDate / (60 * 1000)) + ' min. ' + diffDate / 1000 % 60 + ' sec. ago';
    else if (diffDate < 24 * 60 * 60 * 1000) srcDate = parseInt(diffDate / (60 * 60 * 1000)) + ' hrs. ' + parseInt(diffDate / 1000 / 60 % 60) + ' min. ago';
    else if (diffDate < 30 * 24 * 60 * 60 * 1000) srcDate = parseInt(diffDate / (24 * 60 * 60 * 1000)) + ' days ago';
    else
     srcDate = srcDate.toLocaleDateString();

    return $(source).text(srcDate);
}
 
function ArgumentsToArray(args) {
    return [].slice.apply(args);
}


  

 
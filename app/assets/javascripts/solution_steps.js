// window.setTimeout(function() { $("#preview").html($("textarea").val()); }, 0);

var formatted = $("textarea").text();
function updateFileName() 
{
    var $this = $(this);
    window.setTimeout(function() {
        formatted = $this.val();
        $("#preview").html(formatted);
    }, 0);
};

if (typeof document.getElementById('inputText').oninput != 'undefined')
{
    document.getElementById('inputText').oninput = updateFileName;
}
else
{
   document.getElementById('inputText').onkeypress = updateFileName; 
   MathJax;
}
$("#inputText").blur(function() {
    this.value = formatted;
});
$("#inputText").focus(function() {
    this.value = formatted;
});
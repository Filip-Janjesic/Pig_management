
<p class="text-center" style="margin-top: 5%">
	Reviewed by <a style="color: white" href="https://itsourcecode.com">IT SOURCECODE</a>
</p>

<script>

var mySidebar = document.getElementById("mySidebar");

var overlayBg = document.getElementById("myOverlay");


function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}

</script>

<div>
&copy; Završni rad PP23 <a href="https://github.com/Filip-Janjesic" target="_blank"> Filip Janješić </a> 2021 - <?php echo date('Y'); ?> </br>
</div>

</body>
</html>
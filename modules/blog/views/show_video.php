<script type="text/javascript" src="<?= base_url() ?>assets/projekktor/jquery.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>assets/projekktor/projekktor.min.js"></script>	
<video id="player_a" class="projekktor" poster="intro.png" title="this is projekktor" width="640" height="360" controls>
<?php foreach ($sql as $v) {
	echo '<source src="'.base_url().'modules/blog/assets/uploads/video/'.$v->nama.'" type="video/mp4" />';
}
?>
</video>


<script type="text/javascript">
$(document).ready(function() {
    projekktor('#player_a', {
	volume: 0.8,
	playerFlashMP4: '<?= base_url() ?>assets/projekktor/swf/StrobeMediaPlayback/StrobeMediaPlayback.swf'
	playerFlashMP3: '<?= base_url() ?>assets/projekktor/swf/StrobeMediaPlayback/StrobeMediaPlayback.swf'
    });
});
</script> 

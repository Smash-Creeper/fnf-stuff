ogg = aviz_create("Chiptronical.ogg");

// get ogg metadata
var samplerate = aviz_get_samplerate(ogg);
samples = aviz_get_samples(ogg);
var channels = aviz_get_channels(ogg);

// calculate channelspec, we need this later
switch (channels) {
	case 1: channelspec = audio_mono; break;
	case 2: channelspec = audio_stereo; break;
	case 6: channelspec = audio_3d; break;
	default:
		show_error("OGG with " + string(channels) + " not supported", false);
		instance_destroy();
}

// create the GM audio queue
audio = audio_create_play_queue(buffer_s16, samplerate, channelspec);

var rendered_sample = aviz_tick(ogg, buffer_get_address(buff), buffer_get_address(fft), tick_size);
if (rendered_sample < 0) { // return would be 0 if track is done
	buffer_delete(buff);
	exit;
}
audio_queue_sound(audio, buff, 0, buff_size);
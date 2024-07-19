import 'add_audio_message.dart';
import 'add_subtitle_message.dart';
import 'audio_track_message.dart';
import 'audio_tracks_message.dart';
import 'boolean_message.dart';
import 'create_message.dart';
import 'delay_message.dart';
import 'duration_message.dart';
import 'looping_message.dart';
import 'package:pigeon/pigeon.dart';
import 'playback_speed_message.dart';
import 'position_message.dart';
import 'record_message.dart';
import 'render_device_message.dart';
import 'renderer_devices_message.dart';
import 'renderer_scanning_message.dart';
import 'renderer_services_message.dart';
import 'set_media_message.dart';
import 'snapshot_message.dart';
import 'spu_track_message.dart';
import 'spu_tracks_message.dart';
import 'track_count_message.dart';
import 'video_aspect_ratio_message.dart';
import 'video_scale_message.dart';
import 'video_track_message.dart';
import 'video_tracks_message.dart';
import 'view_message.dart';
import 'volume_message.dart';

@HostApi(dartHostTestHandler: 'TestHostVlcPlayerApi')
abstract class VlcPlayerApi {
  void initialize();
  void create(CreateMessage msg);
  void dispose(ViewMessage msg);
  // general methods
  void setStreamUrl(SetMediaMessage msg);
  void play(ViewMessage msg);
  void pause(ViewMessage msg);
  void stop(ViewMessage msg);
  BooleanMessage isPlaying(ViewMessage msg);
  BooleanMessage isSeekable(ViewMessage msg);
  void setLooping(LoopingMessage msg);
  void seekTo(PositionMessage msg);
  PositionMessage position(ViewMessage msg);
  DurationMessage duration(ViewMessage msg);
  void setVolume(VolumeMessage msg);
  VolumeMessage getVolume(ViewMessage msg);
  void setPlaybackSpeed(PlaybackSpeedMessage msg);
  PlaybackSpeedMessage getPlaybackSpeed(ViewMessage msg);
  SnapshotMessage takeSnapshot(ViewMessage msg);
  // captions & subtitles methods
  TrackCountMessage getSpuTracksCount(ViewMessage msg);
  SpuTracksMessage getSpuTracks(ViewMessage msg);
  void setSpuTrack(SpuTrackMessage msg);
  SpuTrackMessage getSpuTrack(ViewMessage msg);
  void setSpuDelay(DelayMessage msg);
  DelayMessage getSpuDelay(ViewMessage msg);
  void addSubtitleTrack(AddSubtitleMessage msg);
  // audios methods
  TrackCountMessage getAudioTracksCount(ViewMessage msg);
  AudioTracksMessage getAudioTracks(ViewMessage msg);
  void setAudioTrack(AudioTrackMessage msg);
  AudioTrackMessage getAudioTrack(ViewMessage msg);
  void setAudioDelay(DelayMessage msg);
  DelayMessage getAudioDelay(ViewMessage msg);
  void addAudioTrack(AddAudioMessage msg);
  // videos methods
  TrackCountMessage getVideoTracksCount(ViewMessage msg);
  VideoTracksMessage getVideoTracks(ViewMessage msg);
  void setVideoTrack(VideoTrackMessage msg);
  VideoTrackMessage getVideoTrack(ViewMessage msg);
  void setVideoScale(VideoScaleMessage msg);
  VideoScaleMessage getVideoScale(ViewMessage msg);
  void setVideoAspectRatio(VideoAspectRatioMessage msg);
  VideoAspectRatioMessage getVideoAspectRatio(ViewMessage msg);
  // casts & renderers methods
  RendererServicesMessage getAvailableRendererServices(ViewMessage msg);
  void startRendererScanning(RendererScanningMessage msg);
  void stopRendererScanning(ViewMessage msg);
  RendererDevicesMessage getRendererDevices(ViewMessage msg);
  void castToRenderer(RenderDeviceMessage msg);
  // recording methods
  BooleanMessage startRecording(RecordMessage msg);
  BooleanMessage stopRecording(ViewMessage msg);
}

// to make changes effect, must run "flutter pub run pigeon \--input pigeons/messages.dart --dart_null_safety"

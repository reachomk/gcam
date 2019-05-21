.class public final Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
.super Ljava/lang/Object;
.source "CaptureModuleSoundPlayer.java"


# static fields
.field private static BURST_END_SOUND:I

.field private static BURST_LOOP_SOUND:I

.field private static BURST_START_SOUND:I

.field public static final FOCUS_SOUND:I

.field public static final HDR_PLUS_SHOT_COMPLETE_SOUND:I

.field public static final PANORAMA_SINGLE_PHOTO_SHUTTER_SOUND:I

.field public static final SHOT_CANCELLED_SOUND:I

.field public static final SHOT_COMPLETE_SOUND:I

.field public static final SHUTTER_SOUND:I

.field private static final TAG:Ljava/lang/String;

.field public static final TIMER_FINAL_SECOND_SOUND:I

.field public static final TIMER_INCREMENT_SOUND:I

.field public static final TIMER_START_SOUND:I

.field public static final VIDEO_PAUSE:I

.field public static final VIDEO_START:I

.field public static final VIDEO_STOP:I


# instance fields
.field private lastLoopedSoundChannel:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final soundPlayer:Lcom/android/camera/audio/SoundPlayer;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "CaptureModuleSoundPlayer"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TAG:Ljava/lang/String;

    .line 30
    const v0, 0x7f090005

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_START_SOUND:I

    .line 31
    const v0, 0x7f090004

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_LOOP_SOUND:I

    .line 32
    const v0, 0x7f090003

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_END_SOUND:I

    .line 33
    const v0, 0x7f090006

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHUTTER_SOUND:I

    .line 34
    const v0, 0x7f09000a

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->HDR_PLUS_SHOT_COMPLETE_SOUND:I

    .line 35
    const v0, 0x7f090016

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_START_SOUND:I

    .line 36
    const v0, 0x7f090014

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_FINAL_SECOND_SOUND:I

    .line 37
    const v0, 0x7f090015

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_INCREMENT_SOUND:I

    .line 38
    const v0, 0x7f090018

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_START:I

    .line 39
    const v0, 0x7f090019

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_STOP:I

    .line 40
    const v0, 0x7f090017

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_PAUSE:I

    .line 41
    const v0, 0x7f090013

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHOT_COMPLETE_SOUND:I

    .line 42
    const v0, 0x7f090012

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHOT_CANCELLED_SOUND:I

    .line 43
    const v0, 0x7f09000d

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->FOCUS_SOUND:I

    .line 44
    const v0, 0x7f09000e

    sput v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->PANORAMA_SINGLE_PHOTO_SHUTTER_SOUND:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/audio/SoundPlayer;Lcom/android/camera/debug/trace/Trace;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->lastLoopedSoundChannel:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    .line 57
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)Lcom/android/camera/audio/SoundPlayer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final loadSounds()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sound#loadSounds"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#burst_start"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_START_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 91
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#burst_loop"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_LOOP_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 93
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#burst_end"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_END_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 95
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#shutter"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHUTTER_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 97
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#hdr_complete"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->HDR_PLUS_SHOT_COMPLETE_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 99
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#timer_start"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_START_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 101
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#timer_final"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_FINAL_SECOND_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 103
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#timer_increment"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->TIMER_INCREMENT_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 105
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#video_start"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_START:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 107
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#video_stop"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_STOP:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 109
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#video_pause"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_PAUSE:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 111
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#staged_shot_complete"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHOT_COMPLETE_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 113
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#staged_shot_cancelled"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->SHOT_CANCELLED_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 115
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#material_camera_focus"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->FOCUS_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 117
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "Sounds#panorama_single_photo_shutter_sound"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->PANORAMA_SINGLE_PHOTO_SHUTTER_SOUND:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 120
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 121
    return-void
.end method

.method public final pauseAll()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SoundPlayer;->pauseAll()V

    .line 147
    return-void
.end method

.method public final play(I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    .line 62
    invoke-interface {v0, p1}, Lcom/android/camera/audio/SoundPlayer;->loadSound(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;-><init>(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;I)V

    .line 61
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 81
    return-void
.end method

.method public final playBurstEnd()V
    .locals 3

    .prologue
    .line 138
    .line 1150
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->lastLoopedSoundChannel:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1151
    if-eqz v0, :cond_0

    .line 1152
    new-instance v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$2;-><init>(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_END_SOUND:I

    const v2, 0x3f19999a    # 0.6f

    invoke-interface {v0, v1, v2}, Lcom/android/camera/audio/SoundPlayer;->play(IF)I

    .line 140
    return-void
.end method

.method public final playBurstStart()V
    .locals 5

    .prologue
    const v4, 0x3f19999a    # 0.6f

    .line 128
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_START_SOUND:I

    invoke-interface {v0, v1, v4}, Lcom/android/camera/audio/SoundPlayer;->play(IF)I

    .line 129
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->lastLoopedSoundChannel:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->soundPlayer:Lcom/android/camera/audio/SoundPlayer;

    sget v2, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->BURST_LOOP_SOUND:I

    const/16 v3, 0x12c

    .line 130
    invoke-interface {v1, v2, v4, v3}, Lcom/android/camera/audio/SoundPlayer;->playLoopDelayed(IFI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

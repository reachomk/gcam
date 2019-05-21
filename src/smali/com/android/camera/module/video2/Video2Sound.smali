.class public final Lcom/android/camera/module/video2/Video2Sound;
.super Ljava/lang/Object;
.source "Video2Sound.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private isRingtoneManuallyMuted:Z

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private originalRingerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "Video2Sound"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/video2/Video2Sound;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioManager;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Landroid/app/NotificationManager;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Sound;->audioManager:Landroid/media/AudioManager;

    .line 42
    iput-object p2, p0, Lcom/android/camera/module/video2/Video2Sound;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 43
    iput-object p3, p0, Lcom/android/camera/module/video2/Video2Sound;->notificationManager:Landroid/app/NotificationManager;

    .line 45
    new-instance v0, Lcom/android/camera/module/video2/Video2Sound$1;

    invoke-direct {v0}, Lcom/android/camera/module/video2/Video2Sound$1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/camera/module/video2/Video2Sound;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final muteRingtone()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/android/camera/module/video2/Video2Sound;->isRingtoneManuallyMuted:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2Sound;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 87
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/video2/Video2Sound;->originalRingerMode:I

    .line 91
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/video2/Video2Sound;->isRingtoneManuallyMuted:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lcom/android/camera/module/video2/Video2Sound;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/module/video2/Video2Sound;->isRingtoneManuallyMuted:Z

    goto :goto_0
.end method

.method public final playStartVideoRecordingSound()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_START:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 59
    return-void
.end method

.method public final playStopVideoRecordingSound()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->VIDEO_STOP:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 66
    return-void
.end method

.method public final restoreRingerState()V
    .locals 4

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/camera/module/video2/Video2Sound;->isRingtoneManuallyMuted:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/camera/module/video2/Video2Sound;->originalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/video2/Video2Sound;->isRingtoneManuallyMuted:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Sound;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2Sound;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/android/camera/module/video2/Video2Sound;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

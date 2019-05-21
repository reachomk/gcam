.class final Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;
.super Ljava/lang/Object;
.source "PreparedMediaRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->start$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5TMMAP39C4NL0SJ5E1GN4PB49LIM8QB1A9IM6RRICHIN4GR1DHM64OB3DCTIILG_(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isMaxDurationReached:Z

.field private isMaxFileSizeReached:Z

.field private synthetic val$callback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T874PBGC5P6AP2DCLI6IOAICLHMUSJ4CLP46OBCDHH62ORB7C______:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;->val$callback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T874PBGC5P6AP2DCLI6IOAICLHMUSJ4CLP46OBCDHH62ORB7C______:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 125
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 126
    invoke-static {}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-boolean v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;->isMaxFileSizeReached:Z

    if-nez v0, :cond_0

    .line 132
    iput-boolean v2, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;->isMaxFileSizeReached:Z

    .line 133
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;->val$callback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T874PBGC5P6AP2DCLI6IOAICLHMUSJ4CLP46OBCDHH62ORB7C______:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;->onMaxFileSizeReached()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/16 v0, 0x320

    if-ne p2, v0, :cond_0

    .line 136
    invoke-static {}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;->isMaxDurationReached:Z

    if-nez v0, :cond_0

    .line 142
    iput-boolean v2, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;->isMaxDurationReached:Z

    .line 143
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;->val$callback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T874PBGC5P6AP2DCLI6IOAICLHMUSJ4CLP46OBCDHH62ORB7C______:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;->onMaxDurationReached()V

    goto :goto_0
.end method

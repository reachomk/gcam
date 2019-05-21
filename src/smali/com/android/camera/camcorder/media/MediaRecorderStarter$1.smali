.class final Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;
.super Ljava/lang/Object;
.source "MediaRecorderStarter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/media/MediaRecorderStarter;->startRecording$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMJ31DPI74RR9CGNNCQB5ESNL6TBICPGM6P9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NK6OBDCLP62KJ5E1IM2T39DPJK6OBGEHQN4PA3C5M6OOJ1CDLJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2URB5CHKM2BQGE9IN0OBICLI4QPB4D5GL4PB3DTP68PBI8DGMOR32C5HMMEP99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F9HKN6T35DPGM4R358PQN8TBICKTG____(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

.field private synthetic val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$preparedMediaRecorderCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T874PBGC5P6AP2DCLI6IOAICLHMUSJ4CLP46OBCDHH62ORB7C______:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/media/MediaRecorderStarter;Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->this$0:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

    iput-object p2, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->val$preparedMediaRecorderCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T874PBGC5P6AP2DCLI6IOAICLHMUSJ4CLP46OBCDHH62ORB7C______:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;

    iput-object p3, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 90
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 71
    .line 1075
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->this$0:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->access$000(Lcom/android/camera/camcorder/media/MediaRecorderStarter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/apps/camera/proxy/media/MediaRecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->this$0:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->access$100(Lcom/android/camera/camcorder/media/MediaRecorderStarter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    monitor-exit v1

    .line 1084
    :goto_0
    return-void

    .line 1079
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->this$0:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->access$200(Lcom/android/camera/camcorder/media/MediaRecorderStarter;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->val$preparedMediaRecorderCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFDLIM8QB15T874PBGC5P6AP2DCLI6IOAICLHMUSJ4CLP46OBCDHH62ORB7C______:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->start$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5TMMAP39C4NL0SJ5E1GN4PB49LIM8QB1A9IM6RRICHIN4GR1DHM64OB3DCTIILG_(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)V

    .line 1081
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/android/apps/camera/proxy/media/MediaRecorderException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    iget-object v1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStarter$1;->val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 1079
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/google/android/apps/camera/proxy/media/MediaRecorderException; {:try_start_4 .. :try_end_4} :catch_0
.end method

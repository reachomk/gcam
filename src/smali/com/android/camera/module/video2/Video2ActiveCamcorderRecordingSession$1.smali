.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderRecordingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$000(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/camcorder/CamcorderRecordingSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E996AORFE9I6IRJ7ADIN6SR9DTN3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCI1CDQ6ITJ58DGMQORFE9I6ASIICLHMUSJ4D5N6EKR5EDPMIRRE4H9N8OBKCKTG____(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)I

    move-result v0

    sget v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->RECORDING_PAUSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    if-eq v0, v2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$300(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/google/android/apps/camera/util/time/UtcClock;

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 64
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    .line 66
    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/camcorder/CamcorderRecordingSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSession;->getStartTimeUtcMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    .line 67
    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/camcorder/CamcorderRecordingSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSession;->getPauseDuration()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 68
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$400(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/video2/Video2ModuleUI;->updateElapsedTime(J)V

    .line 70
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$6;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderRecordingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->onResumeButtonClicked()V
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
    .line 217
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$6;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$6;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$000(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$6;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E996AORFE9I6IRJ7ADIN6SR9DTN3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCI1CDQ6ITJ58DGMQORFE9I6ASIICLHMUSJ4D5N6EKR5EDPMIRRE4H9N8OBKCKTG____(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)I

    move-result v0

    sget v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->RECORDING_PAUSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    if-ne v0, v2, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$6;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/camcorder/CamcorderRecordingSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSession;->resume()V

    .line 223
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$6;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    sget v2, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$State;->RECORDING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI85HN8QBMCL1M2RB3DTP68PBIA9IM6RRICHKMSPQJCLPN6QBFDOI56T31EHIJM___:I

    invoke-static {v0, v2}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$202$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E996AORFE9I6IRJ7ADIN6SR9DTN3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9FEPKM8PBF68NLCQB4CLNJ4GB3EHKNCPA3C5MM6RRICHIN4KJ5CDNN4P39DPJL6PBJEDKMURH4ADQ62T357CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABRMD5I6ARPI5TB6IP35DSP42ORKD5R6AGR1DLHMUSJ4CLP54PB3DTP68QBECT9MASRJD5NMS92JEHGN8P9R(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;I)I

    .line 225
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

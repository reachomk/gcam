.class public Lcom/google/googlex/gcam/CaptureParams;
.super Ljava/lang/Object;
.source "CaptureParams.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_CaptureParams()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/CaptureParams;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/CaptureParams;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Check()Z
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_Check(JLcom/google/googlex/gcam/CaptureParams;)Z

    move-result v0

    return v0
.end method

.method public SetDefaults(Z)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_SetDefaults(JLcom/google/googlex/gcam/CaptureParams;Z)V

    .line 48
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_CaptureParams(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/googlex/gcam/CaptureParams;->delete()V

    .line 26
    return-void
.end method

.method public getCapture_true_long_exposure()Z
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_capture_true_long_exposure_get(JLcom/google/googlex/gcam/CaptureParams;)Z

    move-result v0

    return v0
.end method

.method public getMax_hdr_ratio()F
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_max_hdr_ratio_get(JLcom/google/googlex/gcam/CaptureParams;)F

    move-result v0

    return v0
.end method

.method public getMax_overall_gain()F
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_max_overall_gain_get(JLcom/google/googlex/gcam/CaptureParams;)F

    move-result v0

    return v0
.end method

.method public getMax_zsl_post_capture_gain()F
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_max_zsl_post_capture_gain_get(JLcom/google/googlex/gcam/CaptureParams;)F

    move-result v0

    return v0
.end method

.method public getNoise_variance_to_payload_frame_count()F
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_noise_variance_to_payload_frame_count_get(JLcom/google/googlex/gcam/CaptureParams;)F

    move-result v0

    return v0
.end method

.method public setCapture_true_long_exposure(Z)V
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_capture_true_long_exposure_set(JLcom/google/googlex/gcam/CaptureParams;Z)V

    .line 52
    return-void
.end method

.method public setMax_hdr_ratio(F)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_max_hdr_ratio_set(JLcom/google/googlex/gcam/CaptureParams;F)V

    .line 68
    return-void
.end method

.method public setMax_overall_gain(F)V
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_max_overall_gain_set(JLcom/google/googlex/gcam/CaptureParams;F)V

    .line 60
    return-void
.end method

.method public setMax_zsl_post_capture_gain(F)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_max_zsl_post_capture_gain_set(JLcom/google/googlex/gcam/CaptureParams;F)V

    .line 76
    return-void
.end method

.method public setNoise_variance_to_payload_frame_count(F)V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/CaptureParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->CaptureParams_noise_variance_to_payload_frame_count_set(JLcom/google/googlex/gcam/CaptureParams;F)V

    .line 84
    return-void
.end method

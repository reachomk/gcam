.class public Lcom/google/googlex/gcam/AeShotParams;
.super Ljava/lang/Object;
.source "AeShotParams.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_AeShotParams()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/AeShotParams;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/AeShotParams;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Clear()V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_Clear(JLcom/google/googlex/gcam/AeShotParams;)V

    .line 44
    return-void
.end method

.method public Equals(Lcom/google/googlex/gcam/AeShotParams;)Z
    .locals 6

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/AeShotParams;->getCPtr(Lcom/google/googlex/gcam/AeShotParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_Equals(JLcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/AeShotParams;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_AeShotParams(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/AeShotParams;->delete()V

    .line 26
    return-void
.end method

.method public getCrop()Lcom/google/googlex/gcam/NormalizedRect;
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_crop_get(JLcom/google/googlex/gcam/AeShotParams;)J

    move-result-wide v2

    .line 88
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/NormalizedRect;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/NormalizedRect;-><init>(JZ)V

    goto :goto_0
.end method

.method public getExposure_compensation()F
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_exposure_compensation_get(JLcom/google/googlex/gcam/AeShotParams;)F

    move-result v0

    return v0
.end method

.method public getHdr_mode()I
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_hdr_mode_get(JLcom/google/googlex/gcam/AeShotParams;)I

    move-result v0

    return v0
.end method

.method public getPayload_frame_orig_height()I
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_payload_frame_orig_height_get(JLcom/google/googlex/gcam/AeShotParams;)I

    move-result v0

    return v0
.end method

.method public getPayload_frame_orig_width()I
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_payload_frame_orig_width_get(JLcom/google/googlex/gcam/AeShotParams;)I

    move-result v0

    return v0
.end method

.method public getProcess_bayer_for_metering()Z
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_process_bayer_for_metering_get(JLcom/google/googlex/gcam/AeShotParams;)Z

    move-result v0

    return v0
.end method

.method public getProcess_bayer_for_payload()Z
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_process_bayer_for_payload_get(JLcom/google/googlex/gcam/AeShotParams;)Z

    move-result v0

    return v0
.end method

.method public getTarget_height()I
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_target_height_get(JLcom/google/googlex/gcam/AeShotParams;)I

    move-result v0

    return v0
.end method

.method public getTarget_width()I
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_target_width_get(JLcom/google/googlex/gcam/AeShotParams;)I

    move-result v0

    return v0
.end method

.method public getWeighted_metering_areas()Lcom/google/googlex/gcam/WeightedRectVector;
    .locals 4

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_weighted_metering_areas_get(JLcom/google/googlex/gcam/AeShotParams;)J

    move-result-wide v2

    .line 97
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/WeightedRectVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/WeightedRectVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public setCrop(Lcom/google/googlex/gcam/NormalizedRect;)V
    .locals 6

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/NormalizedRect;->getCPtr(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_crop_set(JLcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/NormalizedRect;)V

    .line 84
    return-void
.end method

.method public setExposure_compensation(F)V
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_exposure_compensation_set(JLcom/google/googlex/gcam/AeShotParams;F)V

    .line 102
    return-void
.end method

.method public setHdr_mode(I)V
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_hdr_mode_set(JLcom/google/googlex/gcam/AeShotParams;I)V

    .line 110
    return-void
.end method

.method public setPayload_frame_orig_height(I)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_payload_frame_orig_height_set(JLcom/google/googlex/gcam/AeShotParams;I)V

    .line 76
    return-void
.end method

.method public setPayload_frame_orig_width(I)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_payload_frame_orig_width_set(JLcom/google/googlex/gcam/AeShotParams;I)V

    .line 68
    return-void
.end method

.method public setProcess_bayer_for_metering(Z)V
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_process_bayer_for_metering_set(JLcom/google/googlex/gcam/AeShotParams;Z)V

    .line 52
    return-void
.end method

.method public setProcess_bayer_for_payload(Z)V
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_process_bayer_for_payload_set(JLcom/google/googlex/gcam/AeShotParams;Z)V

    .line 60
    return-void
.end method

.method public setTarget_height(I)V
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_target_height_set(JLcom/google/googlex/gcam/AeShotParams;I)V

    .line 126
    return-void
.end method

.method public setTarget_width(I)V
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_target_width_set(JLcom/google/googlex/gcam/AeShotParams;I)V

    .line 118
    return-void
.end method

.method public setWeighted_metering_areas(Lcom/google/googlex/gcam/WeightedRectVector;)V
    .locals 6

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeShotParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/WeightedRectVector;->getCPtr(Lcom/google/googlex/gcam/WeightedRectVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_weighted_metering_areas_set(JLcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/WeightedRectVector;)V

    .line 93
    return-void
.end method

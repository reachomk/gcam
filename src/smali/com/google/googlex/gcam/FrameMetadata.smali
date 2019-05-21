.class public Lcom/google/googlex/gcam/FrameMetadata;
.super Ljava/lang/Object;
.source "FrameMetadata.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FrameMetadata()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/FrameMetadata;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/FrameMetadata;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AppliedOverallGain()F
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_AppliedOverallGain(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public Check(Ljava/lang/String;IZLcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;)Z
    .locals 8

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p4}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_Check(JLcom/google/googlex/gcam/FrameMetadata;Ljava/lang/String;IZJ)Z

    move-result v0

    return v0
.end method

.method public Clear()V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_Clear(JLcom/google/googlex/gcam/FrameMetadata;)V

    .line 44
    return-void
.end method

.method public DeserializeFromString(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;I)Z
    .locals 6

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)J

    move-result-wide v3

    move-object v2, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_DeserializeFromString(JLcom/google/googlex/gcam/FrameMetadata;JI)Z

    move-result v0

    return v0
.end method

.method public DesiredOverallGain()F
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_DesiredOverallGain(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public Equals(Lcom/google/googlex/gcam/FrameMetadata;)Z
    .locals 6

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/FrameMetadata;->getCPtr(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_Equals(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/FrameMetadata;)Z

    move-result v0

    return v0
.end method

.method public GetCurrentTet()F
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_GetCurrentTet(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public GetFinalDesiredTet()F
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_GetFinalDesiredTet(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public Print(II)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_Print(JLcom/google/googlex/gcam/FrameMetadata;II)V

    .line 48
    return-void
.end method

.method public SerializeToString(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;I)V
    .locals 6

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)J

    move-result-wide v3

    move-object v2, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_SerializeToString(JLcom/google/googlex/gcam/FrameMetadata;JI)V

    .line 52
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_FrameMetadata(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/FrameMetadata;->delete()V

    .line 26
    return-void
.end method

.method public getActual_analog_gain()F
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_analog_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public getActual_exposure_time_ms()F
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_exposure_time_ms_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public getAe()Lcom/google/googlex/gcam/AeMetadata;
    .locals 4

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_ae_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 278
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/AeMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/AeMetadata;-><init>(JZ)V

    goto :goto_0
.end method

.method public getAf()Lcom/google/googlex/gcam/AfMetadata;
    .locals 4

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_af_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 296
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/AfMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/AfMetadata;-><init>(JZ)V

    goto :goto_0
.end method

.method public getApplied_digital_gain()F
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_applied_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public getAwb()Lcom/google/googlex/gcam/AwbMetadata;
    .locals 4

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_awb_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 287
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/AwbMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/AwbMetadata;-><init>(JZ)V

    goto :goto_0
.end method

.method public getBlack_levels_bayer()[F
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_black_levels_bayer_get(JLcom/google/googlex/gcam/FrameMetadata;)[F

    move-result-object v0

    return-object v0
.end method

.method public getCapture_errors()Lcom/google/googlex/gcam/StringVector;
    .locals 4

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_capture_errors_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 221
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/StringVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/StringVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getCapture_warnings()Lcom/google/googlex/gcam/StringVector;
    .locals 4

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_capture_warnings_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 212
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/StringVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/StringVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getControl_mode()I
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_control_mode_get(JLcom/google/googlex/gcam/FrameMetadata;)I

    move-result v0

    return v0
.end method

.method public getDesired_overall_digital_gain()F
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_desired_overall_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public getDng_noise_model_bayer()[Lcom/google/googlex/gcam/DngNoiseModel;
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_dng_noise_model_bayer_get(JLcom/google/googlex/gcam/FrameMetadata;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/DngNoiseModel;->cArrayWrap([JZ)[Lcom/google/googlex/gcam/DngNoiseModel;

    move-result-object v0

    return-object v0
.end method

.method public getFaces()Lcom/google/googlex/gcam/FaceInfoVector;
    .locals 4

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_faces_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 203
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/FaceInfoVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/FaceInfoVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getFlash()I
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_flash_get(JLcom/google/googlex/gcam/FrameMetadata;)I

    move-result v0

    return v0
.end method

.method public getFocus_distance_diopters()F
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_focus_distance_diopters_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public getLens_state()I
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_lens_state_get(JLcom/google/googlex/gcam/FrameMetadata;)I

    move-result v0

    return v0
.end method

.method public getNeutral_point()[F
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_neutral_point_get(JLcom/google/googlex/gcam/FrameMetadata;)[F

    move-result-object v0

    return-object v0
.end method

.method public getPost_raw_digital_gain()F
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_post_raw_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public getScene_flicker()I
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_scene_flicker_get(JLcom/google/googlex/gcam/FrameMetadata;)I

    move-result v0

    return v0
.end method

.method public getSensor_id()I
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sensor_id_get(JLcom/google/googlex/gcam/FrameMetadata;)I

    move-result v0

    return v0
.end method

.method public getSensor_temp()I
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sensor_temp_get(JLcom/google/googlex/gcam/FrameMetadata;)I

    move-result v0

    return v0
.end method

.method public getSharpness()F
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sharpness_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public getTimestamp_ns()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_timestamp_ns_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTonemap()Lcom/google/googlex/gcam/Tonemap;
    .locals 4

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_tonemap_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/Tonemap;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/Tonemap;-><init>(JZ)V

    goto :goto_0
.end method

.method public getWas_black_level_locked()Z
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_was_black_level_locked_get(JLcom/google/googlex/gcam/FrameMetadata;)Z

    move-result v0

    return v0
.end method

.method public getWb_capture()Lcom/google/googlex/gcam/AwbInfo;
    .locals 4

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_wb_capture_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 136
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/AwbInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public getWb_ideal()Lcom/google/googlex/gcam/AwbInfo;
    .locals 4

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_wb_ideal_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    .line 145
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/AwbInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public setActual_analog_gain(F)V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_analog_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    .line 84
    return-void
.end method

.method public setActual_exposure_time_ms(F)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_exposure_time_ms_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    .line 76
    return-void
.end method

.method public setAe(Lcom/google/googlex/gcam/AeMetadata;)V
    .locals 6

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/AeMetadata;->getCPtr(Lcom/google/googlex/gcam/AeMetadata;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_ae_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/AeMetadata;)V

    .line 274
    return-void
.end method

.method public setAf(Lcom/google/googlex/gcam/AfMetadata;)V
    .locals 6

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/AfMetadata;->getCPtr(Lcom/google/googlex/gcam/AfMetadata;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_af_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/AfMetadata;)V

    .line 292
    return-void
.end method

.method public setApplied_digital_gain(F)V
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_applied_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    .line 92
    return-void
.end method

.method public setAwb(Lcom/google/googlex/gcam/AwbMetadata;)V
    .locals 6

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/AwbMetadata;->getCPtr(Lcom/google/googlex/gcam/AwbMetadata;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_awb_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/AwbMetadata;)V

    .line 283
    return-void
.end method

.method public setBlack_levels_bayer([F)V
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_black_levels_bayer_set(JLcom/google/googlex/gcam/FrameMetadata;[F)V

    .line 250
    return-void
.end method

.method public setCapture_errors(Lcom/google/googlex/gcam/StringVector;)V
    .locals 6

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/StringVector;->getCPtr(Lcom/google/googlex/gcam/StringVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_capture_errors_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/StringVector;)V

    .line 217
    return-void
.end method

.method public setCapture_warnings(Lcom/google/googlex/gcam/StringVector;)V
    .locals 6

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/StringVector;->getCPtr(Lcom/google/googlex/gcam/StringVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_capture_warnings_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/StringVector;)V

    .line 208
    return-void
.end method

.method public setControl_mode(I)V
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_control_mode_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    .line 266
    return-void
.end method

.method public setDesired_overall_digital_gain(F)V
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_desired_overall_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    .line 108
    return-void
.end method

.method public setDng_noise_model_bayer([Lcom/google/googlex/gcam/DngNoiseModel;)V
    .locals 3

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/DngNoiseModel;->cArrayUnwrap([Lcom/google/googlex/gcam/DngNoiseModel;)[J

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_dng_noise_model_bayer_set(JLcom/google/googlex/gcam/FrameMetadata;[J)V

    .line 242
    return-void
.end method

.method public setFaces(Lcom/google/googlex/gcam/FaceInfoVector;)V
    .locals 6

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/FaceInfoVector;->getCPtr(Lcom/google/googlex/gcam/FaceInfoVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_faces_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/FaceInfoVector;)V

    .line 199
    return-void
.end method

.method public setFlash(I)V
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_flash_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    .line 124
    return-void
.end method

.method public setFocus_distance_diopters(F)V
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_focus_distance_diopters_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    .line 258
    return-void
.end method

.method public setLens_state(I)V
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_lens_state_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    .line 301
    return-void
.end method

.method public setNeutral_point([F)V
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_neutral_point_set(JLcom/google/googlex/gcam/FrameMetadata;[F)V

    .line 150
    return-void
.end method

.method public setPost_raw_digital_gain(F)V
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_post_raw_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    .line 100
    return-void
.end method

.method public setScene_flicker(I)V
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_scene_flicker_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    .line 234
    return-void
.end method

.method public setSensor_id(I)V
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sensor_id_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    .line 226
    return-void
.end method

.method public setSensor_temp(I)V
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sensor_temp_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    .line 166
    return-void
.end method

.method public setSharpness(F)V
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sharpness_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    .line 158
    return-void
.end method

.method public setTimestamp_ns(J)V
    .locals 3

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_timestamp_ns_set(JLcom/google/googlex/gcam/FrameMetadata;J)V

    .line 174
    return-void
.end method

.method public setTonemap(Lcom/google/googlex/gcam/Tonemap;)V
    .locals 6

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/Tonemap;->getCPtr(Lcom/google/googlex/gcam/Tonemap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_tonemap_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/Tonemap;)V

    .line 182
    return-void
.end method

.method public setWas_black_level_locked(Z)V
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_was_black_level_locked_set(JLcom/google/googlex/gcam/FrameMetadata;Z)V

    .line 191
    return-void
.end method

.method public setWb_capture(Lcom/google/googlex/gcam/AwbInfo;)V
    .locals 6

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/AwbInfo;->getCPtr(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_wb_capture_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/AwbInfo;)V

    .line 132
    return-void
.end method

.method public setWb_ideal(Lcom/google/googlex/gcam/AwbInfo;)V
    .locals 6

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/AwbInfo;->getCPtr(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_wb_ideal_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/AwbInfo;)V

    .line 141
    return-void
.end method

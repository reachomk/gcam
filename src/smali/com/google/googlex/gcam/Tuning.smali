.class public Lcom/google/googlex/gcam/Tuning;
.super Ljava/lang/Object;
.source "Tuning.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 311
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_Tuning()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/Tuning;-><init>(JZ)V

    .line 312
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/Tuning;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/Tuning;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Check()Z
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_Check(JLcom/google/googlex/gcam/Tuning;)Z

    move-result v0

    return v0
.end method

.method public GetCaptureParams(Lcom/google/googlex/gcam/ShotParams;)Lcom/google/googlex/gcam/CaptureParams;
    .locals 7

    .prologue
    .line 307
    new-instance v6, Lcom/google/googlex/gcam/CaptureParams;

    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/ShotParams;->getCPtr(Lcom/google/googlex/gcam/ShotParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetCaptureParams__SWIG_1(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/ShotParams;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/google/googlex/gcam/CaptureParams;-><init>(JZ)V

    return-object v6
.end method

.method public GetCaptureParams(Z)Lcom/google/googlex/gcam/CaptureParams;
    .locals 4

    .prologue
    .line 303
    new-instance v0, Lcom/google/googlex/gcam/CaptureParams;

    iget-wide v2, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetCaptureParams__SWIG_0(JLcom/google/googlex/gcam/Tuning;Z)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/CaptureParams;-><init>(JZ)V

    return-object v0
.end method

.method public GetColorSatAdj(IZ)Lcom/google/googlex/gcam/ColorSatSubParams;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Lcom/google/googlex/gcam/ColorSatSubParams;

    iget-wide v2, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetColorSatAdj(JLcom/google/googlex/gcam/Tuning;IZ)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/ColorSatSubParams;-><init>(JZ)V

    return-object v0
.end method

.method public GetMaxOverallGain(Lcom/google/googlex/gcam/ShotParams;)F
    .locals 6

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/ShotParams;->getCPtr(Lcom/google/googlex/gcam/ShotParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetMaxOverallGain__SWIG_1(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/ShotParams;)F

    move-result v0

    return v0
.end method

.method public GetMaxOverallGain(Z)F
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetMaxOverallGain__SWIG_0(JLcom/google/googlex/gcam/Tuning;Z)F

    move-result v0

    return v0
.end method

.method public GetMaxTet(Lcom/google/googlex/gcam/ShotParams;)F
    .locals 6

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/ShotParams;->getCPtr(Lcom/google/googlex/gcam/ShotParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetMaxTet__SWIG_1(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/ShotParams;)F

    move-result v0

    return v0
.end method

.method public GetMaxTet(Z)F
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetMaxTet__SWIG_0(JLcom/google/googlex/gcam/Tuning;Z)F

    move-result v0

    return v0
.end method

.method public GetMinExposureTimeMs()F
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetMinExposureTimeMs(JLcom/google/googlex/gcam/Tuning;)F

    move-result v0

    return v0
.end method

.method public GetMinTet()F
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_GetMinTet(JLcom/google/googlex/gcam/Tuning;)F

    move-result v0

    return v0
.end method

.method public SetInputTonemap(Lcom/google/googlex/gcam/Tonemap;)Z
    .locals 6

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/Tonemap;->getCPtr(Lcom/google/googlex/gcam/Tonemap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_SetInputTonemap__SWIG_1(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/Tonemap;)Z

    move-result v0

    return v0
.end method

.method public SetInputTonemap(Lcom/google/googlex/gcam/TonemapFloat;I)Z
    .locals 7

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/TonemapFloat;->getCPtr(Lcom/google/googlex/gcam/TonemapFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_SetInputTonemap__SWIG_0(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/TonemapFloat;I)Z

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
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_Tuning(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/Tuning;->delete()V

    .line 26
    return-void
.end method

.method public getApply_antibanding()Z
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_apply_antibanding_get(JLcom/google/googlex/gcam/Tuning;)Z

    move-result v0

    return v0
.end method

.method public getBase_frame_candidate_exposure_time_cutoff_ms()F
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_base_frame_candidate_exposure_time_cutoff_ms_get(JLcom/google/googlex/gcam/Tuning;)F

    move-result v0

    return v0
.end method

.method public getBase_frame_candidates_in_bright_scene()I
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_base_frame_candidates_in_bright_scene_get(JLcom/google/googlex/gcam/Tuning;)I

    move-result v0

    return v0
.end method

.method public getBase_frame_candidates_in_dark_scene()I
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_base_frame_candidates_in_dark_scene_get(JLcom/google/googlex/gcam/Tuning;)I

    move-result v0

    return v0
.end method

.method public getBlack_pixel_area_override()Lcom/google/googlex/gcam/PixelRect;
    .locals 4

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_black_pixel_area_override_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 259
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/PixelRect;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    goto :goto_0
.end method

.method public getDevice_code()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_device_code_get(JLcom/google/googlex/gcam/Tuning;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFickle_payload_frames()I
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_fickle_payload_frames_get(JLcom/google/googlex/gcam/Tuning;)I

    move-result v0

    return v0
.end method

.method public getHot_pixel_params()Lcom/google/googlex/gcam/HotPixelParams;
    .locals 4

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_hot_pixel_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/HotPixelParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/HotPixelParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getInput_rev_tonemap()Lcom/google/googlex/gcam/RevTonemap;
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_input_rev_tonemap_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/RevTonemap;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/RevTonemap;-><init>(JZ)V

    goto :goto_0
.end method

.method public getInput_tonemap()Lcom/google/googlex/gcam/Tonemap;
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_input_tonemap_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 91
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

.method public getInput_tonemap_float()Lcom/google/googlex/gcam/TonemapFloat;
    .locals 4

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_input_tonemap_float_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/TonemapFloat;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/TonemapFloat;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMax_analog_gain()F
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_max_analog_gain_get(JLcom/google/googlex/gcam/Tuning;)F

    move-result v0

    return v0
.end method

.method public getMax_exposure_time_ms()F
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_max_exposure_time_ms_get(JLcom/google/googlex/gcam/Tuning;)F

    move-result v0

    return v0
.end method

.method public getMax_raw_sensor_gain()F
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_max_raw_sensor_gain_get(JLcom/google/googlex/gcam/Tuning;)F

    move-result v0

    return v0
.end method

.method public getOutput_color_sat_raw()Lcom/google/googlex/gcam/ColorSatParams;
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_output_color_sat_raw_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 250
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/ColorSatParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/ColorSatParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOutput_color_sat_yuv()Lcom/google/googlex/gcam/ColorSatParams;
    .locals 4

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_output_color_sat_yuv_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 241
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/ColorSatParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/ColorSatParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRaw_finish_params()Lcom/google/googlex/gcam/RawFinishParams;
    .locals 4

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_finish_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 232
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/RawFinishParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/RawFinishParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRaw_global_vignetting()Lcom/google/googlex/gcam/RawVignetteParams;
    .locals 4

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_global_vignetting_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 205
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/RawVignetteParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/RawVignetteParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRaw_merge_params()Lcom/google/googlex/gcam/RawMergeParams;
    .locals 4

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_merge_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 223
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/RawMergeParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/RawMergeParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRaw_payload_capture_params()Lcom/google/googlex/gcam/CaptureParams;
    .locals 4

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_payload_capture_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 118
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/CaptureParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/CaptureParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRaw_payload_tet_model()Lcom/google/googlex/gcam/TetModel;
    .locals 4

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_payload_tet_model_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 164
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/TetModel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/TetModel;-><init>(JZ)V

    goto :goto_0
.end method

.method public getSensitivity()F
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_sensitivity_get(JLcom/google/googlex/gcam/Tuning;)F

    move-result v0

    return v0
.end method

.method public getSensor_noise_model_override()Lcom/google/googlex/gcam/SensorNoiseModel;
    .locals 4

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_sensor_noise_model_override_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SensorNoiseModel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SensorNoiseModel;-><init>(JZ)V

    goto :goto_0
.end method

.method public getSensor_row_artifacts()Lcom/google/googlex/gcam/SensorRowArtifacts;
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_sensor_row_artifacts_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SensorRowArtifacts;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SensorRowArtifacts;-><init>(JZ)V

    goto :goto_0
.end method

.method public getYuv_payload_capture_params()Lcom/google/googlex/gcam/CaptureParams;
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_yuv_payload_capture_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/CaptureParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/CaptureParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getYuv_payload_tet_model()Lcom/google/googlex/gcam/TetModel;
    .locals 4

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_yuv_payload_tet_model_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v2

    .line 155
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/TetModel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/TetModel;-><init>(JZ)V

    goto :goto_0
.end method

.method public setApply_antibanding(Z)V
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_apply_antibanding_set(JLcom/google/googlex/gcam/Tuning;Z)V

    .line 143
    return-void
.end method

.method public setBase_frame_candidate_exposure_time_cutoff_ms(F)V
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_base_frame_candidate_exposure_time_cutoff_ms_set(JLcom/google/googlex/gcam/Tuning;F)V

    .line 193
    return-void
.end method

.method public setBase_frame_candidates_in_bright_scene(I)V
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_base_frame_candidates_in_bright_scene_set(JLcom/google/googlex/gcam/Tuning;I)V

    .line 177
    return-void
.end method

.method public setBase_frame_candidates_in_dark_scene(I)V
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_base_frame_candidates_in_dark_scene_set(JLcom/google/googlex/gcam/Tuning;I)V

    .line 185
    return-void
.end method

.method public setBlack_pixel_area_override(Lcom/google/googlex/gcam/PixelRect;)V
    .locals 6

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/PixelRect;->getCPtr(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_black_pixel_area_override_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/PixelRect;)V

    .line 255
    return-void
.end method

.method public setDevice_code(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_device_code_set(JLcom/google/googlex/gcam/Tuning;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setFickle_payload_frames(I)V
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_fickle_payload_frames_set(JLcom/google/googlex/gcam/Tuning;I)V

    .line 169
    return-void
.end method

.method public setHot_pixel_params(Lcom/google/googlex/gcam/HotPixelParams;)V
    .locals 6

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/HotPixelParams;->getCPtr(Lcom/google/googlex/gcam/HotPixelParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_hot_pixel_params_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/HotPixelParams;)V

    .line 210
    return-void
.end method

.method public setInput_rev_tonemap(Lcom/google/googlex/gcam/RevTonemap;)V
    .locals 6

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/RevTonemap;->getCPtr(Lcom/google/googlex/gcam/RevTonemap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_input_rev_tonemap_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/RevTonemap;)V

    .line 96
    return-void
.end method

.method public setInput_tonemap(Lcom/google/googlex/gcam/Tonemap;)V
    .locals 6

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/Tonemap;->getCPtr(Lcom/google/googlex/gcam/Tonemap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_input_tonemap_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/Tonemap;)V

    .line 87
    return-void
.end method

.method public setInput_tonemap_float(Lcom/google/googlex/gcam/TonemapFloat;)V
    .locals 6

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/TonemapFloat;->getCPtr(Lcom/google/googlex/gcam/TonemapFloat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_input_tonemap_float_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/TonemapFloat;)V

    .line 78
    return-void
.end method

.method public setMax_analog_gain(F)V
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_max_analog_gain_set(JLcom/google/googlex/gcam/Tuning;F)V

    .line 123
    return-void
.end method

.method public setMax_exposure_time_ms(F)V
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_max_exposure_time_ms_set(JLcom/google/googlex/gcam/Tuning;F)V

    .line 135
    return-void
.end method

.method public setMax_raw_sensor_gain(F)V
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_max_raw_sensor_gain_set(JLcom/google/googlex/gcam/Tuning;F)V

    .line 264
    return-void
.end method

.method public setOutput_color_sat_raw(Lcom/google/googlex/gcam/ColorSatParams;)V
    .locals 6

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/ColorSatParams;->getCPtr(Lcom/google/googlex/gcam/ColorSatParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_output_color_sat_raw_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/ColorSatParams;)V

    .line 246
    return-void
.end method

.method public setOutput_color_sat_yuv(Lcom/google/googlex/gcam/ColorSatParams;)V
    .locals 6

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/ColorSatParams;->getCPtr(Lcom/google/googlex/gcam/ColorSatParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_output_color_sat_yuv_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/ColorSatParams;)V

    .line 237
    return-void
.end method

.method public setRaw_finish_params(Lcom/google/googlex/gcam/RawFinishParams;)V
    .locals 6

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/RawFinishParams;->getCPtr(Lcom/google/googlex/gcam/RawFinishParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_finish_params_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/RawFinishParams;)V

    .line 228
    return-void
.end method

.method public setRaw_global_vignetting(Lcom/google/googlex/gcam/RawVignetteParams;)V
    .locals 6

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/RawVignetteParams;->getCPtr(Lcom/google/googlex/gcam/RawVignetteParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_global_vignetting_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/RawVignetteParams;)V

    .line 201
    return-void
.end method

.method public setRaw_merge_params(Lcom/google/googlex/gcam/RawMergeParams;)V
    .locals 6

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/RawMergeParams;->getCPtr(Lcom/google/googlex/gcam/RawMergeParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_merge_params_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/RawMergeParams;)V

    .line 219
    return-void
.end method

.method public setRaw_payload_capture_params(Lcom/google/googlex/gcam/CaptureParams;)V
    .locals 6

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/CaptureParams;->getCPtr(Lcom/google/googlex/gcam/CaptureParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_payload_capture_params_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/CaptureParams;)V

    .line 114
    return-void
.end method

.method public setRaw_payload_tet_model(Lcom/google/googlex/gcam/TetModel;)V
    .locals 6

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/TetModel;->getCPtr(Lcom/google/googlex/gcam/TetModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_raw_payload_tet_model_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/TetModel;)V

    .line 160
    return-void
.end method

.method public setSensitivity(F)V
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_sensitivity_set(JLcom/google/googlex/gcam/Tuning;F)V

    .line 52
    return-void
.end method

.method public setSensor_noise_model_override(Lcom/google/googlex/gcam/SensorNoiseModel;)V
    .locals 6

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SensorNoiseModel;->getCPtr(Lcom/google/googlex/gcam/SensorNoiseModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_sensor_noise_model_override_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/SensorNoiseModel;)V

    .line 60
    return-void
.end method

.method public setSensor_row_artifacts(Lcom/google/googlex/gcam/SensorRowArtifacts;)V
    .locals 6

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SensorRowArtifacts;->getCPtr(Lcom/google/googlex/gcam/SensorRowArtifacts;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_sensor_row_artifacts_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/SensorRowArtifacts;)V

    .line 69
    return-void
.end method

.method public setYuv_payload_capture_params(Lcom/google/googlex/gcam/CaptureParams;)V
    .locals 6

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/CaptureParams;->getCPtr(Lcom/google/googlex/gcam/CaptureParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_yuv_payload_capture_params_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/CaptureParams;)V

    .line 105
    return-void
.end method

.method public setYuv_payload_tet_model(Lcom/google/googlex/gcam/TetModel;)V
    .locals 6

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/TetModel;->getCPtr(Lcom/google/googlex/gcam/TetModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_yuv_payload_tet_model_set(JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/TetModel;)V

    .line 151
    return-void
.end method

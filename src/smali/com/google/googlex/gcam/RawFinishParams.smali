.class public Lcom/google/googlex/gcam/RawFinishParams;
.super Ljava/lang/Object;
.source "RawFinishParams.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_RawFinishParams()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/RawFinishParams;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/RawFinishParams;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_RawFinishParams(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/RawFinishParams;->delete()V

    .line 26
    return-void
.end method

.method public getArc_flare()Lcom/google/googlex/gcam/ArcFlareParam;
    .locals 4

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_arc_flare_get(JLcom/google/googlex/gcam/RawFinishParams;)J

    move-result-wide v2

    .line 142
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/ArcFlareParam;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/ArcFlareParam;-><init>(JZ)V

    goto :goto_0
.end method

.method public getChroma_denoise_strength()F
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_chroma_denoise_strength_get(JLcom/google/googlex/gcam/RawFinishParams;)F

    move-result v0

    return v0
.end method

.method public getChromatic_aberration()Lcom/google/googlex/gcam/ChromaticAberrationParams;
    .locals 4

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_chromatic_aberration_get(JLcom/google/googlex/gcam/RawFinishParams;)J

    move-result-wide v2

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/ChromaticAberrationParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/ChromaticAberrationParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getDisable_extra_vignetting_for_zsl()Z
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_disable_extra_vignetting_for_zsl_get(JLcom/google/googlex/gcam/RawFinishParams;)Z

    move-result v0

    return v0
.end method

.method public getExtra_finish_vignetting()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawVignetteParams_t;
    .locals 4

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_extra_finish_vignetting_get(JLcom/google/googlex/gcam/RawFinishParams;)J

    move-result-wide v2

    .line 48
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawVignetteParams_t;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawVignetteParams_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getFinal_rgb_bias_hack()[F
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_final_rgb_bias_hack_get(JLcom/google/googlex/gcam/RawFinishParams;)[F

    move-result-object v0

    return-object v0
.end method

.method public getMax_black_level_offset()F
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_max_black_level_offset_get(JLcom/google/googlex/gcam/RawFinishParams;)F

    move-result v0

    return v0
.end method

.method public getMax_synthetic_exposures()I
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_max_synthetic_exposures_get(JLcom/google/googlex/gcam/RawFinishParams;)I

    move-result v0

    return v0
.end method

.method public getPost_zoom_sharpen_strength()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_post_zoom_sharpen_strength_get(JLcom/google/googlex/gcam/RawFinishParams;)J

    move-result-wide v2

    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getSharpen_params()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawSharpenParams_t;
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_sharpen_params_get(JLcom/google/googlex/gcam/RawFinishParams;)J

    move-result-wide v2

    .line 91
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawSharpenParams_t;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawSharpenParams_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getSpatial_denoise_strength()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_spatial_denoise_strength_get(JLcom/google/googlex/gcam/RawFinishParams;)J

    move-result-wide v2

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getZoom_sharpen_attenuation()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_zoom_sharpen_attenuation_get(JLcom/google/googlex/gcam/RawFinishParams;)J

    move-result-wide v2

    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public setArc_flare(Lcom/google/googlex/gcam/ArcFlareParam;)V
    .locals 6

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/ArcFlareParam;->getCPtr(Lcom/google/googlex/gcam/ArcFlareParam;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_arc_flare_set(JLcom/google/googlex/gcam/RawFinishParams;JLcom/google/googlex/gcam/ArcFlareParam;)V

    .line 138
    return-void
.end method

.method public setChroma_denoise_strength(F)V
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_chroma_denoise_strength_set(JLcom/google/googlex/gcam/RawFinishParams;F)V

    .line 61
    return-void
.end method

.method public setChromatic_aberration(Lcom/google/googlex/gcam/ChromaticAberrationParams;)V
    .locals 6

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/ChromaticAberrationParams;->getCPtr(Lcom/google/googlex/gcam/ChromaticAberrationParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_chromatic_aberration_set(JLcom/google/googlex/gcam/RawFinishParams;JLcom/google/googlex/gcam/ChromaticAberrationParams;)V

    .line 78
    return-void
.end method

.method public setDisable_extra_vignetting_for_zsl(Z)V
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_disable_extra_vignetting_for_zsl_set(JLcom/google/googlex/gcam/RawFinishParams;Z)V

    .line 53
    return-void
.end method

.method public setExtra_finish_vignetting(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawVignetteParams_t;)V
    .locals 4

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawVignetteParams_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawVignetteParams_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_extra_finish_vignetting_set(JLcom/google/googlex/gcam/RawFinishParams;J)V

    .line 44
    return-void
.end method

.method public setFinal_rgb_bias_hack([F)V
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_final_rgb_bias_hack_set(JLcom/google/googlex/gcam/RawFinishParams;[F)V

    .line 122
    return-void
.end method

.method public setMax_black_level_offset(F)V
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_max_black_level_offset_set(JLcom/google/googlex/gcam/RawFinishParams;F)V

    .line 114
    return-void
.end method

.method public setMax_synthetic_exposures(I)V
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_max_synthetic_exposures_set(JLcom/google/googlex/gcam/RawFinishParams;I)V

    .line 130
    return-void
.end method

.method public setPost_zoom_sharpen_strength(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;)V
    .locals 4

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_post_zoom_sharpen_strength_set(JLcom/google/googlex/gcam/RawFinishParams;J)V

    .line 105
    return-void
.end method

.method public setSharpen_params(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawSharpenParams_t;)V
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawSharpenParams_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawSharpenParams_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_sharpen_params_set(JLcom/google/googlex/gcam/RawFinishParams;J)V

    .line 87
    return-void
.end method

.method public setSpatial_denoise_strength(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;)V
    .locals 4

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_spatial_denoise_strength_set(JLcom/google/googlex/gcam/RawFinishParams;J)V

    .line 69
    return-void
.end method

.method public setZoom_sharpen_attenuation(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;)V
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawFinishParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_float_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawFinishParams_zoom_sharpen_attenuation_set(JLcom/google/googlex/gcam/RawFinishParams;J)V

    .line 96
    return-void
.end method

.class public Lcom/google/googlex/gcam/ShotLogData;
.super Ljava/lang/Object;
.source "ShotLogData.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ShotLogData()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/ShotLogData;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/ShotLogData;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Check()Z
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_Check(JLcom/google/googlex/gcam/ShotLogData;)Z

    move-result v0

    return v0
.end method

.method public Clear()V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_Clear(JLcom/google/googlex/gcam/ShotLogData;)V

    .line 44
    return-void
.end method

.method public Print(I)V
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_Print(JLcom/google/googlex/gcam/ShotLogData;I)V

    .line 52
    return-void
.end method

.method public SerializeToString(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)V
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_SerializeToString(JLcom/google/googlex/gcam/ShotLogData;J)V

    .line 56
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_ShotLogData(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/ShotLogData;->delete()V

    .line 26
    return-void
.end method

.method public getActual_range_compression()F
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_actual_range_compression_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getAe_confidence_long_exposure()F
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_ae_confidence_long_exposure_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getAe_confidence_short_exposure()F
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_ae_confidence_short_exposure_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getAe_confidence_single_exposure()F
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_ae_confidence_single_exposure_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getAverage_heat_frac()F
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_average_heat_frac_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getBase_frame_index()I
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_base_frame_index_get(JLcom/google/googlex/gcam/ShotLogData;)I

    move-result v0

    return v0
.end method

.method public getFinal_payload_frame_sharpness()Lcom/google/googlex/gcam/FloatVector;
    .locals 4

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_final_payload_frame_sharpness_get(JLcom/google/googlex/gcam/ShotLogData;)J

    move-result-wide v2

    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/FloatVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/FloatVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getFraction_of_pixels_from_long_exposure()F
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_fraction_of_pixels_from_long_exposure_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getGlobal_pixel_shifts()Lcom/google/googlex/gcam/Point2iVector;
    .locals 4

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_global_pixel_shifts_get(JLcom/google/googlex/gcam/ShotLogData;)J

    move-result-wide v2

    .line 187
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/Point2iVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/Point2iVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getHdr_was_used()Z
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_hdr_was_used_get(JLcom/google/googlex/gcam/ShotLogData;)Z

    move-result v0

    return v0
.end method

.method public getIdeal_range_compression()F
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_ideal_range_compression_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getLog_scene_brightness()F
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_log_scene_brightness_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getLong_exp_adjustment_factor()F
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_long_exp_adjustment_factor_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getMerged_frame_count()I
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_merged_frame_count_get(JLcom/google/googlex/gcam/ShotLogData;)I

    move-result v0

    return v0
.end method

.method public getMetering_frame_count()I
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_metering_frame_count_get(JLcom/google/googlex/gcam/ShotLogData;)I

    move-result v0

    return v0
.end method

.method public getOriginal_payload_frame_count()I
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_original_payload_frame_count_get(JLcom/google/googlex/gcam/ShotLogData;)I

    move-result v0

    return v0
.end method

.method public getOriginal_payload_frame_sharpness()Lcom/google/googlex/gcam/FloatVector;
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_original_payload_frame_sharpness_get(JLcom/google/googlex/gcam/ShotLogData;)J

    move-result-wide v2

    .line 160
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/FloatVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/FloatVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getShort_exp_adjustment_factor()F
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_short_exp_adjustment_factor_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getTime_to_postview()F
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_time_to_postview_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getTime_to_shot()F
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_time_to_shot_get(JLcom/google/googlex/gcam/ShotLogData;)F

    move-result v0

    return v0
.end method

.method public getUsed_hexagon()Z
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_used_hexagon_get(JLcom/google/googlex/gcam/ShotLogData;)Z

    move-result v0

    return v0
.end method

.method public getWas_payload_frame_merged()Lcom/google/googlex/gcam/BoolVector;
    .locals 4

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_was_payload_frame_merged_get(JLcom/google/googlex/gcam/ShotLogData;)J

    move-result-wide v2

    .line 178
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/BoolVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/BoolVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getZsl()Z
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_zsl_get(JLcom/google/googlex/gcam/ShotLogData;)Z

    move-result v0

    return v0
.end method

.method public setActual_range_compression(F)V
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_actual_range_compression_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 100
    return-void
.end method

.method public setAe_confidence_long_exposure(F)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_ae_confidence_long_exposure_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 76
    return-void
.end method

.method public setAe_confidence_short_exposure(F)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_ae_confidence_short_exposure_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 68
    return-void
.end method

.method public setAe_confidence_single_exposure(F)V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_ae_confidence_single_exposure_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 84
    return-void
.end method

.method public setAverage_heat_frac(F)V
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_average_heat_frac_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 216
    return-void
.end method

.method public setBase_frame_index(I)V
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_base_frame_index_set(JLcom/google/googlex/gcam/ShotLogData;I)V

    .line 200
    return-void
.end method

.method public setFinal_payload_frame_sharpness(Lcom/google/googlex/gcam/FloatVector;)V
    .locals 6

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/FloatVector;->getCPtr(Lcom/google/googlex/gcam/FloatVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_final_payload_frame_sharpness_set(JLcom/google/googlex/gcam/ShotLogData;JLcom/google/googlex/gcam/FloatVector;)V

    .line 165
    return-void
.end method

.method public setFraction_of_pixels_from_long_exposure(F)V
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_fraction_of_pixels_from_long_exposure_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 108
    return-void
.end method

.method public setGlobal_pixel_shifts(Lcom/google/googlex/gcam/Point2iVector;)V
    .locals 6

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/Point2iVector;->getCPtr(Lcom/google/googlex/gcam/Point2iVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_global_pixel_shifts_set(JLcom/google/googlex/gcam/ShotLogData;JLcom/google/googlex/gcam/Point2iVector;)V

    .line 183
    return-void
.end method

.method public setHdr_was_used(Z)V
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_hdr_was_used_set(JLcom/google/googlex/gcam/ShotLogData;Z)V

    .line 60
    return-void
.end method

.method public setIdeal_range_compression(F)V
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_ideal_range_compression_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 92
    return-void
.end method

.method public setLog_scene_brightness(F)V
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_log_scene_brightness_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 132
    return-void
.end method

.method public setLong_exp_adjustment_factor(F)V
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_long_exp_adjustment_factor_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 124
    return-void
.end method

.method public setMerged_frame_count(I)V
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_merged_frame_count_set(JLcom/google/googlex/gcam/ShotLogData;I)V

    .line 208
    return-void
.end method

.method public setMetering_frame_count(I)V
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_metering_frame_count_set(JLcom/google/googlex/gcam/ShotLogData;I)V

    .line 140
    return-void
.end method

.method public setOriginal_payload_frame_count(I)V
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_original_payload_frame_count_set(JLcom/google/googlex/gcam/ShotLogData;I)V

    .line 148
    return-void
.end method

.method public setOriginal_payload_frame_sharpness(Lcom/google/googlex/gcam/FloatVector;)V
    .locals 6

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/FloatVector;->getCPtr(Lcom/google/googlex/gcam/FloatVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_original_payload_frame_sharpness_set(JLcom/google/googlex/gcam/ShotLogData;JLcom/google/googlex/gcam/FloatVector;)V

    .line 156
    return-void
.end method

.method public setShort_exp_adjustment_factor(F)V
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_short_exp_adjustment_factor_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 116
    return-void
.end method

.method public setTime_to_postview(F)V
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_time_to_postview_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 232
    return-void
.end method

.method public setTime_to_shot(F)V
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_time_to_shot_set(JLcom/google/googlex/gcam/ShotLogData;F)V

    .line 224
    return-void
.end method

.method public setUsed_hexagon(Z)V
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_used_hexagon_set(JLcom/google/googlex/gcam/ShotLogData;Z)V

    .line 240
    return-void
.end method

.method public setWas_payload_frame_merged(Lcom/google/googlex/gcam/BoolVector;)V
    .locals 6

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/BoolVector;->getCPtr(Lcom/google/googlex/gcam/BoolVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_was_payload_frame_merged_set(JLcom/google/googlex/gcam/ShotLogData;JLcom/google/googlex/gcam/BoolVector;)V

    .line 174
    return-void
.end method

.method public setZsl(Z)V
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotLogData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotLogData_zsl_set(JLcom/google/googlex/gcam/ShotLogData;Z)V

    .line 192
    return-void
.end method

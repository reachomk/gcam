.class public Lcom/google/googlex/gcam/SharpenParams;
.super Ljava/lang/Object;
.source "SharpenParams.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_SharpenParams()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/SharpenParams;-><init>(JZ)V

    .line 88
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/SharpenParams;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_SharpenParams(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/SharpenParams;->delete()V

    .line 26
    return-void
.end method

.method public getHf_strength()F
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_hf_strength_get(JLcom/google/googlex/gcam/SharpenParams;)F

    move-result v0

    return v0
.end method

.method public getMax_variance_hf()F
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_max_variance_hf_get(JLcom/google/googlex/gcam/SharpenParams;)F

    move-result v0

    return v0
.end method

.method public getMax_variance_mf()F
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_max_variance_mf_get(JLcom/google/googlex/gcam/SharpenParams;)F

    move-result v0

    return v0
.end method

.method public getMf_strength()F
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_mf_strength_get(JLcom/google/googlex/gcam/SharpenParams;)F

    move-result v0

    return v0
.end method

.method public getMin_std_for_despeckle()F
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_min_std_for_despeckle_get(JLcom/google/googlex/gcam/SharpenParams;)F

    move-result v0

    return v0
.end method

.method public getStddev_adjustment()F
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_stddev_adjustment_get(JLcom/google/googlex/gcam/SharpenParams;)F

    move-result v0

    return v0
.end method

.method public setHf_strength(F)V
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_hf_strength_set(JLcom/google/googlex/gcam/SharpenParams;F)V

    .line 72
    return-void
.end method

.method public setMax_variance_hf(F)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_max_variance_hf_set(JLcom/google/googlex/gcam/SharpenParams;F)V

    .line 48
    return-void
.end method

.method public setMax_variance_mf(F)V
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_max_variance_mf_set(JLcom/google/googlex/gcam/SharpenParams;F)V

    .line 40
    return-void
.end method

.method public setMf_strength(F)V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_mf_strength_set(JLcom/google/googlex/gcam/SharpenParams;F)V

    .line 64
    return-void
.end method

.method public setMin_std_for_despeckle(F)V
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_min_std_for_despeckle_set(JLcom/google/googlex/gcam/SharpenParams;F)V

    .line 80
    return-void
.end method

.method public setStddev_adjustment(F)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/SharpenParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SharpenParams_stddev_adjustment_set(JLcom/google/googlex/gcam/SharpenParams;F)V

    .line 56
    return-void
.end method

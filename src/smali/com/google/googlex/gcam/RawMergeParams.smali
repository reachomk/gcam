.class public Lcom/google/googlex/gcam/RawMergeParams;
.super Ljava/lang/Object;
.source "RawMergeParams.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_RawMergeParams()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/RawMergeParams;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/RawMergeParams;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_RawMergeParams(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/RawMergeParams;->delete()V

    .line 26
    return-void
.end method

.method public getAlign_tile_size()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;
    .locals 4

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawMergeParams_align_tile_size_get(JLcom/google/googlex/gcam/RawMergeParams;)J

    move-result-wide v2

    .line 48
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMerge_tile_size()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;
    .locals 4

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawMergeParams_merge_tile_size_get(JLcom/google/googlex/gcam/RawMergeParams;)J

    move-result-wide v2

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getNoise_shape()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawNoiseShape_t;
    .locals 4

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawMergeParams_noise_shape_get(JLcom/google/googlex/gcam/RawMergeParams;)J

    move-result-wide v2

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawNoiseShape_t;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawNoiseShape_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public setAlign_tile_size(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;)V
    .locals 4

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawMergeParams_align_tile_size_set(JLcom/google/googlex/gcam/RawMergeParams;J)V

    .line 44
    return-void
.end method

.method public setMerge_tile_size(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;)V
    .locals 4

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_int_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawMergeParams_merge_tile_size_set(JLcom/google/googlex/gcam/RawMergeParams;J)V

    .line 53
    return-void
.end method

.method public setNoise_shape(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawNoiseShape_t;)V
    .locals 4

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/googlex/gcam/RawMergeParams;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawNoiseShape_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__SmoothKeyValueMapT_gcam__RawNoiseShape_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->RawMergeParams_noise_shape_set(JLcom/google/googlex/gcam/RawMergeParams;J)V

    .line 62
    return-void
.end method

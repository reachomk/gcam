.class public Lcom/google/googlex/gcam/PostviewParams;
.super Ljava/lang/Object;
.source "PostviewParams.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PostviewParams__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PostviewParams;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 3

    .prologue
    .line 43
    invoke-static/range {p1 .. p6}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PostviewParams__SWIG_1(IIIZZZ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PostviewParams;-><init>(JZ)V

    .line 44
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/PostviewParams;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_PostviewParams(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/PostviewParams;->delete()V

    .line 26
    return-void
.end method

.method public getApply_true_long_()Z
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_apply_true_long__get(JLcom/google/googlex/gcam/PostviewParams;)Z

    move-result v0

    return v0
.end method

.method public getPixel_format_()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_pixel_format__get(JLcom/google/googlex/gcam/PostviewParams;)I

    move-result v0

    return v0
.end method

.method public getSuppress_crop_warning_()Z
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_suppress_crop_warning__get(JLcom/google/googlex/gcam/PostviewParams;)Z

    move-result v0

    return v0
.end method

.method public getTarget_height_()I
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_target_height__get(JLcom/google/googlex/gcam/PostviewParams;)I

    move-result v0

    return v0
.end method

.method public getTarget_width_()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_target_width__get(JLcom/google/googlex/gcam/PostviewParams;)I

    move-result v0

    return v0
.end method

.method public getTonemap_hdr_scenes_()Z
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_tonemap_hdr_scenes__get(JLcom/google/googlex/gcam/PostviewParams;)Z

    move-result v0

    return v0
.end method

.method public setApply_true_long_(Z)V
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_apply_true_long__set(JLcom/google/googlex/gcam/PostviewParams;Z)V

    .line 88
    return-void
.end method

.method public setPixel_format_(I)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_pixel_format__set(JLcom/google/googlex/gcam/PostviewParams;I)V

    .line 48
    return-void
.end method

.method public setSuppress_crop_warning_(Z)V
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_suppress_crop_warning__set(JLcom/google/googlex/gcam/PostviewParams;Z)V

    .line 72
    return-void
.end method

.method public setTarget_height_(I)V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_target_height__set(JLcom/google/googlex/gcam/PostviewParams;I)V

    .line 64
    return-void
.end method

.method public setTarget_width_(I)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_target_width__set(JLcom/google/googlex/gcam/PostviewParams;I)V

    .line 56
    return-void
.end method

.method public setTonemap_hdr_scenes_(Z)V
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/PostviewParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostviewParams_tonemap_hdr_scenes__set(JLcom/google/googlex/gcam/PostviewParams;Z)V

    .line 80
    return-void
.end method

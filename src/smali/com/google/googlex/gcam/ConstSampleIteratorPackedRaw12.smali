.class public Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;
.super Ljava/lang/Object;
.source "ConstSampleIteratorPackedRaw12.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)V
    .locals 3

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->getCPtr(Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ConstSampleIteratorPackedRaw12__SWIG_1(JLcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;-><init>(JZ)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/PackedReadViewRaw12;)V
    .locals 3

    .prologue
    .line 63
    invoke-static {p1}, Lcom/google/googlex/gcam/PackedReadViewRaw12;->getCPtr(Lcom/google/googlex/gcam/PackedReadViewRaw12;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ConstSampleIteratorPackedRaw12__SWIG_0(JLcom/google/googlex/gcam/PackedReadViewRaw12;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;-><init>(JZ)V

    .line 64
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AtEnd()Z
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ConstSampleIteratorPackedRaw12_AtEnd(JLcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)Z

    move-result v0

    return v0
.end method

.method public NextSample()V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ConstSampleIteratorPackedRaw12_NextSample(JLcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)V

    .line 56
    return-void
.end method

.method public __ref__()I
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ConstSampleIteratorPackedRaw12___ref__(JLcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ConstSampleIteratorPackedRaw12_c(JLcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)I

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
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_ConstSampleIteratorPackedRaw12(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->delete()V

    .line 26
    return-void
.end method

.method public x()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ConstSampleIteratorPackedRaw12_x(JLcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ConstSampleIteratorPackedRaw12_y(JLcom/google/googlex/gcam/ConstSampleIteratorPackedRaw12;)I

    move-result v0

    return v0
.end method

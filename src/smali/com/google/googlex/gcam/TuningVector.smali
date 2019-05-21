.class public Lcom/google/googlex/gcam/TuningVector;
.super Ljava/lang/Object;
.source "TuningVector.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_TuningVector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/TuningVector;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_TuningVector__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/TuningVector;-><init>(JZ)V

    .line 44
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/TuningVector;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/TuningVector;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/googlex/gcam/Tuning;)V
    .locals 6

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/Tuning;->getCPtr(Lcom/google/googlex/gcam/Tuning;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->TuningVector_add(JLcom/google/googlex/gcam/TuningVector;JLcom/google/googlex/gcam/Tuning;)V

    .line 68
    return-void
.end method

.method public capacity()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TuningVector_capacity(JLcom/google/googlex/gcam/TuningVector;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TuningVector_clear(JLcom/google/googlex/gcam/TuningVector;)V

    .line 64
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_TuningVector(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/TuningVector;->delete()V

    .line 26
    return-void
.end method

.method public get(I)Lcom/google/googlex/gcam/Tuning;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/google/googlex/gcam/Tuning;

    iget-wide v2, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->TuningVector_get(JLcom/google/googlex/gcam/TuningVector;I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/Tuning;-><init>(JZ)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TuningVector_isEmpty(JLcom/google/googlex/gcam/TuningVector;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 3

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->TuningVector_reserve(JLcom/google/googlex/gcam/TuningVector;J)V

    .line 56
    return-void
.end method

.method public set(ILcom/google/googlex/gcam/Tuning;)V
    .locals 7

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {p2}, Lcom/google/googlex/gcam/Tuning;->getCPtr(Lcom/google/googlex/gcam/Tuning;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->TuningVector_set(JLcom/google/googlex/gcam/TuningVector;IJLcom/google/googlex/gcam/Tuning;)V

    .line 76
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/TuningVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TuningVector_size(JLcom/google/googlex/gcam/TuningVector;)J

    move-result-wide v0

    return-wide v0
.end method

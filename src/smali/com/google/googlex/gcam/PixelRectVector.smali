.class public Lcom/google/googlex/gcam/PixelRectVector;
.super Ljava/lang/Object;
.source "PixelRectVector.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PixelRectVector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PixelRectVector;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PixelRectVector__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PixelRectVector;-><init>(JZ)V

    .line 44
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/PixelRectVector;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/googlex/gcam/PixelRect;)V
    .locals 6

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/PixelRect;->getCPtr(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_add(JLcom/google/googlex/gcam/PixelRectVector;JLcom/google/googlex/gcam/PixelRect;)V

    .line 68
    return-void
.end method

.method public capacity()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_capacity(JLcom/google/googlex/gcam/PixelRectVector;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_clear(JLcom/google/googlex/gcam/PixelRectVector;)V

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
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_PixelRectVector(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/PixelRectVector;->delete()V

    .line 26
    return-void
.end method

.method public get(I)Lcom/google/googlex/gcam/PixelRect;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/google/googlex/gcam/PixelRect;

    iget-wide v2, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_get(JLcom/google/googlex/gcam/PixelRectVector;I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_isEmpty(JLcom/google/googlex/gcam/PixelRectVector;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 3

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_reserve(JLcom/google/googlex/gcam/PixelRectVector;J)V

    .line 56
    return-void
.end method

.method public set(ILcom/google/googlex/gcam/PixelRect;)V
    .locals 7

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {p2}, Lcom/google/googlex/gcam/PixelRect;->getCPtr(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_set(JLcom/google/googlex/gcam/PixelRectVector;IJLcom/google/googlex/gcam/PixelRect;)V

    .line 76
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRectVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_size(JLcom/google/googlex/gcam/PixelRectVector;)J

    move-result-wide v0

    return-wide v0
.end method

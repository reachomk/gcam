.class public Lcom/google/googlex/gcam/ImageCallback;
.super Ljava/lang/Object;
.source "ImageCallback.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ImageCallback()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v3}, Lcom/google/googlex/gcam/ImageCallback;-><init>(JZ)V

    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J

    iget-boolean v2, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageCallback_director_connect(Lcom/google/googlex/gcam/ImageCallback;JZZ)V

    .line 60
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/ImageCallback;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Run(ILcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/InterleavedImageU8;I)V
    .locals 11

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J

    invoke-static {p2}, Lcom/google/googlex/gcam/YuvImage;->getCPtr(Lcom/google/googlex/gcam/YuvImage;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move-object v9, p3

    move v10, p4

    invoke-static/range {v0 .. v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageCallback_Run(JLcom/google/googlex/gcam/ImageCallback;IJLcom/google/googlex/gcam/YuvImage;JLcom/google/googlex/gcam/InterleavedImageU8;I)V

    .line 55
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_ImageCallback(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/ImageCallback;->delete()V

    .line 26
    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCMemOwn:Z

    .line 40
    invoke-virtual {p0}, Lcom/google/googlex/gcam/ImageCallback;->delete()V

    .line 41
    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCMemOwn:Z

    .line 45
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageCallback_change_ownership(Lcom/google/googlex/gcam/ImageCallback;JZ)V

    .line 46
    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCMemOwn:Z

    .line 50
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageCallback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageCallback_change_ownership(Lcom/google/googlex/gcam/ImageCallback;JZ)V

    .line 51
    return-void
.end method

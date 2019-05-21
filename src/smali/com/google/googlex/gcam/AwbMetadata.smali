.class public Lcom/google/googlex/gcam/AwbMetadata;
.super Ljava/lang/Object;
.source "AwbMetadata.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_AwbMetadata()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/AwbMetadata;-><init>(JZ)V

    .line 64
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/AwbMetadata;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_AwbMetadata(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/AwbMetadata;->delete()V

    .line 26
    return-void
.end method

.method public getLock()Z
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_lock_get(JLcom/google/googlex/gcam/AwbMetadata;)Z

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_mode_get(JLcom/google/googlex/gcam/AwbMetadata;)I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_state_get(JLcom/google/googlex/gcam/AwbMetadata;)I

    move-result v0

    return v0
.end method

.method public setLock(Z)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_lock_set(JLcom/google/googlex/gcam/AwbMetadata;Z)V

    .line 48
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_mode_set(JLcom/google/googlex/gcam/AwbMetadata;I)V

    .line 40
    return-void
.end method

.method public setState(I)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_state_set(JLcom/google/googlex/gcam/AwbMetadata;I)V

    .line 56
    return-void
.end method

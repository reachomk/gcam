.class public Lcom/google/googlex/gcam/ClientExifMetadata;
.super Ljava/lang/Object;
.source "ClientExifMetadata.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ClientExifMetadata()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/ClientExifMetadata;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/ClientExifMetadata;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Clear()V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ClientExifMetadata_Clear(JLcom/google/googlex/gcam/ClientExifMetadata;)V

    .line 44
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_ClientExifMetadata(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/ClientExifMetadata;->delete()V

    .line 26
    return-void
.end method

.method public getLocation()Lcom/google/googlex/gcam/LocationData;
    .locals 4

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ClientExifMetadata_location_get(JLcom/google/googlex/gcam/ClientExifMetadata;)J

    move-result-wide v2

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/LocationData;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/LocationData;-><init>(JZ)V

    goto :goto_0
.end method

.method public getThumbnail()Lcom/google/googlex/gcam/InterleavedImageU8;
    .locals 4

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ClientExifMetadata_thumbnail_get(JLcom/google/googlex/gcam/ClientExifMetadata;)J

    move-result-wide v2

    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    goto :goto_0
.end method

.method public setLocation(Lcom/google/googlex/gcam/LocationData;)V
    .locals 6

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/LocationData;->getCPtr(Lcom/google/googlex/gcam/LocationData;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ClientExifMetadata_location_set(JLcom/google/googlex/gcam/ClientExifMetadata;JLcom/google/googlex/gcam/LocationData;)V

    .line 48
    return-void
.end method

.method public setThumbnail(Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 6

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/googlex/gcam/ClientExifMetadata;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ClientExifMetadata_thumbnail_set(JLcom/google/googlex/gcam/ClientExifMetadata;JLcom/google/googlex/gcam/InterleavedImageU8;)V

    .line 57
    return-void
.end method

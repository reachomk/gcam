.class public Lcom/google/googlex/gcam/ImageSaverParams;
.super Ljava/lang/Object;
.source "ImageSaverParams.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ImageSaverParams()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/ImageSaverParams;-><init>(JZ)V

    .line 76
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/ImageSaverParams;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Print()V
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_Print(JLcom/google/googlex/gcam/ImageSaverParams;)V

    .line 40
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_ImageSaverParams(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/ImageSaverParams;->delete()V

    .line 26
    return-void
.end method

.method public getDest_folder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_dest_folder_get(JLcom/google/googlex/gcam/ImageSaverParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename_prefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_filename_prefix_get(JLcom/google/googlex/gcam/ImageSaverParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename_suffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_filename_suffix_get(JLcom/google/googlex/gcam/ImageSaverParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSave_as_jpg_override()Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_save_as_jpg_override_get(JLcom/google/googlex/gcam/ImageSaverParams;)Z

    move-result v0

    return v0
.end method

.method public setDest_folder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_dest_folder_set(JLcom/google/googlex/gcam/ImageSaverParams;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setFilename_prefix(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_filename_prefix_set(JLcom/google/googlex/gcam/ImageSaverParams;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setFilename_suffix(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_filename_suffix_set(JLcom/google/googlex/gcam/ImageSaverParams;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setSave_as_jpg_override(Z)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/ImageSaverParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageSaverParams_save_as_jpg_override_set(JLcom/google/googlex/gcam/ImageSaverParams;Z)V

    .line 68
    return-void
.end method

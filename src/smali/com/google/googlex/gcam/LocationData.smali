.class public Lcom/google/googlex/gcam/LocationData;
.super Ljava/lang/Object;
.source "LocationData.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_LocationData()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/LocationData;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/LocationData;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/LocationData;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Check()Z
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_Check(JLcom/google/googlex/gcam/LocationData;)Z

    move-result v0

    return v0
.end method

.method public Clear()V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_Clear(JLcom/google/googlex/gcam/LocationData;)V

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
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_LocationData(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/LocationData;->delete()V

    .line 26
    return-void
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_altitude_get(JLcom/google/googlex/gcam/LocationData;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDegree_of_precision()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_degree_of_precision_get(JLcom/google/googlex/gcam/LocationData;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_latitude_get(JLcom/google/googlex/gcam/LocationData;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_longitude_get(JLcom/google/googlex/gcam/LocationData;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessing_method()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_processing_method_get(JLcom/google/googlex/gcam/LocationData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp_unix()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_timestamp_unix_get(JLcom/google/googlex/gcam/LocationData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAltitude(D)V
    .locals 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_altitude_set(JLcom/google/googlex/gcam/LocationData;D)V

    .line 68
    return-void
.end method

.method public setDegree_of_precision(D)V
    .locals 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_degree_of_precision_set(JLcom/google/googlex/gcam/LocationData;D)V

    .line 76
    return-void
.end method

.method public setLatitude(D)V
    .locals 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_latitude_set(JLcom/google/googlex/gcam/LocationData;D)V

    .line 52
    return-void
.end method

.method public setLongitude(D)V
    .locals 3

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_longitude_set(JLcom/google/googlex/gcam/LocationData;D)V

    .line 60
    return-void
.end method

.method public setProcessing_method(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_processing_method_set(JLcom/google/googlex/gcam/LocationData;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setTimestamp_unix(J)V
    .locals 3

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/LocationData;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LocationData_timestamp_unix_set(JLcom/google/googlex/gcam/LocationData;J)V

    .line 84
    return-void
.end method

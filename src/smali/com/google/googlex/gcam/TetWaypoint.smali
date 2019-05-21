.class public Lcom/google/googlex/gcam/TetWaypoint;
.super Ljava/lang/Object;
.source "TetWaypoint.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_TetWaypoint()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/TetWaypoint;-><init>(JZ)V

    .line 72
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/TetWaypoint;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public DeserializeFromString(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)Z
    .locals 4

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->TetWaypoint_DeserializeFromString(JLcom/google/googlex/gcam/TetWaypoint;J)Z

    move-result v0

    return v0
.end method

.method public Equals(Lcom/google/googlex/gcam/TetWaypoint;)Z
    .locals 6

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/TetWaypoint;->getCPtr(Lcom/google/googlex/gcam/TetWaypoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->TetWaypoint_Equals(JLcom/google/googlex/gcam/TetWaypoint;JLcom/google/googlex/gcam/TetWaypoint;)Z

    move-result v0

    return v0
.end method

.method public Print(II)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->TetWaypoint_Print(JLcom/google/googlex/gcam/TetWaypoint;II)V

    .line 56
    return-void
.end method

.method public SerializeToString(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;I)V
    .locals 6

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)J

    move-result-wide v3

    move-object v2, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->TetWaypoint_SerializeToString(JLcom/google/googlex/gcam/TetWaypoint;JI)V

    .line 60
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_TetWaypoint(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/TetWaypoint;->delete()V

    .line 26
    return-void
.end method

.method public getExposure_time_ms()F
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TetWaypoint_exposure_time_ms_get(JLcom/google/googlex/gcam/TetWaypoint;)F

    move-result v0

    return v0
.end method

.method public getOverall_gain()F
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TetWaypoint_overall_gain_get(JLcom/google/googlex/gcam/TetWaypoint;)F

    move-result v0

    return v0
.end method

.method public setExposure_time_ms(F)V
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->TetWaypoint_exposure_time_ms_set(JLcom/google/googlex/gcam/TetWaypoint;F)V

    .line 40
    return-void
.end method

.method public setOverall_gain(F)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/TetWaypoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->TetWaypoint_overall_gain_set(JLcom/google/googlex/gcam/TetWaypoint;F)V

    .line 48
    return-void
.end method

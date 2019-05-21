.class public Lcom/google/googlex/gcam/SensorNoiseModel;
.super Ljava/lang/Object;
.source "SensorNoiseModel.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_SensorNoiseModel()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/SensorNoiseModel;-><init>(JZ)V

    .line 80
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/SensorNoiseModel;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Check()Z
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_Check(JLcom/google/googlex/gcam/SensorNoiseModel;)Z

    move-result v0

    return v0
.end method

.method public DngNoiseModelForGain(FF)Lcom/google/googlex/gcam/DngNoiseModel;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/google/googlex/gcam/DngNoiseModel;

    iget-wide v2, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_DngNoiseModelForGain(JLcom/google/googlex/gcam/SensorNoiseModel;FF)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/DngNoiseModel;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_SensorNoiseModel(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/SensorNoiseModel;->delete()V

    .line 26
    return-void
.end method

.method public getOffset_a()F
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_offset_a_get(JLcom/google/googlex/gcam/SensorNoiseModel;)F

    move-result v0

    return v0
.end method

.method public getOffset_b()F
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_offset_b_get(JLcom/google/googlex/gcam/SensorNoiseModel;)F

    move-result v0

    return v0
.end method

.method public getScale_a()F
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_scale_a_get(JLcom/google/googlex/gcam/SensorNoiseModel;)F

    move-result v0

    return v0
.end method

.method public getScale_b()F
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_scale_b_get(JLcom/google/googlex/gcam/SensorNoiseModel;)F

    move-result v0

    return v0
.end method

.method public setOffset_a(F)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_offset_a_set(JLcom/google/googlex/gcam/SensorNoiseModel;F)V

    .line 56
    return-void
.end method

.method public setOffset_b(F)V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_offset_b_set(JLcom/google/googlex/gcam/SensorNoiseModel;F)V

    .line 64
    return-void
.end method

.method public setScale_a(F)V
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_scale_a_set(JLcom/google/googlex/gcam/SensorNoiseModel;F)V

    .line 40
    return-void
.end method

.method public setScale_b(F)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/SensorNoiseModel;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SensorNoiseModel_scale_b_set(JLcom/google/googlex/gcam/SensorNoiseModel;F)V

    .line 48
    return-void
.end method

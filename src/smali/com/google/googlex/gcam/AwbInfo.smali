.class public Lcom/google/googlex/gcam/AwbInfo;
.super Ljava/lang/Object;
.source "AwbInfo.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_AwbInfo()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/AwbInfo;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Check()Z
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_Check(JLcom/google/googlex/gcam/AwbInfo;)Z

    move-result v0

    return v0
.end method

.method public Clear()V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_Clear(JLcom/google/googlex/gcam/AwbInfo;)V

    .line 44
    return-void
.end method

.method public DeserializeFromString(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)Z
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_DeserializeFromString(JLcom/google/googlex/gcam/AwbInfo;J)Z

    move-result v0

    return v0
.end method

.method public Equals(Lcom/google/googlex/gcam/AwbInfo;)Z
    .locals 6

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/AwbInfo;->getCPtr(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_Equals(JLcom/google/googlex/gcam/AwbInfo;JLcom/google/googlex/gcam/AwbInfo;)Z

    move-result v0

    return v0
.end method

.method public GetWbGainsRGB(Lcom/google/googlex/gcam/SWIGTYPE_p_float;Lcom/google/googlex/gcam/SWIGTYPE_p_float;Lcom/google/googlex/gcam/SWIGTYPE_p_float;)V
    .locals 10

    .prologue
    .line 71
    iget-wide v1, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_float;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_float;)J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/googlex/gcam/SWIGTYPE_p_float;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_float;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/google/googlex/gcam/SWIGTYPE_p_float;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_float;)J

    move-result-wide v8

    move-object v3, p0

    invoke-static/range {v1 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_GetWbGainsRGB(JLcom/google/googlex/gcam/AwbInfo;JJJ)V

    .line 72
    return-void
.end method

.method public Print(II)V
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_Print(JLcom/google/googlex/gcam/AwbInfo;II)V

    .line 52
    return-void
.end method

.method public SerializeToString(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;I)V
    .locals 6

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)J

    move-result-wide v3

    move-object v2, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_SerializeToString(JLcom/google/googlex/gcam/AwbInfo;JI)V

    .line 56
    return-void
.end method

.method public SetIdentityRgbToRgb()V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_SetIdentityRgbToRgb(JLcom/google/googlex/gcam/AwbInfo;)V

    .line 68
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_AwbInfo(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/AwbInfo;->delete()V

    .line 26
    return-void
.end method

.method public getColor_temp()I
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_color_temp_get(JLcom/google/googlex/gcam/AwbInfo;)I

    move-result v0

    return v0
.end method

.method public getGains()[F
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_gains_get(JLcom/google/googlex/gcam/AwbInfo;)[F

    move-result-object v0

    return-object v0
.end method

.method public getRgb2rgb()[F
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_rgb2rgb_get(JLcom/google/googlex/gcam/AwbInfo;)[F

    move-result-object v0

    return-object v0
.end method

.method public setColor_temp(I)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_color_temp_set(JLcom/google/googlex/gcam/AwbInfo;I)V

    .line 76
    return-void
.end method

.method public setGains([F)V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_gains_set(JLcom/google/googlex/gcam/AwbInfo;[F)V

    .line 84
    return-void
.end method

.method public setRgb2rgb([F)V
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/gcam/AwbInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_rgb2rgb_set(JLcom/google/googlex/gcam/AwbInfo;[F)V

    .line 92
    return-void
.end method

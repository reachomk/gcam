.class public Lcom/google/googlex/gcam/PixelRect;
.super Ljava/lang/Object;
.source "PixelRect.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PixelRect()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    .line 112
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/PixelRect;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/PixelRect;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AspectRatio()F
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_AspectRatio(JLcom/google/googlex/gcam/PixelRect;)F

    move-result v0

    return v0
.end method

.method public Check()Z
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_Check(JLcom/google/googlex/gcam/PixelRect;)Z

    move-result v0

    return v0
.end method

.method public DeserializeFromString(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)Z
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_DeserializeFromString(JLcom/google/googlex/gcam/PixelRect;J)Z

    move-result v0

    return v0
.end method

.method public Equals(Lcom/google/googlex/gcam/PixelRect;)Z
    .locals 6

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/PixelRect;->getCPtr(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_Equals(JLcom/google/googlex/gcam/PixelRect;JLcom/google/googlex/gcam/PixelRect;)Z

    move-result v0

    return v0
.end method

.method public InverseAspectRatio()F
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_InverseAspectRatio(JLcom/google/googlex/gcam/PixelRect;)F

    move-result v0

    return v0
.end method

.method public IsEmpty()Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_IsEmpty(JLcom/google/googlex/gcam/PixelRect;)Z

    move-result v0

    return v0
.end method

.method public Print(II)V
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_Print(JLcom/google/googlex/gcam/PixelRect;II)V

    .line 80
    return-void
.end method

.method public SerializeToString(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;I)V
    .locals 6

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)J

    move-result-wide v3

    move-object v2, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_SerializeToString(JLcom/google/googlex/gcam/PixelRect;JI)V

    .line 84
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_PixelRect(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/PixelRect;->delete()V

    .line 26
    return-void
.end method

.method public getX0()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_x0_get(JLcom/google/googlex/gcam/PixelRect;)I

    move-result v0

    return v0
.end method

.method public getX1()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_x1_get(JLcom/google/googlex/gcam/PixelRect;)I

    move-result v0

    return v0
.end method

.method public getY0()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_y0_get(JLcom/google/googlex/gcam/PixelRect;)I

    move-result v0

    return v0
.end method

.method public getY1()I
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_y1_get(JLcom/google/googlex/gcam/PixelRect;)I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_height(JLcom/google/googlex/gcam/PixelRect;)I

    move-result v0

    return v0
.end method

.method public setX0(I)V
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_x0_set(JLcom/google/googlex/gcam/PixelRect;I)V

    .line 40
    return-void
.end method

.method public setX1(I)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_x1_set(JLcom/google/googlex/gcam/PixelRect;I)V

    .line 48
    return-void
.end method

.method public setY0(I)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_y0_set(JLcom/google/googlex/gcam/PixelRect;I)V

    .line 56
    return-void
.end method

.method public setY1(I)V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_y1_set(JLcom/google/googlex/gcam/PixelRect;I)V

    .line 64
    return-void
.end method

.method public width()I
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/googlex/gcam/PixelRect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRect_width(JLcom/google/googlex/gcam/PixelRect;)I

    move-result v0

    return v0
.end method

.class public Lcom/google/googlex/gcam/BurstSpec;
.super Ljava/lang/Object;
.source "BurstSpec.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_BurstSpec()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/BurstSpec;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/BurstSpec;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Clear()V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_Clear(JLcom/google/googlex/gcam/BurstSpec;)V

    .line 44
    return-void
.end method

.method public DeserializeFromString(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)Z
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_DeserializeFromString(JLcom/google/googlex/gcam/BurstSpec;J)Z

    move-result v0

    return v0
.end method

.method public Print(I)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_Print(JLcom/google/googlex/gcam/BurstSpec;I)V

    .line 48
    return-void
.end method

.method public SerializeToString(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)V
    .locals 4

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_SerializeToString(JLcom/google/googlex/gcam/BurstSpec;J)V

    .line 52
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_BurstSpec(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/BurstSpec;->delete()V

    .line 26
    return-void
.end method

.method public getExp_comp()F
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_exp_comp_get(JLcom/google/googlex/gcam/BurstSpec;)F

    move-result v0

    return v0
.end method

.method public getFrame_requests()Lcom/google/googlex/gcam/FrameRequestVector;
    .locals 4

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_frame_requests_get(JLcom/google/googlex/gcam/BurstSpec;)J

    move-result-wide v2

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/FrameRequestVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/FrameRequestVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getHdr_mode()I
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_hdr_mode_get(JLcom/google/googlex/gcam/BurstSpec;)I

    move-result v0

    return v0
.end method

.method public getPoor_mans()Lcom/google/googlex/gcam/PoorMansParams;
    .locals 4

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_poor_mans_get(JLcom/google/googlex/gcam/BurstSpec;)J

    move-result-wide v2

    .line 105
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/PoorMansParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/PoorMansParams;-><init>(JZ)V

    goto :goto_0
.end method

.method public getScene_is_hdr()I
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_scene_is_hdr_get(JLcom/google/googlex/gcam/BurstSpec;)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_type_get(JLcom/google/googlex/gcam/BurstSpec;)I

    move-result v0

    return v0
.end method

.method public setExp_comp(F)V
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_exp_comp_set(JLcom/google/googlex/gcam/BurstSpec;F)V

    .line 93
    return-void
.end method

.method public setFrame_requests(Lcom/google/googlex/gcam/FrameRequestVector;)V
    .locals 6

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/FrameRequestVector;->getCPtr(Lcom/google/googlex/gcam/FrameRequestVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_frame_requests_set(JLcom/google/googlex/gcam/BurstSpec;JLcom/google/googlex/gcam/FrameRequestVector;)V

    .line 60
    return-void
.end method

.method public setHdr_mode(I)V
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_hdr_mode_set(JLcom/google/googlex/gcam/BurstSpec;I)V

    .line 85
    return-void
.end method

.method public setPoor_mans(Lcom/google/googlex/gcam/PoorMansParams;)V
    .locals 6

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/PoorMansParams;->getCPtr(Lcom/google/googlex/gcam/PoorMansParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_poor_mans_set(JLcom/google/googlex/gcam/BurstSpec;JLcom/google/googlex/gcam/PoorMansParams;)V

    .line 101
    return-void
.end method

.method public setScene_is_hdr(I)V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_scene_is_hdr_set(JLcom/google/googlex/gcam/BurstSpec;I)V

    .line 77
    return-void
.end method

.method public setType(I)V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_type_set(JLcom/google/googlex/gcam/BurstSpec;I)V

    .line 69
    return-void
.end method

.class public Lcom/google/googlex/gcam/YuvWriteView;
.super Lcom/google/googlex/gcam/YuvReadView;
.source "YuvWriteView.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvWriteView__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/YuvWriteView;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(IIIILcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;IIIILcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;I)V
    .locals 13

    .prologue
    .line 47
    invoke-static/range {p5 .. p5}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)J

    move-result-wide v4

    invoke-static/range {p10 .. p10}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)J

    move-result-wide v10

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v12, p11

    invoke-static/range {v0 .. v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvWriteView__SWIG_2(IIIIJIIIIJI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/YuvWriteView;-><init>(JZ)V

    .line 48
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/google/googlex/gcam/YuvReadView;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/YuvWriteView;)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/googlex/gcam/YuvWriteView;->getCPtr(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvWriteView__SWIG_1(JLcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/YuvWriteView;-><init>(JZ)V

    .line 44
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/YuvWriteView;)J
    .locals 2

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public FastCrop(IIII)V
    .locals 7

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_FastCrop(JLcom/google/googlex/gcam/YuvWriteView;IIII)V

    .line 64
    return-void
.end method

.method public SetYuvFormat(I)V
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_SetYuvFormat(JLcom/google/googlex/gcam/YuvWriteView;I)V

    .line 60
    return-void
.end method

.method public chroma_write_view()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kPixelContiguous_t;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kPixelContiguous_t;

    iget-wide v2, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_chroma_write_view(JLcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kPixelContiguous_t;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCMemOwn:Z

    .line 31
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_YuvWriteView(J)V

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/google/googlex/gcam/YuvReadView;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/googlex/gcam/YuvWriteView;->delete()V

    .line 25
    return-void
.end method

.method public luma_write_view()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kPixelContiguous_t;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kPixelContiguous_t;

    iget-wide v2, p0, Lcom/google/googlex/gcam/YuvWriteView;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_luma_write_view(JLcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kPixelContiguous_t;-><init>(JZ)V

    return-object v0
.end method

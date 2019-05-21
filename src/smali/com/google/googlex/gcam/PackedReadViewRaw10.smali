.class public Lcom/google/googlex/gcam/PackedReadViewRaw10;
.super Ljava/lang/Object;
.source "PackedReadViewRaw10.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PackedReadViewRaw10__SWIG_2()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PackedReadViewRaw10;-><init>(JZ)V

    .line 96
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/PackedReadViewRaw10;)V
    .locals 3

    .prologue
    .line 39
    invoke-static {p1}, Lcom/google/googlex/gcam/PackedReadViewRaw10;->getCPtr(Lcom/google/googlex/gcam/PackedReadViewRaw10;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PackedReadViewRaw10__SWIG_0(JLcom/google/googlex/gcam/PackedReadViewRaw10;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PackedReadViewRaw10;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;)V
    .locals 3

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PackedReadViewRaw10__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/PackedReadViewRaw10;-><init>(JZ)V

    .line 92
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/PackedReadViewRaw10;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public FastCrop(IIII)Z
    .locals 7

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_FastCrop(JLcom/google/googlex/gcam/PackedReadViewRaw10;IIII)Z

    move-result v0

    return v0
.end method

.method public Unpack(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;)V
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_Unpack(JLcom/google/googlex/gcam/PackedReadViewRaw10;J)V

    .line 68
    return-void
.end method

.method public UnpackRow(IIILcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;)V
    .locals 8

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {p4}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;)J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_UnpackRow__SWIG_0(JLcom/google/googlex/gcam/PackedReadViewRaw10;IIIJ)V

    .line 60
    return-void
.end method

.method public UnpackRow(ILcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;)V
    .locals 6

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {p2}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_UnpackRow__SWIG_1(JLcom/google/googlex/gcam/PackedReadViewRaw10;IJ)V

    .line 64
    return-void
.end method

.method public at(II)I
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_at__SWIG_0(JLcom/google/googlex/gcam/PackedReadViewRaw10;II)I

    move-result v0

    return v0
.end method

.method public at(III)I
    .locals 6

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_at__SWIG_1(JLcom/google/googlex/gcam/PackedReadViewRaw10;III)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_PackedReadViewRaw10(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/PackedReadViewRaw10;->delete()V

    .line 26
    return-void
.end method

.method public height()I
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_height(JLcom/google/googlex/gcam/PackedReadViewRaw10;)I

    move-result v0

    return v0
.end method

.method public num_channels()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_num_channels(JLcom/google/googlex/gcam/PackedReadViewRaw10;)I

    move-result v0

    return v0
.end method

.method public packed_read_view()Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;

    iget-wide v2, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_packed_read_view(JLcom/google/googlex/gcam/PackedReadViewRaw10;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;-><init>(JZ)V

    return-object v0
.end method

.method public sample_array_size()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_sample_array_size(JLcom/google/googlex/gcam/PackedReadViewRaw10;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sample_iterator()Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw10;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw10;

    iget-wide v2, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_sample_iterator(JLcom/google/googlex/gcam/PackedReadViewRaw10;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/ConstSampleIteratorPackedRaw10;-><init>(JZ)V

    return-object v0
.end method

.method public width()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlex/gcam/PackedReadViewRaw10;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PackedReadViewRaw10_width(JLcom/google/googlex/gcam/PackedReadViewRaw10;)I

    move-result v0

    return v0
.end method

.class public Lcom/google/googlex/gcam/InterleavedImageU8;
.super Ljava/lang/Object;
.source "InterleavedImageU8.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_6()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    .line 64
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .prologue
    .line 51
    invoke-static {p1, p2, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_3(III)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3

    .prologue
    .line 47
    invoke-static {p1, p2, p3, p4}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_2(IIII)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(IIIIJ)V
    .locals 3

    .prologue
    .line 43
    invoke-static/range {p1 .. p6}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_1(IIIIJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(IIIIJLcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;)V
    .locals 9

    .prologue
    .line 39
    invoke-static/range {p7 .. p7}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;)J

    move-result-wide v6

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_0(IIIIJJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 3

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_5(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;)V
    .locals 4

    .prologue
    .line 55
    invoke-static {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;)J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_4(JLcom/google/googlex/gcam/InterleavedImageU8;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    .line 56
    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Crop(IIII)V
    .locals 7

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_Crop(JLcom/google/googlex/gcam/InterleavedImageU8;IIII)V

    .line 112
    return-void
.end method

.method public DestructiveResize(III)V
    .locals 6

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_DestructiveResize__SWIG_2(JLcom/google/googlex/gcam/InterleavedImageU8;III)V

    .line 128
    return-void
.end method

.method public DestructiveResize(IIII)V
    .locals 7

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_DestructiveResize__SWIG_1(JLcom/google/googlex/gcam/InterleavedImageU8;IIII)V

    .line 124
    return-void
.end method

.method public DestructiveResize(IIIIJ)V
    .locals 9

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-static/range {v0 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_DestructiveResize__SWIG_0(JLcom/google/googlex/gcam/InterleavedImageU8;IIIIJ)V

    .line 120
    return-void
.end method

.method public FastCrop(IIII)V
    .locals 7

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_FastCrop(JLcom/google/googlex/gcam/InterleavedImageU8;IIII)V

    .line 108
    return-void
.end method

.method public MakeCopy()Lcom/google/googlex/gcam/InterleavedImageU8;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-wide v2, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_MakeCopy__SWIG_1(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    return-object v0
.end method

.method public MakeCopy(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;)Lcom/google/googlex/gcam/InterleavedImageU8;
    .locals 6

    .prologue
    .line 67
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-wide v2, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__TImageSampleAllocator;)J

    move-result-wide v4

    invoke-static {v2, v3, p0, v4, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_MakeCopy__SWIG_0(JLcom/google/googlex/gcam/InterleavedImageU8;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    return-object v0
.end method

.method public RemovePadding()V
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_RemovePadding(JLcom/google/googlex/gcam/InterleavedImageU8;)V

    .line 116
    return-void
.end method

.method public SamplesAreCompact()Z
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_SamplesAreCompact(JLcom/google/googlex/gcam/InterleavedImageU8;)Z

    move-result v0

    return v0
.end method

.method public Swap(Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 6

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_Swap(JLcom/google/googlex/gcam/InterleavedImageU8;JLcom/google/googlex/gcam/InterleavedImageU8;)V

    .line 132
    return-void
.end method

.method public c_stride()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_c_stride(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_InterleavedImageU8(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/google/googlex/gcam/InterleavedImageU8;->delete()V

    .line 26
    return-void
.end method

.method public height()I
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_height(JLcom/google/googlex/gcam/InterleavedImageU8;)I

    move-result v0

    return v0
.end method

.method public num_channels()I
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_num_channels(JLcom/google/googlex/gcam/InterleavedImageU8;)I

    move-result v0

    return v0
.end method

.method public sample_array_size()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_sample_array_size(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sizeof_sample_type()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_sizeof_sample_type(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    return-wide v0
.end method

.method public width()I
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_width(JLcom/google/googlex/gcam/InterleavedImageU8;)I

    move-result v0

    return v0
.end method

.method public x_stride()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_x_stride(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    return-wide v0
.end method

.method public y_stride()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_y_stride(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    return-wide v0
.end method

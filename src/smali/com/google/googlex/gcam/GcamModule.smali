.class public Lcom/google/googlex/gcam/GcamModule;
.super Ljava/lang/Object;
.source "GcamModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AdjustRawBufferMins(ILcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;II)Lcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p2, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->AdjustRawBufferMins(IJII)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;-><init>(JZ)V

    return-object v0
.end method

.method public static AdjustRawVignetting(Lcom/google/googlex/gcam/RawVignetteParams;Lcom/google/googlex/gcam/SpatialGainMap;)V
    .locals 6

    .prologue
    .line 469
    invoke-static {p0}, Lcom/google/googlex/gcam/RawVignetteParams;->getCPtr(Lcom/google/googlex/gcam/RawVignetteParams;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/SpatialGainMap;->getCPtr(Lcom/google/googlex/gcam/SpatialGainMap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AdjustRawVignetting(JLcom/google/googlex/gcam/RawVignetteParams;JLcom/google/googlex/gcam/SpatialGainMap;)V

    .line 470
    return-void
.end method

.method public static ApplyBlsAndSgm(Lcom/google/googlex/gcam/SpatialGainMap;[FILcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;)V
    .locals 7

    .prologue
    .line 473
    invoke-static {p0}, Lcom/google/googlex/gcam/SpatialGainMap;->getCPtr(Lcom/google/googlex/gcam/SpatialGainMap;)J

    move-result-wide v0

    invoke-static {p3}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ApplyBlsAndSgm__SWIG_0(JLcom/google/googlex/gcam/SpatialGainMap;[FIJ)V

    .line 474
    return-void
.end method

.method public static ApplyBlsAndSgm(Lcom/google/googlex/gcam/SpatialGainMap;[FILcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;)V
    .locals 10

    .prologue
    .line 477
    invoke-static {p0}, Lcom/google/googlex/gcam/SpatialGainMap;->getCPtr(Lcom/google/googlex/gcam/SpatialGainMap;)J

    move-result-wide v1

    invoke-static {p3}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;)J

    move-result-wide v6

    invoke-static {p4}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_short_gcam__kPixelContiguous_t;)J

    move-result-wide v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ApplyBlsAndSgm__SWIG_1(JLcom/google/googlex/gcam/SpatialGainMap;[FIJJ)V

    .line 478
    return-void
.end method

.method public static BayerPatternColors(I[S)Z
    .locals 1

    .prologue
    .line 397
    invoke-static {p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BayerPatternColors(I[S)Z

    move-result v0

    return v0
.end method

.method public static BayerPatternFromColors([S)I
    .locals 1

    .prologue
    .line 401
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BayerPatternFromColors([S)I

    move-result v0

    return v0
.end method

.method public static ByteBufferViewOfNativePointer(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 586
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ByteBufferViewOfNativePointer(JI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static CheckBlackRegions(Lcom/google/googlex/gcam/PixelRectVector;Lcom/google/googlex/gcam/StaticMetadata;)Z
    .locals 6

    .prologue
    .line 457
    invoke-static {p0}, Lcom/google/googlex/gcam/PixelRectVector;->getCPtr(Lcom/google/googlex/gcam/PixelRectVector;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/StaticMetadata;->getCPtr(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->CheckBlackRegions(JLcom/google/googlex/gcam/PixelRectVector;JLcom/google/googlex/gcam/StaticMetadata;)Z

    move-result v0

    return v0
.end method

.method public static CheckMetadataTuningConsistency(Lcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/Tuning;ZLcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;)Z
    .locals 10

    .prologue
    .line 545
    invoke-static {p0}, Lcom/google/googlex/gcam/FrameMetadata;->getCPtr(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/google/googlex/gcam/Tuning;->getCPtr(Lcom/google/googlex/gcam/Tuning;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;)J

    move-result-wide v8

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->CheckMetadataTuningConsistency(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/Tuning;ZJ)Z

    move-result v0

    return v0
.end method

.method public static ComputeCensus(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;I)Lcom/google/googlex/gcam/InterleavedImageU8;
    .locals 4

    .prologue
    .line 187
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ComputeCensus__SWIG_1(JI)J

    move-result-wide v2

    .line 188
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    goto :goto_0
.end method

.method public static ComputeCensus(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;ILcom/google/googlex/gcam/SWIGTYPE_p_void;)Lcom/google/googlex/gcam/InterleavedImageU8;
    .locals 4

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/googlex/gcam/SWIGTYPE_p_void;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ComputeCensus__SWIG_0(JIJ)J

    move-result-wide v2

    .line 183
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    goto :goto_0
.end method

.method public static ComputeCensusReference(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;I)Lcom/google/googlex/gcam/InterleavedImageU8;
    .locals 4

    .prologue
    .line 192
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ComputeCensusReference(JI)J

    move-result-wide v2

    .line 193
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(JZ)V

    goto :goto_0
.end method

.method public static CopyAeResults(Lcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/AeResults;
    .locals 4

    .prologue
    .line 578
    new-instance v0, Lcom/google/googlex/gcam/AeResults;

    invoke-static {p0}, Lcom/google/googlex/gcam/AeResults;->getCPtr(Lcom/google/googlex/gcam/AeResults;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->CopyAeResults(JLcom/google/googlex/gcam/AeResults;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/AeResults;-><init>(JZ)V

    return-object v0
.end method

.method public static DeleteNativeArray(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)V
    .locals 2

    .prologue
    .line 574
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->DeleteNativeArray(J)V

    .line 575
    return-void
.end method

.method public static DeleteNativeImage(Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 2

    .prologue
    .line 570
    invoke-static {p0}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->DeleteNativeImage(JLcom/google/googlex/gcam/InterleavedImageU8;)V

    .line 571
    return-void
.end method

.method public static DeserializeBurstMetadata(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;Lcom/google/googlex/gcam/SWIGTYPE_p_bool;)Z
    .locals 6

    .prologue
    .line 445
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_p_char;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/googlex/gcam/SWIGTYPE_p_bool;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_bool;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->DeserializeBurstMetadata(JJJ)Z

    move-result v0

    return v0
.end method

.method public static FaceInfoToPixelRect(Lcom/google/googlex/gcam/FaceInfo;IIZ)Lcom/google/googlex/gcam/PixelRect;
    .locals 7

    .prologue
    .line 413
    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    invoke-static {p0}, Lcom/google/googlex/gcam/FaceInfo;->getCPtr(Lcom/google/googlex/gcam/FaceInfo;)J

    move-result-wide v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfoToPixelRect__SWIG_1(JLcom/google/googlex/gcam/FaceInfo;IIZ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    return-object v6
.end method

.method public static FaceInfoToPixelRect(Lcom/google/googlex/gcam/FaceInfo;IIZI)Lcom/google/googlex/gcam/PixelRect;
    .locals 8

    .prologue
    .line 409
    new-instance v7, Lcom/google/googlex/gcam/PixelRect;

    invoke-static {p0}, Lcom/google/googlex/gcam/FaceInfo;->getCPtr(Lcom/google/googlex/gcam/FaceInfo;)J

    move-result-wide v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfoToPixelRect__SWIG_0(JLcom/google/googlex/gcam/FaceInfo;IIZI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    return-object v7
.end method

.method public static FactorizeTet(Lcom/google/googlex/gcam/TetModel;FFFFFIZFLcom/google/googlex/gcam/SWIGTYPE_p_float;Lcom/google/googlex/gcam/SWIGTYPE_p_float;Lcom/google/googlex/gcam/SWIGTYPE_p_float;Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;)V
    .locals 20

    .prologue
    .line 529
    invoke-static/range {p0 .. p0}, Lcom/google/googlex/gcam/TetModel;->getCPtr(Lcom/google/googlex/gcam/TetModel;)J

    move-result-wide v1

    invoke-static/range {p9 .. p9}, Lcom/google/googlex/gcam/SWIGTYPE_p_float;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_float;)J

    move-result-wide v12

    invoke-static/range {p10 .. p10}, Lcom/google/googlex/gcam/SWIGTYPE_p_float;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_float;)J

    move-result-wide v14

    invoke-static/range {p11 .. p11}, Lcom/google/googlex/gcam/SWIGTYPE_p_float;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_float;)J

    move-result-wide v16

    invoke-static/range {p12 .. p12}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__LogSaver;)J

    move-result-wide v18

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v1 .. v19}, Lcom/google/googlex/gcam/GcamModuleJNI;->FactorizeTet(JLcom/google/googlex/gcam/TetModel;FFFFFIZFJJJJ)V

    .line 530
    return-void
.end method

.method public static FixOldWbGains(Lcom/google/googlex/gcam/AwbInfo;)V
    .locals 2

    .prologue
    .line 114
    invoke-static {p0}, Lcom/google/googlex/gcam/AwbInfo;->getCPtr(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FixOldWbGains(JLcom/google/googlex/gcam/AwbInfo;)V

    .line 115
    return-void
.end method

.method public static GenGcamNexus5TonemapFloat()Lcom/google/googlex/gcam/TonemapFloat;
    .locals 4

    .prologue
    .line 170
    new-instance v0, Lcom/google/googlex/gcam/TonemapFloat;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenGcamNexus5TonemapFloat()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/TonemapFloat;-><init>(JZ)V

    return-object v0
.end method

.method public static GenGcamTonemap()Lcom/google/googlex/gcam/Tonemap;
    .locals 4

    .prologue
    .line 166
    new-instance v0, Lcom/google/googlex/gcam/Tonemap;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenGcamTonemap()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/Tonemap;-><init>(JZ)V

    return-object v0
.end method

.method public static GenGlassIncorrectTonemap1()Lcom/google/googlex/gcam/Tonemap;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Lcom/google/googlex/gcam/Tonemap;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenGlassIncorrectTonemap1()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/Tonemap;-><init>(JZ)V

    return-object v0
.end method

.method public static GenStockGalaxyNexusTonemap()Lcom/google/googlex/gcam/Tonemap;
    .locals 4

    .prologue
    .line 178
    new-instance v0, Lcom/google/googlex/gcam/Tonemap;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenStockGalaxyNexusTonemap()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/Tonemap;-><init>(JZ)V

    return-object v0
.end method

.method public static GetAwbForTet(FLcom/google/googlex/gcam/TetToAwb;Z)Lcom/google/googlex/gcam/AwbInfo;
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lcom/google/googlex/gcam/AwbInfo;

    invoke-static {p1}, Lcom/google/googlex/gcam/TetToAwb;->getCPtr(Lcom/google/googlex/gcam/TetToAwb;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetAwbForTet(FJLcom/google/googlex/gcam/TetToAwb;Z)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    return-object v0
.end method

.method public static GetBitsPerPixel(I)I
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetBitsPerPixel(I)I

    move-result v0

    return v0
.end method

.method public static GetDirectByteBufferAddress(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 582
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetDirectByteBufferAddress(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static GetDirtyLensProbability(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;[F[F)Z
    .locals 2

    .prologue
    .line 553
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadOnlyTImageViewT_unsigned_char_gcam__kPixelContiguous_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetDirtyLensProbability__SWIG_0(J[F[F)Z

    move-result v0

    return v0
.end method

.method public static GetDirtyLensProbability(Lcom/google/googlex/gcam/YuvReadView;[F[F)Z
    .locals 2

    .prologue
    .line 557
    invoke-static {p0}, Lcom/google/googlex/gcam/YuvReadView;->getCPtr(Lcom/google/googlex/gcam/YuvReadView;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetDirtyLensProbability__SWIG_1(JLcom/google/googlex/gcam/YuvReadView;[F[F)Z

    move-result v0

    return v0
.end method

.method public static GetDirtyLensProbabilityFromJpegInMemory(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;J[F[F)Z
    .locals 7

    .prologue
    .line 561
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)J

    move-result-wide v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetDirtyLensProbabilityFromJpegInMemory(JJ[F[F)Z

    move-result v0

    return v0
.end method

.method public static GetGcamImageMemCurrent()I
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetGcamImageMemCurrent()I

    move-result v0

    return v0
.end method

.method public static GetGcamImageMemPeak()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetGcamImageMemPeak()I

    move-result v0

    return v0
.end method

.method public static GetImageHeight(Lcom/google/googlex/gcam/InterleavedImageU8;)I
    .locals 2

    .prologue
    .line 594
    invoke-static {p0}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetImageHeight(JLcom/google/googlex/gcam/InterleavedImageU8;)I

    move-result v0

    return v0
.end method

.method public static GetImageWidth(Lcom/google/googlex/gcam/InterleavedImageU8;)I
    .locals 2

    .prologue
    .line 590
    invoke-static {p0}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetImageWidth(JLcom/google/googlex/gcam/InterleavedImageU8;)I

    move-result v0

    return v0
.end method

.method public static GetNumChannels(I)I
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetNumChannels(I)I

    move-result v0

    return v0
.end method

.method public static GetRandomBayerPattern()I
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetRandomBayerPattern()I

    move-result v0

    return v0
.end method

.method public static GetRandomInitParams()Lcom/google/googlex/gcam/InitParams;
    .locals 4

    .prologue
    .line 261
    new-instance v0, Lcom/google/googlex/gcam/InitParams;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetRandomInitParams()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/InitParams;-><init>(JZ)V

    return-object v0
.end method

.method public static GetRandomPixelFormat()I
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetRandomPixelFormat()I

    move-result v0

    return v0
.end method

.method public static GetRandomShotParams(Lcom/google/googlex/gcam/InitParams;)Lcom/google/googlex/gcam/ShotParams;
    .locals 4

    .prologue
    .line 517
    new-instance v0, Lcom/google/googlex/gcam/ShotParams;

    invoke-static {p0}, Lcom/google/googlex/gcam/InitParams;->getCPtr(Lcom/google/googlex/gcam/InitParams;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetRandomShotParams(JLcom/google/googlex/gcam/InitParams;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/ShotParams;-><init>(JZ)V

    return-object v0
.end method

.method public static GetRawBufferBounds(ILcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;)V
    .locals 12

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_buffer_t;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v6

    invoke-static/range {p4 .. p4}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v8

    invoke-static/range {p5 .. p5}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v10

    move v1, p0

    invoke-static/range {v1 .. v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetRawBufferBounds(IJJJJJ)V

    .line 71
    return-void
.end method

.method public static GetRotatedImageSize(IIILcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;)V
    .locals 8

    .prologue
    .line 126
    invoke-static {p3}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v4

    invoke-static {p4}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v6

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetRotatedImageSize(IIIJJ)V

    .line 127
    return-void
.end method

.method public static GetStaticMetadataFromDeviceCode(Ljava/lang/String;Lcom/google/googlex/gcam/StaticMetadata;)Z
    .locals 2

    .prologue
    .line 461
    invoke-static {p1}, Lcom/google/googlex/gcam/StaticMetadata;->getCPtr(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetStaticMetadataFromDeviceCode(Ljava/lang/String;JLcom/google/googlex/gcam/StaticMetadata;)Z

    move-result v0

    return v0
.end method

.method public static GetTuningFromDeviceCode(Ljava/lang/String;ILcom/google/googlex/gcam/Tuning;)Z
    .locals 2

    .prologue
    .line 541
    invoke-static {p2}, Lcom/google/googlex/gcam/Tuning;->getCPtr(Lcom/google/googlex/gcam/Tuning;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetTuningFromDeviceCode(Ljava/lang/String;IJLcom/google/googlex/gcam/Tuning;)Z

    move-result v0

    return v0
.end method

.method public static GetUnsignedCharPointerFromAddress(J)Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;
    .locals 4

    .prologue
    .line 565
    invoke-static {p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetUnsignedCharPointerFromAddress(J)J

    move-result-wide v2

    .line 566
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static GetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static InitCustomMemoryAllocator(Lcom/google/googlex/gcam/SWIGTYPE_p_f_unsigned_long__p_void;Lcom/google/googlex/gcam/SWIGTYPE_p_f_p_void__void;)V
    .locals 4

    .prologue
    .line 17
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_f_unsigned_long__p_void;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_f_unsigned_long__p_void;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_f_p_void__void;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_f_p_void__void;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitCustomMemoryAllocator(JJ)V

    .line 18
    return-void
.end method

.method public static InterpolateWb(Lcom/google/googlex/gcam/AwbInfo;Lcom/google/googlex/gcam/AwbInfo;F)Lcom/google/googlex/gcam/AwbInfo;
    .locals 8

    .prologue
    .line 110
    new-instance v7, Lcom/google/googlex/gcam/AwbInfo;

    invoke-static {p0}, Lcom/google/googlex/gcam/AwbInfo;->getCPtr(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/AwbInfo;->getCPtr(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterpolateWb(JLcom/google/googlex/gcam/AwbInfo;JLcom/google/googlex/gcam/AwbInfo;F)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    return-object v7
.end method

.method public static Intersect(Lcom/google/googlex/gcam/PixelRect;Lcom/google/googlex/gcam/PixelRect;)Lcom/google/googlex/gcam/PixelRect;
    .locals 7

    .prologue
    .line 13
    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    invoke-static {p0}, Lcom/google/googlex/gcam/PixelRect;->getCPtr(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/PixelRect;->getCPtr(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Intersect(JLcom/google/googlex/gcam/PixelRect;JLcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    return-object v6
.end method

.method public static IsPlanar(I)Z
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsPlanar(I)Z

    move-result v0

    return v0
.end method

.method public static IsRgb(I)Z
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsRgb(I)Z

    move-result v0

    return v0
.end method

.method public static IsYuv(I)Z
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsYuv(I)Z

    move-result v0

    return v0
.end method

.method public static Lerp(Lcom/google/googlex/gcam/RawVignetteParams;Lcom/google/googlex/gcam/RawVignetteParams;F)Lcom/google/googlex/gcam/RawVignetteParams;
    .locals 8

    .prologue
    .line 465
    new-instance v7, Lcom/google/googlex/gcam/RawVignetteParams;

    invoke-static {p0}, Lcom/google/googlex/gcam/RawVignetteParams;->getCPtr(Lcom/google/googlex/gcam/RawVignetteParams;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/RawVignetteParams;->getCPtr(Lcom/google/googlex/gcam/RawVignetteParams;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->Lerp(JLcom/google/googlex/gcam/RawVignetteParams;JLcom/google/googlex/gcam/RawVignetteParams;F)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/google/googlex/gcam/RawVignetteParams;-><init>(JZ)V

    return-object v7
.end method

.method public static MakeTetWaypoint(FF)Lcom/google/googlex/gcam/TetWaypoint;
    .locals 4

    .prologue
    .line 521
    new-instance v0, Lcom/google/googlex/gcam/TetWaypoint;

    invoke-static {p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->MakeTetWaypoint(FF)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/TetWaypoint;-><init>(JZ)V

    return-object v0
.end method

.method public static PixelRectToFaceInfo(Lcom/google/googlex/gcam/PixelRect;FII)Lcom/google/googlex/gcam/FaceInfo;
    .locals 7

    .prologue
    .line 421
    new-instance v6, Lcom/google/googlex/gcam/FaceInfo;

    invoke-static {p0}, Lcom/google/googlex/gcam/PixelRect;->getCPtr(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectToFaceInfo__SWIG_1(JLcom/google/googlex/gcam/PixelRect;FII)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/google/googlex/gcam/FaceInfo;-><init>(JZ)V

    return-object v6
.end method

.method public static PixelRectToFaceInfo(Lcom/google/googlex/gcam/PixelRect;FIII)Lcom/google/googlex/gcam/FaceInfo;
    .locals 8

    .prologue
    .line 417
    new-instance v7, Lcom/google/googlex/gcam/FaceInfo;

    invoke-static {p0}, Lcom/google/googlex/gcam/PixelRect;->getCPtr(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectToFaceInfo__SWIG_0(JLcom/google/googlex/gcam/PixelRect;FIII)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/google/googlex/gcam/FaceInfo;-><init>(JZ)V

    return-object v7
.end method

.method public static PrintColorTemps(Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;)V
    .locals 2

    .prologue
    .line 449
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PrintColorTemps(J)V

    .line 450
    return-void
.end method

.method public static ReverseRotation(I)I
    .locals 1

    .prologue
    .line 122
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ReverseRotation(I)I

    move-result v0

    return v0
.end method

.method public static ReverseTonemapCurve(Lcom/google/googlex/gcam/Tonemap;)Lcom/google/googlex/gcam/RevTonemap;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/google/googlex/gcam/RevTonemap;

    invoke-static {p0}, Lcom/google/googlex/gcam/Tonemap;->getCPtr(Lcom/google/googlex/gcam/Tonemap;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ReverseTonemapCurve(JLcom/google/googlex/gcam/Tonemap;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/RevTonemap;-><init>(JZ)V

    return-object v0
.end method

.method public static RggbPositions(ILcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;)V
    .locals 18

    .prologue
    .line 405
    invoke-static/range {p1 .. p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v2

    invoke-static/range {p2 .. p2}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v6

    invoke-static/range {p4 .. p4}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v8

    invoke-static/range {p5 .. p5}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v10

    invoke-static/range {p6 .. p6}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v12

    invoke-static/range {p7 .. p7}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v14

    invoke-static/range {p8 .. p8}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v16

    move/from16 v1, p0

    invoke-static/range {v1 .. v17}, Lcom/google/googlex/gcam/GcamModuleJNI;->RggbPositions(IJJJJJJJJ)V

    .line 406
    return-void
.end method

.method public static RotateCoordinates(IIIIILcom/google/googlex/gcam/SWIGTYPE_p_int;Lcom/google/googlex/gcam/SWIGTYPE_p_int;)V
    .locals 10

    .prologue
    .line 130
    invoke-static {p5}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v6

    invoke-static/range {p6 .. p6}, Lcom/google/googlex/gcam/SWIGTYPE_p_int;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_int;)J

    move-result-wide v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->RotateCoordinates(IIIIIJJ)V

    .line 131
    return-void
.end method

.method public static SerializeBurstMetadata(Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)V
    .locals 4

    .prologue
    .line 441
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__vectorT_gcam__FrameMetadata_t;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_std__string;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->SerializeBurstMetadata(JJ)V

    .line 442
    return-void
.end method

.method public static Sharpen(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kChannelContiguous_t;FFLcom/google/googlex/gcam/SharpenParams;Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__Context;)V
    .locals 9

    .prologue
    .line 197
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kChannelContiguous_t;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__ReadWriteTImageViewT_unsigned_char_gcam__kChannelContiguous_t;)J

    move-result-wide v0

    invoke-static {p3}, Lcom/google/googlex/gcam/SharpenParams;->getCPtr(Lcom/google/googlex/gcam/SharpenParams;)J

    move-result-wide v4

    invoke-static {p4}, Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__Context;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_gcam__Context;)J

    move-result-wide v7

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->Sharpen(JFFJLcom/google/googlex/gcam/SharpenParams;J)V

    .line 198
    return-void
.end method

.method public static SmoothValuesU16(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;IIIFZ)V
    .locals 7

    .prologue
    .line 150
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_short;)J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->SmoothValuesU16(JIIIFZ)V

    .line 151
    return-void
.end method

.method public static SmoothValuesU8(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;IIIFZ)V
    .locals 7

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->SmoothValuesU8(JIIIFZ)V

    .line 147
    return-void
.end method

.method public static TenBitRevTonemap(Lcom/google/googlex/gcam/RevTonemap;[I)V
    .locals 2

    .prologue
    .line 158
    invoke-static {p0}, Lcom/google/googlex/gcam/RevTonemap;->getCPtr(Lcom/google/googlex/gcam/RevTonemap;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->TenBitRevTonemap(JLcom/google/googlex/gcam/RevTonemap;[I)V

    .line 159
    return-void
.end method

.method public static TenBitTonemap(Lcom/google/googlex/gcam/Tonemap;[I)V
    .locals 2

    .prologue
    .line 154
    invoke-static {p0}, Lcom/google/googlex/gcam/Tonemap;->getCPtr(Lcom/google/googlex/gcam/Tonemap;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->TenBitTonemap(JLcom/google/googlex/gcam/Tonemap;[I)V

    .line 155
    return-void
.end method

.method public static TextToAeType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 485
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToAeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToBayerPattern(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 389
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToBayerPattern(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToFlashMetadata(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 429
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToFlashMetadata(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToFlashMode(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 425
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToFlashMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToGcamPixelFormat(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToGcamPixelFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToHdrMode(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 481
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToHdrMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToImageRotation(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToImageRotation(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToSceneFlicker(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 437
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToSceneFlicker(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToWhiteBalanceMode(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToWhiteBalanceMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static TextToYuvFormat(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->TextToYuvFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ToText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ToText__SWIG_0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ToYuvFormat(I)I
    .locals 1

    .prologue
    .line 86
    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ToYuvFormat(I)I

    move-result v0

    return v0
.end method

.method public static TrackedMemoryAllocate(J)Lcom/google/googlex/gcam/SWIGTYPE_p_void;
    .locals 4

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->TrackedMemoryAllocate(J)J

    move-result-wide v2

    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlex/gcam/SWIGTYPE_p_void;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/SWIGTYPE_p_void;-><init>(JZ)V

    goto :goto_0
.end method

.method public static TrackedMemoryDeallocate(Lcom/google/googlex/gcam/SWIGTYPE_p_void;)V
    .locals 2

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/googlex/gcam/SWIGTYPE_p_void;->getCPtr(Lcom/google/googlex/gcam/SWIGTYPE_p_void;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->TrackedMemoryDeallocate(J)V

    .line 27
    return-void
.end method

.method public static WriteAeToShotLogData(Lcom/google/googlex/gcam/AeResults;Lcom/google/googlex/gcam/ShotLogData;)V
    .locals 6

    .prologue
    .line 253
    invoke-static {p0}, Lcom/google/googlex/gcam/AeResults;->getCPtr(Lcom/google/googlex/gcam/AeResults;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlex/gcam/ShotLogData;->getCPtr(Lcom/google/googlex/gcam/ShotLogData;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->WriteAeToShotLogData(JLcom/google/googlex/gcam/AeResults;JLcom/google/googlex/gcam/ShotLogData;)V

    .line 254
    return-void
.end method

.method public static WriteRgbToBitmap(Ljava/lang/Object;Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 2

    .prologue
    .line 598
    invoke-static {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->getCPtr(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->WriteRgbToBitmap(Ljava/lang/Object;JLcom/google/googlex/gcam/InterleavedImageU8;)V

    .line 599
    return-void
.end method

.method public static YuvFormatsHaveUvSwapped(II)Z
    .locals 1

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvFormatsHaveUvSwapped(II)Z

    move-result v0

    return v0
.end method

.method public static YuvPipelineOutputGammaPlusTonecurve()Lcom/google/googlex/gcam/Tonemap;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Lcom/google/googlex/gcam/Tonemap;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvPipelineOutputGammaPlusTonecurve()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlex/gcam/Tonemap;-><init>(JZ)V

    return-object v0
.end method

.method public static getGCAM_SAVE_AE()J
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_AE_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_ALIGNMENTS()J
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_ALIGNMENTS_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_ALL_MINUS_INPUT()J
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_ALL_MINUS_INPUT_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_ALL_PLUS_INPUT()J
    .locals 2

    .prologue
    .line 381
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_ALL_PLUS_INPUT_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_BASE()J
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_BASE_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_BASE_DESTRIPE()J
    .locals 2

    .prologue
    .line 361
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_BASE_DESTRIPE_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_COLOR_SAT_VIB()J
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_COLOR_SAT_VIB_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_COMPARISON_IMAGE()J
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_COMPARISON_IMAGE_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_CROPPED()J
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_CROPPED_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_DEHAZED()J
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_DEHAZED_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_DENOISED()J
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_DENOISED_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_DGAIN_WB()J
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_DGAIN_WB_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_FINAL_GAMMA()J
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_FINAL_GAMMA_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_FINAL_OUTPUT()J
    .locals 2

    .prologue
    .line 377
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_FINAL_OUTPUT_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_HDR_FUSED()J
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_HDR_FUSED_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_HDR_HEAT_AFTER()J
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_HDR_HEAT_AFTER_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_HDR_HEAT_BEFORE()J
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_HDR_HEAT_BEFORE_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_HDR_SYNTHETIC_LONG_EXP()J
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_HDR_SYNTHETIC_LONG_EXP_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_HDR_SYNTHETIC_SHORT_EXP()J
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_HDR_SYNTHETIC_SHORT_EXP_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_HEAT()J
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_HEAT_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_INPUT()J
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_INPUT_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_INPUT_METERING()J
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_INPUT_METERING_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_INPUT_PAYLOAD()J
    .locals 2

    .prologue
    .line 345
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_INPUT_PAYLOAD_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_LOW_FREQ_COLOR_XFER()J
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_LOW_FREQ_COLOR_XFER_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_MERGED()J
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_MERGED_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_MERGE_DETAILS()J
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_MERGE_DETAILS_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_NONE()J
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_NONE_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_POSTVIEW()J
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_POSTVIEW_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_SHARPENED()J
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_SHARPENED_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_TEXT()J
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_TEXT_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGCAM_SAVE_TONEMAPPED()J
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GCAM_SAVE_TONEMAPPED_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getKColorTempUnknown()I
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kColorTempUnknown_get()I

    move-result v0

    return v0
.end method

.method public static getKDebugFullMeteringSweepFrameCount()I
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kDebugFullMeteringSweepFrameCount_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultFrameReadoutTimeMs()F
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kDefaultFrameReadoutTimeMs_get()F

    move-result v0

    return v0
.end method

.method public static getKDefaultFullMeteringSweepFrameCount()I
    .locals 1

    .prologue
    .line 505
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kDefaultFullMeteringSweepFrameCount_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultMaxPayloadFrames()I
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kDefaultMaxPayloadFrames_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultMinPayloadFrames()I
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kDefaultMinPayloadFrames_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultPostviewLongestEdge()I
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kDefaultPostviewLongestEdge_get()I

    move-result v0

    return v0
.end method

.method public static getKInitParamsFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInitParamsFilename_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKInvalidBurstId()I
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidBurstId_get()I

    move-result v0

    return v0
.end method

.method public static getKInvalidImageId()J
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidImageId_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getKInvalidMotionScore()F
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidMotionScore_get()F

    move-result v0

    return v0
.end method

.method public static getKMaxFullMeteringSweepFrames()I
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMaxFullMeteringSweepFrames_get()I

    move-result v0

    return v0
.end method

.method public static getKMaxMotionScore()F
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMaxMotionScore_get()F

    move-result v0

    return v0
.end method

.method public static getKMaxOverallGainSlopFactor()F
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMaxOverallGainSlopFactor_get()F

    move-result v0

    return v0
.end method

.method public static getKMaxTetWaypoints()I
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMaxTetWaypoints_get()I

    move-result v0

    return v0
.end method

.method public static getKMaxValidColorTemp()I
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMaxValidColorTemp_get()I

    move-result v0

    return v0
.end method

.method public static getKMinFullMeteringSweepFrames()I
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMinFullMeteringSweepFrames_get()I

    move-result v0

    return v0
.end method

.method public static getKMinMotionScore()F
    .locals 1

    .prologue
    .line 489
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMinMotionScore_get()F

    move-result v0

    return v0
.end method

.method public static getKMinPayloadFrames()I
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMinPayloadFrames_get()I

    move-result v0

    return v0
.end method

.method public static getKMinValidColorTemp()I
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kMinValidColorTemp_get()I

    move-result v0

    return v0
.end method

.method public static getKRawNoiseShapeBins()I
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRawNoiseShapeBins_get()I

    move-result v0

    return v0
.end method

.method public static getKRawPixelMaxValue()I
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRawPixelMaxValue_get()I

    move-result v0

    return v0
.end method

.method public static getKRawSharpenUnsharpMaskFreqs()I
    .locals 1

    .prologue
    .line 537
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRawSharpenUnsharpMaskFreqs_get()I

    move-result v0

    return v0
.end method

.method public static getKRevTonemapMaxValue()I
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRevTonemapMaxValue_get()I

    move-result v0

    return v0
.end method

.method public static getKSensorIdPrimary()I
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kSensorIdPrimary_get()I

    move-result v0

    return v0
.end method

.method public static getKSensorIdSecondary()I
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kSensorIdSecondary_get()I

    move-result v0

    return v0
.end method

.method public static getKSensorTempUnknown()I
    .locals 1

    .prologue
    .line 433
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kSensorTempUnknown_get()I

    move-result v0

    return v0
.end method

.method public static getKShotParamsFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kShotParamsFilename_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKStaticMetadataFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kStaticMetadataFilename_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKThrowOutOneInNBlurryImages()I
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kThrowOutOneInNBlurryImages_get()I

    move-result v0

    return v0
.end method

.method public static getKTonemapMaxValue()I
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kTonemapMaxValue_get()I

    move-result v0

    return v0
.end method

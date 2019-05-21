.class public Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;
.super Ljava/lang/Object;
.source "SummaryWriterSerializer.java"


# instance fields
.field private final exif:Lcom/android/camera/exif/ExifInterface;

.field private final jpegBytes:[B

.field private final size:Lcom/android/camera/util/Size;

.field private final wasReprocessed:Z


# direct methods
.method private constructor <init>(J[BLcom/android/camera/util/Size;ILcom/android/camera/exif/ExifInterface;Z)V
    .locals 1

    .prologue
    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->jpegBytes:[B

    .line 1043
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->size:Lcom/android/camera/util/Size;

    .line 1045
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/android/camera/util/ApiHelper;->sanitizeExifModelMake(Lcom/android/camera/exif/ExifInterface;)V

    .line 1046
    iput-object p6, p0, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 1047
    iput-boolean p7, p0, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->wasReprocessed:Z

    .line 1048
    return-void
.end method

.method public static create$5155MGICCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBQJD5T6AEQ99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCLS6IPHF8LS6IPI9DPQ6ASJ6C5HMAEQQ55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQAE1IMEHBECDNM8QBECT96ASRLDHQ3M___(J[BLcom/android/camera/util/Size;ILcom/android/camera/exif/ExifInterface;Z)Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;
    .locals 10

    .prologue
    .line 1069
    new-instance v1, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;

    const/4 v6, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;-><init>(J[BLcom/android/camera/util/Size;ILcom/android/camera/exif/ExifInterface;Z)V

    return-object v1
.end method

.method public static fromReprocessedImage$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NKIRB1CTIL0SJFF1SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQKDTQ62R23C5O78TBICL96ASRLDHQ50SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NKKS35CT2MSORFCHKMSPQICLPNAR3K7C______(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1084
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 1085
    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v2, v1, [B

    .line 1086
    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1088
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1089
    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    .line 1091
    :goto_0
    new-instance v1, Lcom/android/camera/util/Size;

    .line 1092
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v3

    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v5

    invoke-direct {v1, v3, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/android/camera/util/Size;->rotate(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/util/Size;

    move-result-object v3

    .line 1094
    new-instance v5, Lcom/android/camera/util/ExifUtil;

    invoke-static {v2}, Lcom/android/camera/util/ExifUtil;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .line 1097
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    .line 1098
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    sget-object v6, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 1100
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    .line 1096
    invoke-virtual {v5, v0, v1, v6, v7}, Lcom/android/camera/util/ExifUtil;->populateExif(IILcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/base/Optional;)V

    .line 1103
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v0

    .line 1107
    invoke-virtual {v5}, Lcom/android/camera/util/ExifUtil;->getExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v5

    const/4 v6, 0x1

    .line 1102
    invoke-static/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->create$5155MGICCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBQJD5T6AEQ99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCLS6IPHF8LS6IPI9DPQ6ASJ6C5HMAEQQ55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQAE1IMEHBECDNM8QBECT96ASRLDHQ3M___(J[BLcom/android/camera/util/Size;ILcom/android/camera/exif/ExifInterface;Z)Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;

    move-result-object v0

    return-object v0

    .line 1090
    :cond_0
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    goto :goto_0
.end method


# virtual methods
.method public getExif()Lcom/android/camera/exif/ExifInterface;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->exif:Lcom/android/camera/exif/ExifInterface;

    return-object v0
.end method

.method public getJpegBytes()[B
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->jpegBytes:[B

    return-object v0
.end method

.method public getSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->size:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public wasReprocessed()Z
    .locals 1

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->wasReprocessed:Z

    return v0
.end method

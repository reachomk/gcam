.class public final Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;
.super Ljava/lang/Object;
.source "PreprocessingRequirement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement$PostProcessingType;
    }
.end annotation


# instance fields
.field private final type$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UTBKD5M2UK3ICLO74RR3CLPN6QBECT96ASBLD5P6ARB5DPQ28K3FEDQ50SJFCDIN6SR9DPJL8UBGCKTG____:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;->type$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UTBKD5M2UK3ICLO74RR3CLPN6QBECT96ASBLD5P6ARB5DPQ28K3FEDQ50SJFCDIN6SR9DPJL8UBGCKTG____:I

    .line 33
    return-void
.end method

.method public static forHardwareJpegPipelines()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    sget v1, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement$PostProcessingType;->JPEG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UTBKD5M2UK3ICLO74RR3CLPN6QBECT96ASBLD5P6ARB5DPQ28K3FEDQ50SJFCDIN6SR9DPJL8UBGCKTG____:I

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;-><init>(I)V

    return-object v0
.end method

.method public static forReprocessingPipelines()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    sget v1, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement$PostProcessingType;->REPROCESSING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UTBKD5M2UK3ICLO74RR3CLPN6QBECT96ASBLD5P6ARB5DPQ28K3FEDQ50SJFCDIN6SR9DPJL8UBGCKTG____:I

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;-><init>(I)V

    return-object v0
.end method

.method public static forSoftwareJpegPipelines()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    sget v1, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement$PostProcessingType;->SW_JPEG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UTBKD5M2UK3ICLO74RR3CLPN6QBECT96ASBLD5P6ARB5DPQ28K3FEDQ50SJFCDIN6SR9DPJL8UBGCKTG____:I

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final transformRepeatingRequest()Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 7

    .prologue
    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x2

    .line 81
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;->type$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UTBKD5M2UK3ICLO74RR3CLPN6QBECT96ASBLD5P6ARB5DPQ28K3FEDQ50SJFCDIN6SR9DPJL8UBGCKTG____:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :pswitch_0
    invoke-static {v2}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :pswitch_1
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_2
    new-array v0, v2, [Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 88
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v2, [Lcom/android/camera/one/v2/core/Request$Parameter;

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x3

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x4

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    .line 89
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters([Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 87
    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->combine([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final transformSingleRequest()Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x2

    .line 52
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;->type$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UTBKD5M2UK3ICLO74RR3CLPN6QBECT96ASBLD5P6ARB5DPQ28K3FEDQ50SJFCDIN6SR9DPJL8UBGCKTG____:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :pswitch_0
    invoke-static {v2}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 56
    :pswitch_1
    invoke-static {v2}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_2
    new-array v0, v2, [Lcom/android/camera/one/v2/common/RequestTransformer;

    const/4 v1, 0x5

    .line 65
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v2, [Lcom/android/camera/one/v2/core/Request$Parameter;

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x3

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x4

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    .line 66
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters([Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 64
    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->combine([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

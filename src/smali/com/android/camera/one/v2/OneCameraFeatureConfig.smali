.class public final Lcom/android/camera/one/v2/OneCameraFeatureConfig;
.super Ljava/lang/Object;
.source "OneCameraFeatureConfig.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;,
        Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;
    }
.end annotation


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final captureModeDetector:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusSupportLevel$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

.field private final maxAllowedHdrPlusImageReaderCount:I

.field private final maxAllowedImageReaderCount:I


# direct methods
.method constructor <init>(Lcom/google/common/base/Function;IIIILcom/android/camera/util/ApiHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;",
            ">;",
            "Ljava/lang/Integer;",
            "III",
            "Lcom/android/camera/util/ApiHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->captureModeDetector:Lcom/google/common/base/Function;

    .line 89
    iput p2, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->hdrPlusSupportLevel$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    .line 90
    iput p3, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->maxAllowedImageReaderCount:I

    .line 92
    iput p5, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->maxAllowedHdrPlusImageReaderCount:I

    .line 93
    iput-object p6, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 94
    return-void
.end method


# virtual methods
.method public final getCaptureSupportLevel(Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->captureModeDetector:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    return-object v0
.end method

.method public final getHdrPlusSupportLevel$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHF9TN6AGR1DLIN4OA6CLGN8TBICL1MURJ6D5JI8I34E986OTBJADQN0S3FE9Q4OPBMCLM3M___(Lcom/android/camera/one/OneCamera$Facing;)I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 113
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 114
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 115
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 116
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 117
    :goto_0
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v1, :cond_3

    .line 118
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->hdrPlusSupportLevel$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    .line 120
    :goto_1
    return v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_2
    sget v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    goto :goto_1

    .line 120
    :cond_3
    iget v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->hdrPlusSupportLevel$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    goto :goto_1
.end method

.method public final getMaxAllowedHdrPlusImageReaderCount()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->maxAllowedHdrPlusImageReaderCount:I

    return v0
.end method

.method public final getMaxAllowedImageReaderCount()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->maxAllowedImageReaderCount:I

    return v0
.end method

.method public final getReprocessingImageReaderWriterCount()I
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 163
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 169
    goto :goto_0

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 172
    goto :goto_0
.end method

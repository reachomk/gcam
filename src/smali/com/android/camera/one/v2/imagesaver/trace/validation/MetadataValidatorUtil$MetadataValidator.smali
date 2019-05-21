.class public final Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;
.super Ljava/lang/Object;
.source "MetadataValidatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataValidator"
.end annotation


# instance fields
.field private final characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final trace:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

.field private final validator:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 44
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->validator:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;

    .line 45
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->trace:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    .line 46
    return-void
.end method

.method private final processingAppliedExactlyOnce(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;TT;",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 149
    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->validator:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;

    .line 151
    invoke-virtual {v5}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forReprocessingMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkImageCount(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 155
    :goto_0
    if-nez v2, :cond_3

    .line 157
    invoke-virtual {v5}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forInputImageMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v3

    .line 158
    invoke-interface {p3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkKeyMatchesAny(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v1

    .line 161
    :goto_1
    if-eqz v2, :cond_4

    .line 163
    invoke-virtual {v5}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forInputImageMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkKeyMatches(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    invoke-virtual {v5}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forReprocessingMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v3

    .line 165
    invoke-interface {p4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkKeyMatchesAny(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 168
    :goto_2
    if-eqz v2, :cond_5

    .line 170
    invoke-virtual {v5}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forInputImageMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v2

    .line 171
    invoke-interface {p3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, p1, v6}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkKeyMatchesAny(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 172
    invoke-virtual {v5}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forReprocessingMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkKeyMatches(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    .line 174
    :goto_3
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 151
    goto :goto_0

    :cond_3
    move v4, v0

    .line 158
    goto :goto_1

    :cond_4
    move v3, v0

    .line 165
    goto :goto_2

    :cond_5
    move v2, v0

    .line 172
    goto :goto_3
.end method


# virtual methods
.method public final colorCorrectionAberrationAppliedExactlyOnce()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 98
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x0

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 101
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 104
    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 98
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->processingAppliedExactlyOnce(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final edgeEnhancementAppliedExactlyOnce()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 110
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x0

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 110
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->processingAppliedExactlyOnce(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final flashFired()Z
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->validator:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;

    .line 63
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forInputImageMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v2, 0x3

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkKeyMatches(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z

    move-result v0

    .line 62
    return v0
.end method

.method public final flashOff()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->validator:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;

    .line 69
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forInputImageMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x3

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x4

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 70
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkKeyMatchesAny(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public final focusIsConverged()Z
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->validator:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;

    .line 78
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->forInputImageMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    new-array v2, v8, [Ljava/lang/Integer;

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const/4 v4, 0x6

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 85
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;->checkKeyMatchesAny(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result v0

    .line 77
    return v0
.end method

.method public final isSingleImage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->trace:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->getInputImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final noiseReductionAppliedExactlyOnce()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 118
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x0

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 118
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->processingAppliedExactlyOnce(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final varargs processingMethodIsOneOf([Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;)Z
    .locals 2

    .prologue
    .line 54
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->trace:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->getProcessingMethod()Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final varargs supportLevelIsOneOf([Ljava/lang/Integer;)Z
    .locals 3

    .prologue
    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 50
    invoke-interface {v1, v2}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 49
    return v0
.end method

.class final Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$3;
.super Ljava/lang/Object;
.source "ValidationModule.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/trace/validation/FlowValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$validatorUtil:Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$3;->val$validatorUtil:Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final validate(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$3;->val$validatorUtil:Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;->forTrace(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    const-string v2, "flash"

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "single image"

    .line 77
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->isSingleImage()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "limited or full"

    new-array v3, v7, [Ljava/lang/Integer;

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 80
    invoke-virtual {v0, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->supportLevelIsOneOf([Ljava/lang/Integer;)Z

    move-result v3

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "hw jpeg, sw jpeg, reprocessing"

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    sget-object v4, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->HW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->SW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->REPROCESSING:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v4, v3, v7

    .line 85
    invoke-virtual {v0, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->processingMethodIsOneOf([Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;)Z

    move-result v3

    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "flash fired"

    .line 89
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->flashFired()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "edge"

    .line 90
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->edgeEnhancementAppliedExactlyOnce()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "noise reduction"

    .line 91
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->noiseReductionAppliedExactlyOnce()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "aberration"

    .line 92
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->colorCorrectionAberrationAppliedExactlyOnce()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "af converged"

    .line 93
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->focusIsConverged()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->build()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;

    move-result-object v0

    .line 76
    return-object v0
.end method

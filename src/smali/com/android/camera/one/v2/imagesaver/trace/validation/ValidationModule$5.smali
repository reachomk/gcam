.class final Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$5;
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
    .line 135
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$5;->val$validatorUtil:Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final validate(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    const-string v1, "npf reprocessing"

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$5;->val$validatorUtil:Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;->forTrace(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    const-string v2, "npf reprocessing"

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "single image"

    .line 143
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->isSingleImage()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "limited or full"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->supportLevelIsOneOf([Ljava/lang/Integer;)Z

    move-result v3

    .line 144
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "processing method"

    new-array v3, v6, [Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    sget-object v4, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->NPF_REPROCESSING:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v4, v3, v5

    .line 151
    invoke-virtual {v0, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->processingMethodIsOneOf([Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;)Z

    move-result v3

    .line 149
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v1

    const-string v2, "flash off"

    .line 152
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->flashOff()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->build()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;

    move-result-object v0

    .line 142
    return-object v0
.end method

.class final Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$2;
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
    .line 51
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$2;->val$validatorUtil:Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final validate(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$2;->val$validatorUtil:Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;->forTrace(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    const-string v2, "legacy"

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "legacy"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 58
    invoke-virtual {v0, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;->supportLevelIsOneOf([Ljava/lang/Integer;)Z

    move-result v0

    .line 56
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->build()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;

    move-result-object v0

    .line 55
    return-object v0
.end method

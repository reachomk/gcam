.class Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$1;
.super Ljava/lang/Object;
.source "ValidationHelper.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/trace/validation/FlowValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/trace/validation/FlowValidator;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;
    .locals 3

    .prologue
    .line 1040
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "no-images"

    .line 1041
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->getInputImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;

    move-result-object v0

    .line 1042
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->build()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;

    move-result-object v0

    .line 1040
    return-object v0
.end method

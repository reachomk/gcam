.class final Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;
.super Ljava/lang/Object;
.source "ValidationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;
    }
.end annotation


# instance fields
.field private final trace:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->trace:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    .line 24
    return-void
.end method


# virtual methods
.method public final forInputImageMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->trace:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->getInputImages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;-><init>(Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;Ljava/util/List;)V

    return-object v0
.end method

.method public final forReprocessingMetadata()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;->trace:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->getReprocessingMetadata()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper$MetadataValidationHelper;-><init>(Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;Ljava/util/List;)V

    return-object v0
.end method

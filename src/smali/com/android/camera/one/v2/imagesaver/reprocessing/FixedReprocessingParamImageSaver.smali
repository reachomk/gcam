.class public final Lcom/android/camera/one/v2/imagesaver/reprocessing/FixedReprocessingParamImageSaver;
.super Lcom/android/camera/one/v2/imagesaver/InputConvertingAsyncSingleImageSaver;
.source "FixedReprocessingParamImageSaver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/one/v2/imagesaver/InputConvertingAsyncSingleImageSaver",
        "<",
        "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
        "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;",
        "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field private final reprocessingParameters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagesaver/InputConvertingAsyncSingleImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V

    .line 29
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/FixedReprocessingParamImageSaver;->reprocessingParameters:Ljava/util/Collection;

    .line 30
    return-void
.end method


# virtual methods
.method protected final synthetic convertInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 18
    check-cast p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 1034
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 1036
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Invalid image format."

    .line 1035
    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 1038
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v2, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1132
    new-instance v3, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;

    invoke-direct {v3, v0, v2, v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;B)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/FixedReprocessingParamImageSaver;->reprocessingParameters:Ljava/util/Collection;

    .line 1039
    invoke-virtual {v3, v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->withParameters(Ljava/util/Collection;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 1040
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->withRotation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->build()Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    move-result-object v0

    .line 18
    return-object v0

    :cond_0
    move v0, v1

    .line 1036
    goto :goto_0
.end method

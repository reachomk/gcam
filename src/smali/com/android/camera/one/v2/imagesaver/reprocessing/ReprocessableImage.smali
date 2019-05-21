.class public final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;
.super Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;
.source "ReprocessableImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;
    }
.end annotation


# instance fields
.field public final reprocessingParameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    .line 40
    invoke-static {p4}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;->reprocessingParameters:Ljava/util/Set;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;Ljava/util/Collection;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;Ljava/util/Collection;)V

    return-void
.end method

.method public static forImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;B)V

    return-object v0
.end method

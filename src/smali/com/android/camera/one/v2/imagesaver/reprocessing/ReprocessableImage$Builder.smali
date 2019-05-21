.class public final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;
.super Ljava/lang/Object;
.source "ReprocessableImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final image:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

.field private final metadata:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final reprocessingParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private rotation:Lcom/google/android/apps/camera/util/layout/Orientation;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->image:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 54
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->reprocessingParameters:Ljava/util/Map;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;
    .locals 6

    .prologue
    .line 108
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->image:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->reprocessingParameters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;Ljava/util/Collection;B)V

    return-object v0
.end method

.method public final withParameters(Ljava/util/Collection;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;)",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request$Parameter;

    .line 84
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->reprocessingParameters:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/Request$Parameter;->getKey()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    return-object p0
.end method

.method public final withRotation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            ")",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;"
        }
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 99
    return-object p0
.end method

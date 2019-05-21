.class public final Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;
.super Ljava/lang/Object;
.source "ImageFilterImageSelector.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final imageFilter:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;->imageFilter:Ljavax/inject/Provider;

    .line 44
    return-void
.end method


# virtual methods
.method public final selectBestImage(Ljava/util/List;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v5, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v5}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 56
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    .line 58
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v3, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 62
    invoke-virtual {v0, v6}, Lcom/google/android/apps/camera/async/CloseableList;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {v5, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;->imageFilter:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageFilter;

    const/4 v3, 0x0

    .line 67
    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageFilter;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    move v4, v1

    .line 68
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 69
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 71
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 74
    new-instance v8, Lcom/android/camera/processing/imagebackend/NullSessionBase;

    invoke-direct {v8}, Lcom/android/camera/processing/imagebackend/NullSessionBase;-><init>()V

    .line 75
    new-instance v9, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    invoke-direct {v9, v1, p2, v2}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 76
    invoke-interface {v0, v9, v8}, Lcom/android/camera/processing/imagebackend/ImageFilter;->submit(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 78
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageFilter;->close()V

    .line 80
    :cond_3
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$1;

    invoke-direct {v0, p1}, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$1;-><init>(Ljava/util/List;)V

    .line 81
    invoke-static {v7, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$2;

    invoke-direct {v1, v5}, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$2;-><init>(Lcom/google/android/apps/camera/async/Lifetime;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_5

    :try_start_2
    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageFilter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_4
    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageFilter;->close()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

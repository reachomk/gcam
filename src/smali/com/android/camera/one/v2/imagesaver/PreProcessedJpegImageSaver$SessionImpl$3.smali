.class final Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;
.super Ljava/lang/Object;
.source "PreProcessedJpegImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/Functions;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->access$300(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Failed to generate thumbnails"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 290
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/Functions;

    .line 1293
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Functions;->getFilmstripThumbnail()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Functions;->getFilmstripThumbnail()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$1;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;)V

    .line 1295
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 1309
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Functions;->getRoundedThumbnail()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Functions;->getRoundedThumbnail()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$2;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;)V

    .line 1310
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 290
    :cond_1
    return-void
.end method

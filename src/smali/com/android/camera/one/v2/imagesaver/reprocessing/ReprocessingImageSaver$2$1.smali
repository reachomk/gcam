.class final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;
.super Ljava/lang/Object;
.source "ReprocessingImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2USJ5E1P6UOR5EDPMIRJ75T96AS3IDTHMASRJD5N6EIBDC5JMAKR1EPIN491I7C______:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;

.field private synthetic val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2USJ5E1P6UOR5EDPMIRJ75T96AS3IDTHMASRJD5N6EIBDC5JMAKR1EPIN491I7C______:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;->val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2USJ5E1P6UOR5EDPMIRJ75T96AS3IDTHMASRJD5N6EIBDC5JMAKR1EPIN491I7C______:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2USJ5E1P6UOR5EDPMIRJ75T96AS3IDTHMASRJD5N6EIBDC5JMAKR1EPIN491I7C______:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;->val$image:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;->val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final neverExecute()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v1, "Reprocessing saver was closed"

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;->val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 198
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$5;
.super Ljava/lang/Object;
.source "ReprocessingImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->submitReprocessingRequest(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

.field private synthetic val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$5;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$5;->val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$5;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$1200(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 329
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$5;->val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 330
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.class final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4$1;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "ReprocessingImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->call()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4$1;->this$1:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4$1;->this$1:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;->val$cppDoneFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

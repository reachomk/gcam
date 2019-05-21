.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;
.super Ljava/lang/Object;
.source "ImageDistributorImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->distributeImage(Ljava/util/SortedSet;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

.field private synthetic val$failedImageId:Lcom/android/camera/one/v2/core/ImageId;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;->val$failedImageId:Lcom/android/camera/one/v2/core/ImageId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;->val$failedImageId:Lcom/android/camera/one/v2/core/ImageId;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->access$600(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/android/camera/one/v2/core/ImageId;)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MissingImage;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;->val$failedImageId:Lcom/android/camera/one/v2/core/ImageId;

    .line 329
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/ImageId;->getTimestampNs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MissingImage;-><init>(J)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$3;->val$failedImageId:Lcom/android/camera/one/v2/core/ImageId;

    .line 328
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->access$700(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/one/v2/core/ImageId;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

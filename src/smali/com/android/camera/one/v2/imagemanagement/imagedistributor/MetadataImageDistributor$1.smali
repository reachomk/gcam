.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor$1;
.super Ljava/lang/Object;
.source "MetadataImageDistributor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor;->addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$imageRoute:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

.field private synthetic val$metadataPool:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor$1;->val$imageRoute:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor$1;->val$metadataPool:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addOrCloseImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor$1;->val$imageRoute:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor$1;->val$metadataPool:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;

    .line 40
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 38
    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;->addOrCloseImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor$1;->val$imageRoute:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;->isClosed()Z

    move-result v0

    return v0
.end method

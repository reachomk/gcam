.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;
.super Ljava/lang/Object;
.source "UniqueMetadataImageDistributor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor;->addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$idSequence:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

.field private synthetic val$imageRoute:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;->val$idSequence:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;->val$imageRoute:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

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
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;->val$idSequence:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->peek(Ljava/lang/Long;)Lcom/android/camera/one/v2/core/ImageId;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/ImageId;->getTimestampNs()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;->val$idSequence:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->remove(Lcom/android/camera/one/v2/core/ImageId;)Z

    .line 49
    sget-object v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;->IMAGE_ID:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->add(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;->val$imageRoute:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;->addOrCloseImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;->val$imageRoute:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;->isClosed()Z

    move-result v0

    return v0
.end method

.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor;
.super Ljava/lang/Object;
.source "UniqueMetadataImageDistributor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor;->delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    .line 25
    return-void
.end method


# virtual methods
.method public final addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor;->delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;

    invoke-direct {v2, v0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)V

    .line 31
    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;->addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v1

    .line 60
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/camera/one/v2/core/ResponseListener;

    const/4 v3, 0x0

    .line 61
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule;->forImageIds(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 60
    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameServerModule;->forListeners([Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor;
.super Ljava/lang/Object;
.source "MetadataImageDistributor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

.field private final metadataPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor;->metadataPoolProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor;->delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    .line 26
    return-void
.end method


# virtual methods
.method public final addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor;->metadataPoolProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;

    .line 31
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule;->forFinalMetadata(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor;->delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor$1;

    invoke-direct {v3, p1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;)V

    .line 34
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;->addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    .line 49
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/camera/one/v2/core/ResponseListener;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameServerModule;->forListeners([Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    return-object v0
.end method

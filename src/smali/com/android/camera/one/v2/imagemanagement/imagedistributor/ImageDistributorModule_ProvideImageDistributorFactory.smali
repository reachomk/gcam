.class public final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;
.super Ljava/lang/Object;
.source "ImageDistributorModule_ProvideImageDistributorFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final handlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final imageReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataPoolsProvider:Ljavax/inject/Provider;
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->metadataPoolsProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->imageReaderProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 12
    .line 1045
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->metadataPoolsProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->imageReaderProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/HandlerFactory;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/Logger$Factory;

    .line 2024
    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-direct {v4, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    .line 2025
    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 2026
    const-string v2, "ImageDistributor"

    invoke-static {v0, v2}, Lcom/google/android/apps/camera/async/HandlerFactory;->create(Lcom/google/android/apps/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    .line 2027
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorOnImageAvailableListener;

    invoke-direct {v2, v4}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorOnImageAvailableListener;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->setOnImageAvailableListener(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2029
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor;

    invoke-direct {v1, v3, v4}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataImageDistributor;-><init>(Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/UniqueMetadataImageDistributor;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;)V

    .line 1046
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1045
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    .line 12
    return-object v0
.end method

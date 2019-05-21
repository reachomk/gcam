.class public final Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;
.super Ljava/lang/Object;
.source "ImageReaderImageSource2_Factory.java"

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
.field private final imageDistributorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;->imageReaderProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;->imageDistributorProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    .line 1032
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;->imageReaderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;->imageDistributorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;-><init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;)V

    .line 10
    return-object v3
.end method

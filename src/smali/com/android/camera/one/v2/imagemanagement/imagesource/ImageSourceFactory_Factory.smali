.class public final Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory_Factory;
.super Ljava/lang/Object;
.source "ImageSourceFactory_Factory.java"

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
.field private final imageReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedMemoryPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory_Factory;->sharedMemoryPoolProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory_Factory;->imageReaderFactoryProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 1026
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory_Factory;->sharedMemoryPoolProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory_Factory;->imageReaderFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;)V

    .line 9
    return-object v2
.end method

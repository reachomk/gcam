.class public final Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "ImageIntentAppStatechartInitializer_Factory.java"

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
.field private final cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;",
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
            "Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer_Factory;->imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer_Factory;->cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 7
    .line 1026
    new-instance v2, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;

    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer_Factory;->imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1027
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer_Factory;->cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;)V

    .line 7
    return-object v2
.end method

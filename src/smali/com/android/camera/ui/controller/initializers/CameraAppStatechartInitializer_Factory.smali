.class public final Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "CameraAppStatechartInitializer_Factory.java"

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
.field private final camcorderStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final captureStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;",
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
            "Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;->captureStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;->cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;->camcorderStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 7
    .line 1032
    new-instance v3, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;

    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;->captureStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;->cameraDeviceStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer_Factory;->camcorderStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;)V

    .line 7
    return-object v3
.end method

.class public final Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;
.super Ljava/lang/Object;
.source "McdlOneCameraOpenerImpl_Factory.java"

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
.field private final appLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final featureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->oneCameraSelectorProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->featureConfigProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 44
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 11
    .line 1048
    new-instance v0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/lifetime/AppLifetime;

    iget-object v2, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->oneCameraSelectorProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/OneCameraSelector;

    iget-object v3, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->featureConfigProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iget-object v4, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/OneCameraManager;

    iget-object v5, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/device/CameraDeviceManager;

    iget-object v6, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/debug/trace/Trace;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;-><init>(Lcom/android/camera/util/lifetime/AppLifetime;Lcom/android/camera/one/v2/OneCameraSelector;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/debug/trace/Trace;)V

    .line 11
    return-object v0
.end method

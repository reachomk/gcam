.class public final Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;
.super Ljava/lang/Object;
.source "CameraDeviceManagerV2Impl_Factory.java"

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
.field private final activeCameraDeviceTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/ActiveCameraDeviceTracker;",
            ">;"
        }
    .end annotation
.end field

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

.field private final cameraDeviceOpenerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceOpenerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final fatalErrorHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceOpenerFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/ActiveCameraDeviceTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->cameraDeviceOpenerFactoryProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->cameraHandlerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->activeCameraDeviceTrackerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 50
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 12
    .line 1054
    new-instance v0, Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->cameraDeviceOpenerFactoryProvider:Ljavax/inject/Provider;

    .line 1055
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/device/CameraDeviceOpenerFactory;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->cameraHandlerProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/error/FatalErrorHandler;

    iget-object v4, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->activeCameraDeviceTrackerProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v5, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/lifetime/AppLifetime;

    iget-object v6, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/debug/trace/Trace;

    iget-object v7, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/debug/Logger$Factory;

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;-><init>(Lcom/android/camera/device/CameraDeviceOpenerFactory;Landroid/os/Handler;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/device/ActiveCameraDeviceTracker;Lcom/android/camera/util/lifetime/AppLifetime;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;)V

    .line 12
    return-object v0
.end method

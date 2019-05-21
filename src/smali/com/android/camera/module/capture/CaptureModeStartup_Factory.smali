.class public final Lcom/android/camera/module/capture/CaptureModeStartup_Factory;
.super Ljava/lang/Object;
.source "CaptureModeStartup_Factory.java"

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
.field private final backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
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

.field private final captureOneCameraCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureOneCameraCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final futureOneCameraProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;>;"
        }
    .end annotation
.end field

.field private final futureViewfinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final startupConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/OneModuleConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final startupContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManagerImpl;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManagerImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/OneModuleConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureOneCameraCreator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->startupContextProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->startupConfigProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->futureViewfinderProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->futureOneCameraProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p7, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->captureOneCameraCreatorProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p8, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 60
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 17
    .line 1064
    new-instance v0, Lcom/android/camera/module/capture/CaptureModeStartup;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/device/CameraDeviceManager;

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->startupContextProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/advice/AdviceManagerImpl;

    iget-object v4, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->startupConfigProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/OneModuleConfig;

    iget-object v5, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->futureViewfinderProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v6, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->futureOneCameraProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v7, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->captureOneCameraCreatorProvider:Ljavax/inject/Provider;

    .line 1071
    invoke-static {v7}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/capture/CaptureModeStartup_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1072
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/debug/trace/Trace;

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/module/capture/CaptureModeStartup;-><init>(Lcom/android/camera/device/CameraDeviceManager;Ljava/util/concurrent/Executor;Lcom/android/camera/advice/AdviceManagerImpl;Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Ldagger/Lazy;Lcom/android/camera/debug/trace/Trace;)V

    .line 17
    return-object v0
.end method

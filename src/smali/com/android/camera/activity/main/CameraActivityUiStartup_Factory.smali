.class public final Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;
.super Ljava/lang/Object;
.source "CameraActivityUiStartup_Factory.java"

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
.field private final activityStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/CameraActivityStartup;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CameraActivityControllerInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final captureIndicatorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
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

.field private final modeUiStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Initializer;",
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
            "Lcom/android/camera/activity/main/CameraActivityStartup;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Initializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CameraActivityControllerInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/UncaughtExceptionHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->activityStartupProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->modeUiStartupProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->cameraActivityControllerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->exceptionHandlerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p8, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 57
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 14
    .line 1061
    new-instance v0, Lcom/android/camera/activity/main/CameraActivityUiStartup;

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->activityStartupProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->modeUiStartupProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->cameraActivityControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/debug/Logger$Factory;

    iget-object v6, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->exceptionHandlerProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/error/UncaughtExceptionHandler;

    iget-object v7, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/debug/trace/Trace;

    iget-object v8, p0, Lcom/android/camera/activity/main/CameraActivityUiStartup_Factory;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/activity/main/CameraActivityUiStartup;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/Executor;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/error/UncaughtExceptionHandler;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;)V

    .line 14
    return-object v0
.end method

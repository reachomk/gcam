.class public final Lcom/android/camera/activity/main/CameraActivityStartup;
.super Ljava/lang/Object;
.source "CameraActivityStartup.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Initializer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraActivityBehaviors:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dcimFolderStartTask:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionHandler:Lcom/android/camera/error/UncaughtExceptionHandler;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final modeStartupTask:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Initializer;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionsStartupTask:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsStartTask;",
            ">;"
        }
    .end annotation
.end field

.field private final prewarmTimeout:Lcom/google/android/apps/camera/async/Timeout;

.field private startupFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final waitForCameraDevicesTask:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/WaitForCameraDevices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "ActivityStartup"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/activity/main/CameraActivityStartup;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/camera/async/Timeout;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/Executor;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/error/UncaughtExceptionHandler;Lcom/android/camera/debug/trace/Trace;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Timeout;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/WaitForCameraDevices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsStartTask;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DcimFolderStartTask;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Initializer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/error/UncaughtExceptionHandler;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->prewarmTimeout:Lcom/google/android/apps/camera/async/Timeout;

    .line 60
    iput-object p2, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->waitForCameraDevicesTask:Ljavax/inject/Provider;

    .line 61
    iput-object p3, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->permissionsStartupTask:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->dcimFolderStartTask:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->modeStartupTask:Ljavax/inject/Provider;

    .line 64
    iput-object p5, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->cameraActivityBehaviors:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->executor:Ljava/util/concurrent/Executor;

    .line 66
    iput-object p9, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->exceptionHandler:Lcom/android/camera/error/UncaughtExceptionHandler;

    .line 67
    iput-object p10, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    sget-object v0, Lcom/android/camera/activity/main/CameraActivityStartup;->TAG:Ljava/lang/String;

    invoke-interface {p8, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->log:Lcom/android/camera/debug/Logger;

    .line 71
    return-void
.end method


# virtual methods
.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->startupFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 94
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "ActivityStartup"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->prewarmTimeout:Lcom/google/android/apps/camera/async/Timeout;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Timeout;->cancel()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->executor:Ljava/util/concurrent/Executor;

    .line 83
    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->with(Ljava/util/concurrent/Executor;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->exceptionHandler:Lcom/android/camera/error/UncaughtExceptionHandler;

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/camera/async/AsyncInitializationBuilder;->withExceptionHandler(Lcom/android/camera/error/UncaughtExceptionHandler;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/camera/async/AsyncInitializationBuilder;->withTrace(Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->log:Lcom/android/camera/debug/Logger;

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/camera/async/AsyncInitializationBuilder;->withLogger(Lcom/android/camera/debug/Logger;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->permissionsStartupTask:Ljavax/inject/Provider;

    const-string v2, "PermissionsStartup"

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/AsyncInitializationBuilder;->then(Ljavax/inject/Provider;Ljava/lang/String;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->dcimFolderStartTask:Ljavax/inject/Provider;

    const-string v2, "DcimFolderStart"

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/AsyncInitializationBuilder;->then(Ljavax/inject/Provider;Ljava/lang/String;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->waitForCameraDevicesTask:Ljavax/inject/Provider;

    const-string v2, "WaitForCameraDevices"

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/AsyncInitializationBuilder;->then(Ljavax/inject/Provider;Ljava/lang/String;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->cameraActivityBehaviors:Ljavax/inject/Provider;

    const-string v2, "ActivityBehaviors"

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/AsyncInitializationBuilder;->thenStartAll(Ljavax/inject/Provider;Ljava/lang/String;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->modeStartupTask:Ljavax/inject/Provider;

    const-string v2, "ModeStartup"

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/AsyncInitializationBuilder;->then(Ljavax/inject/Provider;Ljava/lang/String;)Lcom/android/camera/async/AsyncInitializationBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->startupFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 93
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 94
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityStartup;->startupFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0
.end method

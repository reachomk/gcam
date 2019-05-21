.class public final Lcom/android/camera/app/CameraActivityControllerInitializer;
.super Lcom/android/camera/behavior/ForegroundInitializer;
.source "CameraActivityControllerInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/CameraActivityControllerInitializer$InitializeOnStart;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

.field private final cameraActivityController:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/AppController;",
            ">;"
        }
    .end annotation
.end field

.field private isInitialized:Z

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "CamActvtyCtrInit"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/app/CameraActivityControllerInitializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/debug/trace/Trace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/AppController;",
            ">;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/behavior/ForegroundInitializer;-><init>(Lcom/android/camera/util/lifetime/ActivityLifetime;Ljava/util/concurrent/Executor;)V

    .line 35
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->cameraActivityController:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 37
    iput-object p3, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->isInitialized:Z

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/app/CameraActivityControllerInitializer;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerInitializer;->initialize()Z

    move-result v0

    return v0
.end method

.method private final initialize()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraActivityControllerInitializer#initialize"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->cameraActivityController:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/AppController;

    .line 61
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "CameraActivityController.get()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->isInitialized:Z

    .line 63
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraActivityController.initialize()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 65
    iget-boolean v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->isInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method protected final initializeOnce()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerInitializer;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/android/camera/app/CameraActivityControllerInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Postponing controller initialization to onStart"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    new-instance v1, Lcom/android/camera/app/CameraActivityControllerInitializer$InitializeOnStart;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/app/CameraActivityControllerInitializer$InitializeOnStart;-><init>(Lcom/android/camera/app/CameraActivityControllerInitializer;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 53
    :cond_0
    return-void
.end method

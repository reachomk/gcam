.class final Lcom/android/camera/app/CameraAppStartup;
.super Ljava/lang/Object;
.source "CameraAppStartup.java"


# instance fields
.field private final cacheCameraInfoBehavior:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CacheCameraInfoBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private final captureIndicatorBehavior:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final hdrPlusPrewarmBehavior:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CacheCameraInfoBehavior;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/app/CameraAppStartup;->executor:Ljava/util/concurrent/Executor;

    .line 27
    iput-object p2, p0, Lcom/android/camera/app/CameraAppStartup;->hdrPlusPrewarmBehavior:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/android/camera/app/CameraAppStartup;->captureIndicatorBehavior:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/app/CameraAppStartup;->cacheCameraInfoBehavior:Ljavax/inject/Provider;

    .line 30
    return-void
.end method


# virtual methods
.method public final startAsync()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/app/CameraAppStartup;->hdrPlusPrewarmBehavior:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppStartup;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/android/camera/behavior/Behaviors;->startAsync(Ljavax/inject/Provider;Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/app/CameraAppStartup;->captureIndicatorBehavior:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppStartup;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/android/camera/behavior/Behaviors;->startAsync(Ljavax/inject/Provider;Ljava/util/concurrent/Executor;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/app/CameraAppStartup;->cacheCameraInfoBehavior:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppStartup;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/android/camera/behavior/Behaviors;->startAsync(Ljavax/inject/Provider;Ljava/util/concurrent/Executor;)V

    .line 36
    return-void
.end method

.class public final Lcom/android/camera/app/CameraAppStartup_Factory;
.super Ljava/lang/Object;
.source "CameraAppStartup_Factory.java"

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
.field private final cacheCameraInfoBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CacheCameraInfoBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private final captureIndicatorBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
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

.field private final hdrPlusPrewarmBehaviorProvider:Ljavax/inject/Provider;
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/app/CameraAppStartup_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/camera/app/CameraAppStartup_Factory;->hdrPlusPrewarmBehaviorProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/camera/app/CameraAppStartup_Factory;->cacheCameraInfoBehaviorProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/android/camera/app/CameraAppStartup_Factory;->captureIndicatorBehaviorProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 10
    .line 1037
    new-instance v1, Lcom/android/camera/app/CameraAppStartup;

    iget-object v0, p0, Lcom/android/camera/app/CameraAppStartup_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/camera/app/CameraAppStartup_Factory;->hdrPlusPrewarmBehaviorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/app/CameraAppStartup_Factory;->cacheCameraInfoBehaviorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/app/CameraAppStartup_Factory;->captureIndicatorBehaviorProvider:Ljavax/inject/Provider;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/camera/app/CameraAppStartup;-><init>(Ljava/util/concurrent/Executor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 10
    return-object v1
.end method

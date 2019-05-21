.class public final Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;
.super Ljava/lang/Object;
.source "CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory.java"

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
.field private final activityLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
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
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;->cameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1037
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/camera/activity/main/CameraActivityModule_ProvideCameraActivityLifecycleLoggingBehaviorFactory;->cameraActivityLifecycleLoggingBehaviorProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;

    .line 2035
    invoke-static {v0, v1, v2}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 2037
    new-instance v0, Lcom/android/camera/activity/main/CameraActivityModule$1;

    invoke-direct {v0, v2}, Lcom/android/camera/activity/main/CameraActivityModule$1;-><init>(Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;)V

    invoke-static {v0}, Lcom/android/camera/behavior/Behaviors;->of(Ljava/lang/Runnable;)Lcom/android/camera/behavior/Behavior;

    move-result-object v0

    .line 1038
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1037
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/behavior/Behavior;

    .line 11
    return-object v0
.end method

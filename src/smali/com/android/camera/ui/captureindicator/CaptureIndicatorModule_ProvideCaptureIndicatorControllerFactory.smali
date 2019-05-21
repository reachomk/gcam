.class public final Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;
.super Ljava/lang/Object;
.source "CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory.java"

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
            "Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final isSecureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
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

.field private final module:Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;

.field private final secureImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->module:Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule;

    .line 35
    iput-object p2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->isSecureProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->defaultImplProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->secureImplProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 44
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 10
    .line 1048
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->isSecureProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->defaultImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->secureImplProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    iget-object v1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorModule_ProvideCaptureIndicatorControllerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/MainThread;

    .line 2026
    if-eqz v2, :cond_0

    .line 2027
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;

    .line 2028
    invoke-static {v1, v0, v2}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 1049
    :goto_0
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1048
    invoke-static {v2, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    .line 10
    return-object v0

    .line 2031
    :cond_0
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

    .line 2032
    invoke-static {v1, v0, v2}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    goto :goto_0
.end method

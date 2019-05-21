.class public final Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;
.super Ljava/lang/Object;
.source "SelfieFlashModule_ProvideSelfieFlashControllerImplFactory.java"

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

.field private final activityLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
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

.field private final module:Lcom/android/camera/selfieflash/SelfieFlashModule;

.field private final resProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private final windowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/WindowBrightness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/selfieflash/SelfieFlashModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/selfieflash/SelfieFlashModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/WindowBrightness;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->module:Lcom/android/camera/selfieflash/SelfieFlashModule;

    .line 46
    iput-object p2, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->windowProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p8, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->resProvider:Ljavax/inject/Provider;

    .line 59
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 15
    .line 1063
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/lifetime/ActivityLifetime;

    iget-object v2, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/views/CameraUi;

    iget-object v3, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v4, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/settings/Settings;

    iget-object v5, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->windowProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/WindowBrightness;

    iget-object v6, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerImplFactory;->resProvider:Ljavax/inject/Provider;

    .line 1071
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    .line 1064
    invoke-static/range {v0 .. v6}, Lcom/android/camera/selfieflash/SelfieFlashModule;->provideSelfieFlashControllerImpl(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/ui/views/CameraUi;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/settings/Settings;Lcom/android/camera/ui/WindowBrightness;Landroid/content/res/Resources;)Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1063
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;

    .line 15
    return-object v0
.end method

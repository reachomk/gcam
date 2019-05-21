.class public final Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ViewerActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/google/android/apps/refocus/ViewerActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final appLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifecycle/AppLifecycle;",
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

.field private final captureModuleSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final captureSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/session/CaptureSessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final lightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
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
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifecycle/AppLifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/session/CaptureSessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/LightcycleLensBlurTaskManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->traceProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->appLifecycleProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->captureSessionManagerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->lightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 52
    return-void
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 14
    check-cast p1, Lcom/google/android/apps/refocus/ViewerActivity;

    .line 1074
    if-nez p1, :cond_0

    .line 1075
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->traceProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->injectTrace(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V

    .line 1079
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->appLifetimeProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->injectAppLifetime(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V

    .line 1081
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->appLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->injectAppLifecycle(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V

    .line 1083
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->captureSessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSessionManager;

    iput-object v0, p1, Lcom/google/android/apps/refocus/ViewerActivity;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 1084
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->gservicesHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iput-object v0, p1, Lcom/google/android/apps/refocus/ViewerActivity;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 1085
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->lightcycleLensBlurTaskManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    iput-object v0, p1, Lcom/google/android/apps/refocus/ViewerActivity;->lightcycleLensBlurTaskManager:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    .line 1086
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    iput-object v0, p1, Lcom/google/android/apps/refocus/ViewerActivity;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 14
    return-void
.end method

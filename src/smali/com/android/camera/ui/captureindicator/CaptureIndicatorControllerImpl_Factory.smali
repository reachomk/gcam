.class public final Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;
.super Ljava/lang/Object;
.source "CaptureIndicatorControllerImpl_Factory.java"

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

.field private final indicatorCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final intentHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentHandler;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->isSecureProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->intentHandlerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->indicatorCacheProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1045
    new-instance v0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

    iget-object v1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/views/CameraUi;

    iget-object v2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->isSecureProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->intentHandlerProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/activity/IntentHandler;

    iget-object v4, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->indicatorCacheProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/storage/cache/SingleKeyCache;

    iget-object v5, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;-><init>(Lcom/android/camera/ui/views/CameraUi;ZLcom/android/camera/util/activity/IntentHandler;Lcom/android/camera/storage/cache/SingleKeyCache;Lcom/google/android/apps/camera/async/MainThread;)V

    .line 12
    return-object v0
.end method

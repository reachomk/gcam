.class public final Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter_Factory.java"

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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final glideFilmstripManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final photoItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/PhotoItemFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final processingServiceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final storageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
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

.field private final videoItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoItemFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/session/CaptureSessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/PhotoItemFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoItemFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->captureSessionManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->photoItemFactoryProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->videoItemFactoryProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p7, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->glideFilmstripManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p8, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->storageProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p9, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->metadataLoaderProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p10, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 67
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 13
    .line 1071
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 1072
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 1073
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/lifetime/ActivityLifetime;

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->captureSessionManagerProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/session/CaptureSessionManager;

    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 1075
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/processing/ProcessingServiceManager;

    iget-object v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->photoItemFactoryProvider:Ljavax/inject/Provider;

    .line 1076
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/PhotoItemFactory;

    iget-object v6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->videoItemFactoryProvider:Ljavax/inject/Provider;

    .line 1077
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/VideoItemFactory;

    iget-object v7, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->glideFilmstripManagerProvider:Ljavax/inject/Provider;

    .line 1078
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v8, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->storageProvider:Ljavax/inject/Provider;

    .line 1079
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/storage/Storage;

    iget-object v9, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->metadataLoaderProvider:Ljavax/inject/Provider;

    .line 1080
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    iget-object v10, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1081
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/debug/trace/Trace;

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/data/CameraFilmstripDataAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/storage/Storage;Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;Lcom/android/camera/debug/trace/Trace;)V

    .line 13
    return-object v0
.end method

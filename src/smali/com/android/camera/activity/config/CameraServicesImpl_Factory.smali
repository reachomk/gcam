.class public final Lcom/android/camera/activity/config/CameraServicesImpl_Factory;
.super Ljava/lang/Object;
.source "CameraServicesImpl_Factory.java"

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

.field private final mediaSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/MediaSaver;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteShutterListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/remote/RemoteShutterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
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
            "Lcom/android/camera/session/CaptureSessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/MediaSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/remote/RemoteShutterListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->captureSessionManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->mediaSaverProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->memoryManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->remoteShutterListenerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1044
    new-instance v0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    iget-object v1, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->captureSessionManagerProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/session/CaptureSessionManager;

    iget-object v2, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->mediaSaverProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/MediaSaver;

    iget-object v3, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->memoryManagerProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/memory/MemoryManager;

    iget-object v4, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->remoteShutterListenerProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/remote/RemoteShutterListener;

    iget-object v5, p0, Lcom/android/camera/activity/config/CameraServicesImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/settings/SettingsManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;-><init>(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/storage/MediaSaver;Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/remote/RemoteShutterListener;Lcom/android/camera/settings/SettingsManager;)V

    .line 12
    return-object v0
.end method

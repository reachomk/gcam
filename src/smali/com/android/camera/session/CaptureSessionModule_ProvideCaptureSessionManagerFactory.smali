.class public final Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;
.super Ljava/lang/Object;
.source "CaptureSessionModule_ProvideCaptureSessionManagerFactory.java"

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
.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
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

.field private final dcimCameraFolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DetachableFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final fileNamerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final filesProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FilesProxy;",
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

.field private final shotFailureHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/ShotFailureHandler;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DetachableFolder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/ShotFailureHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamerManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FilesProxy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/MediaSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->dcimCameraFolderProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->shotFailureHandlerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p5, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->fileNamerManagerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p6, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->filesProxyProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p7, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->mediaSaverProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p8, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->storageProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p9, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 66
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 17
    .line 1070
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1072
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 1073
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->dcimCameraFolderProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/detachablefile/DetachableFolder;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->shotFailureHandlerProvider:Ljavax/inject/Provider;

    .line 1075
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/error/ShotFailureHandler;

    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->fileNamerManagerProvider:Ljavax/inject/Provider;

    .line 1076
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/storage/FileNamerManager;

    iget-object v5, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->filesProxyProvider:Ljavax/inject/Provider;

    .line 1077
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/storage/FilesProxy;

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->mediaSaverProvider:Ljavax/inject/Provider;

    .line 1078
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/storage/MediaSaver;

    iget-object v7, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->storageProvider:Ljavax/inject/Provider;

    .line 1079
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/storage/Storage;

    iget-object v8, p0, Lcom/android/camera/session/CaptureSessionModule_ProvideCaptureSessionManagerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1080
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/camera/async/MainThread;

    .line 1071
    invoke-static/range {v0 .. v8}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideCaptureSessionManager(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/storage/detachablefile/DetachableFolder;Lcom/android/camera/error/ShotFailureHandler;Lcom/android/camera/storage/FileNamerManager;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/MediaSaver;Lcom/android/camera/storage/Storage;Lcom/google/android/apps/camera/async/MainThread;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1070
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSessionManager;

    .line 17
    return-object v0
.end method

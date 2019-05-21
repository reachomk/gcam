.class public final Lcom/android/camera/device/CameraDeviceVerifier_Factory;
.super Ljava/lang/Object;
.source "CameraDeviceVerifier_Factory.java"

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
.field private final cameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/hardware/camera2/CameraManager;",
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

.field private final handlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final usageStatisticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/UsageStatistics;",
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
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/UsageStatistics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceVerifier_Factory;->cameraManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/camera/device/CameraDeviceVerifier_Factory;->usageStatisticsProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/camera/device/CameraDeviceVerifier_Factory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/camera/device/CameraDeviceVerifier_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 34
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 11
    .line 1038
    new-instance v4, Lcom/android/camera/device/CameraDeviceVerifier;

    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier_Factory;->cameraManagerProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceVerifier_Factory;->usageStatisticsProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/stats/UsageStatistics;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceVerifier_Factory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/HandlerFactory;

    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceVerifier_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/device/CameraDeviceVerifier;-><init>(Landroid/hardware/camera2/CameraManager;Lcom/android/camera/stats/UsageStatistics;Lcom/google/android/apps/camera/async/HandlerFactory;Ljava/util/concurrent/Executor;)V

    .line 11
    return-object v4
.end method

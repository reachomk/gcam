.class public final Lcom/android/camera/burst/BurstFacadeImpl_Factory;
.super Ljava/lang/Object;
.source "BurstFacadeImpl_Factory.java"

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
.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final autogenArtifactsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final burstModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
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

.field private final instrumentationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/Instrumentation;",
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
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FilesProxy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/Instrumentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->filesProxyProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->autogenArtifactsProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p5, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->burstModeProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p6, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p7, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->storageProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p8, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p9, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->instrumentationProvider:Ljavax/inject/Provider;

    .line 63
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 15
    .line 1067
    new-instance v0, Lcom/android/camera/burst/BurstFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/processing/ProcessingServiceManager;

    iget-object v3, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->filesProxyProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/storage/FilesProxy;

    iget-object v4, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->autogenArtifactsProvider:Ljavax/inject/Provider;

    .line 1071
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/async/Observable;

    iget-object v5, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->burstModeProvider:Ljavax/inject/Provider;

    .line 1072
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/async/Observable;

    iget-object v6, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1073
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v7, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->storageProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/storage/Storage;

    iget-object v8, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1075
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/debug/trace/Trace;

    iget-object v9, p0, Lcom/android/camera/burst/BurstFacadeImpl_Factory;->instrumentationProvider:Ljavax/inject/Provider;

    .line 1076
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/stats/Instrumentation;

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/burst/BurstFacadeImpl;-><init>(Landroid/content/Context;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/storage/FilesProxy;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/stats/Instrumentation;)V

    .line 15
    return-object v0
.end method

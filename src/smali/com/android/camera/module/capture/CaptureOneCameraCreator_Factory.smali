.class public final Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;
.super Ljava/lang/Object;
.source "CaptureOneCameraCreator_Factory.java"

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
.field private final burstFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacadeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final displayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/util/DisplayMetrics;",
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

.field private final hdrPlusSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrSeceneSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
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

.field private final metricBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraFeatureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraOpenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacadeImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/Instrumentation;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p4, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p5, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->hdrSeceneSettingProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p6, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->oneCameraFeatureConfigProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p7, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p8, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->oneCameraOpenerProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p9, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->displayMetricsProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p10, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p11, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->instrumentationProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p12, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p13, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->metricBuilderProvider:Ljavax/inject/Provider;

    .line 88
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 20
    .line 1092
    new-instance v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1093
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 1094
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 1095
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/settings/Settings;

    iget-object v4, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 1096
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/HdrPlusSetting;

    iget-object v5, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->hdrSeceneSettingProvider:Ljavax/inject/Provider;

    .line 1097
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/async/Observable;

    iget-object v6, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->oneCameraFeatureConfigProvider:Ljavax/inject/Provider;

    .line 1098
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iget-object v7, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1099
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/one/OneCameraManager;

    iget-object v8, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->oneCameraOpenerProvider:Ljavax/inject/Provider;

    .line 1100
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/OneCameraOpener;

    iget-object v9, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->displayMetricsProvider:Ljavax/inject/Provider;

    .line 1101
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/DisplayMetrics;

    iget-object v10, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 1102
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/burst/BurstFacadeImpl;

    iget-object v11, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->instrumentationProvider:Ljavax/inject/Provider;

    .line 1103
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/stats/Instrumentation;

    iget-object v12, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1104
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/debug/trace/Trace;

    iget-object v13, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator_Factory;->metricBuilderProvider:Ljavax/inject/Provider;

    .line 1105
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/debug/performance/MetricBuilder;

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;-><init>(Lcom/google/android/apps/camera/async/MainThread;Ljava/util/concurrent/Executor;Lcom/android/camera/settings/Settings;Lcom/android/camera/one/HdrPlusSetting;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/OneCameraOpener;Landroid/util/DisplayMetrics;Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;)V

    .line 20
    return-object v0
.end method

.class public final Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;
.super Ljava/lang/Object;
.source "CaptureModeUiStartup_Factory.java"

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

.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/AppController;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
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

.field private final captureLayoutHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final captureModeUiStartupMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/capture/CaptureModeUiStartup;",
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

.field private final futureViewfinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layoutConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;>;"
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

.field private final preInitLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final startedOneCameraProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;>;"
        }
    .end annotation
.end field

.field private final startupConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/OneModuleConfig;",
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

.field private final viewfinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/module/capture/CaptureModeUiStartup;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/AppController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/OneModuleConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->captureModeUiStartupMembersInjector:Ldagger/MembersInjector;

    .line 85
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 89
    iput-object p4, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->cameraActivityControllerLazyProvider:Ljavax/inject/Provider;

    .line 91
    iput-object p5, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->startupConfigProvider:Ljavax/inject/Provider;

    .line 93
    iput-object p6, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->futureViewfinderProvider:Ljavax/inject/Provider;

    .line 95
    iput-object p7, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->startedOneCameraProvider:Ljavax/inject/Provider;

    .line 97
    iput-object p8, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 99
    iput-object p9, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->viewfinderProvider:Ljavax/inject/Provider;

    .line 101
    iput-object p10, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 103
    iput-object p11, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 105
    iput-object p12, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->layoutConfigProvider:Ljavax/inject/Provider;

    .line 107
    iput-object p13, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->preInitLifetimeProvider:Ljavax/inject/Provider;

    .line 109
    iput-object p14, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 111
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 113
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 115
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->metricBuilderProvider:Ljavax/inject/Provider;

    .line 116
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 19

    .prologue
    .line 28
    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->captureModeUiStartupMembersInjector:Ldagger/MembersInjector;

    move-object/from16 v18, v0

    new-instance v1, Lcom/android/camera/module/capture/CaptureModeUiStartup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 1123
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 1124
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->cameraActivityControllerLazyProvider:Ljavax/inject/Provider;

    .line 1125
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->startupConfigProvider:Ljavax/inject/Provider;

    .line 1126
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/OneModuleConfig;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->futureViewfinderProvider:Ljavax/inject/Provider;

    .line 1127
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/util/concurrent/SettableFuture;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->startedOneCameraProvider:Ljavax/inject/Provider;

    .line 1128
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/util/concurrent/ListenableFuture;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 1129
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/views/CameraUi;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->viewfinderProvider:Ljavax/inject/Provider;

    .line 1130
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/viewfinder/Viewfinder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1131
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/async/MainThread;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 1132
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/CaptureLayoutHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->layoutConfigProvider:Ljavax/inject/Provider;

    .line 1133
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/camera/async/UiObservable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->preInitLifetimeProvider:Ljavax/inject/Provider;

    .line 1134
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/camera/async/Lifetime;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 1135
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1136
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1137
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/util/ApiHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModeUiStartup_Factory;->metricBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    .line 1138
    invoke-interface/range {v17 .. v17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/debug/performance/MetricBuilder;

    invoke-direct/range {v1 .. v17}, Lcom/android/camera/module/capture/CaptureModeUiStartup;-><init>(Lcom/android/camera/util/lifetime/ActivityLifetime;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/ui/views/CameraUi;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/google/android/apps/camera/async/UiObservable;Lcom/google/android/apps/camera/async/Lifetime;Ljava/util/concurrent/Executor;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/debug/performance/MetricBuilder;)V

    .line 1120
    move-object/from16 v0, v18

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/capture/CaptureModeUiStartup;

    .line 28
    return-object v1
.end method

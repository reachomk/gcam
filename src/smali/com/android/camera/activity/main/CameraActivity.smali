.class public Lcom/android/camera/activity/main/CameraActivity;
.super Lcom/android/camera/activity/gca/GcaActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/activity/main/HasCameraActivityComponents;


# static fields
.field private static final EXP_ACTIVITY_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T26APJ1ELM78HJ1DHPMAHJCC5JJM___:Lcom/android/camera/util/flags/CameraFlag;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cameraActivityComponent:Lcom/android/camera/activity/main/CameraActivityComponent;

.field private cameraActivityUiComponent:Lcom/android/camera/activity/main/CameraActivityUiComponent;

.field flags:Lcom/android/camera/util/flags/Flags;

.field private instrumentation:Lcom/android/camera/stats/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "CameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/activity/main/CameraActivity;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.exp.activity"

    invoke-direct {v0, v1}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/activity/main/CameraActivity;->EXP_ACTIVITY_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T26APJ1ELM78HJ1DHPMAHJCC5JJM___:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/activity/gca/GcaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUiComponent()Lcom/android/camera/activity/main/CameraActivityUiComponent;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivity;->cameraActivityUiComponent:Lcom/android/camera/activity/main/CameraActivityUiComponent;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/main/CameraActivityUiComponent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "CameraActivity#onCreate"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1}, Lcom/android/camera/activity/gca/GcaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/CameraApp;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraApp;->component$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v1

    .line 49
    invoke-interface {v1, p0}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->inject(Lcom/android/camera/activity/main/CameraActivity;)V

    .line 51
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/activity/main/CameraActivity;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    .line 52
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivity;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->cameraActivity()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->create()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/CameraActivitySession;

    .line 53
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraActivitySession;->recordActivityOnCreateStart()V

    .line 1077
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v2

    const-string v3, "setupDefaultActivity#init"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->getGcaActivityModule()Lcom/android/camera/activity/gca/GcaActivityModule;

    move-result-object v2

    .line 1079
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->getActivityModule()Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    move-result-object v3

    .line 1080
    new-instance v4, Lcom/android/camera/stats/ActivityInstrumentationModule;

    invoke-direct {v4, v0}, Lcom/android/camera/stats/ActivityInstrumentationModule;-><init>(Lcom/android/camera/stats/CameraActivitySession;)V

    .line 1082
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->createCameraActivityComponent(Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;Lcom/android/camera/stats/ActivityInstrumentationModule;)Lcom/android/camera/activity/main/CameraActivityComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/activity/main/CameraActivity;->cameraActivityComponent:Lcom/android/camera/activity/main/CameraActivityComponent;

    .line 1090
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    const-string v2, "activityInitializer#get"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivity;->cameraActivityComponent:Lcom/android/camera/activity/main/CameraActivityComponent;

    invoke-interface {v1}, Lcom/android/camera/activity/main/CameraActivityComponent;->initializer()Lcom/android/camera/activity/main/CameraActivityStartup;

    move-result-object v1

    .line 1093
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v2

    const-string v3, "activityInitializer#start"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1094
    invoke-interface {v1}, Lcom/google/android/apps/camera/async/Initializer;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1097
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    const-string v2, "#cameraUiModule#inflate"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1098
    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivity;->cameraActivityComponent:Lcom/android/camera/activity/main/CameraActivityComponent;

    invoke-interface {v1}, Lcom/android/camera/activity/main/CameraActivityComponent;->getCameraUiInflator()Lcom/android/camera/ui/views/CameraUiInflater;

    move-result-object v1

    .line 1099
    invoke-virtual {v1}, Lcom/android/camera/ui/views/CameraUiInflater;->inflate()Lcom/android/camera/ui/views/CameraUiModule;

    move-result-object v1

    .line 1103
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v2

    const-string v3, "activityUiInitializer#get"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1104
    iget-object v2, p0, Lcom/android/camera/activity/main/CameraActivity;->cameraActivityComponent:Lcom/android/camera/activity/main/CameraActivityComponent;

    .line 1105
    invoke-interface {v2, v1}, Lcom/android/camera/activity/main/CameraActivityComponent;->createCameraActivityUiComponent(Lcom/android/camera/ui/views/CameraUiModule;)Lcom/android/camera/activity/main/CameraActivityUiComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/activity/main/CameraActivity;->cameraActivityUiComponent:Lcom/android/camera/activity/main/CameraActivityUiComponent;

    .line 1106
    iget-object v1, p0, Lcom/android/camera/activity/main/CameraActivity;->cameraActivityUiComponent:Lcom/android/camera/activity/main/CameraActivityUiComponent;

    invoke-interface {v1}, Lcom/android/camera/activity/main/CameraActivityUiComponent;->initializer()Lcom/android/camera/activity/main/CameraActivityUiStartup;

    move-result-object v1

    .line 1108
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v2

    const-string v3, "#activityUiInitializer#start"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1109
    invoke-interface {v1}, Lcom/google/android/apps/camera/async/Initializer;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1111
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 61
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraActivitySession;->recordActivityOnCreateEnd()V

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/activity/main/CameraActivity;->trace()Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivity;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->cameraActivity()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/CameraActivitySession;

    invoke-virtual {v0}, Lcom/android/camera/stats/CameraActivitySession;->recordActivityOnResumeStart()V

    .line 68
    invoke-super {p0}, Lcom/android/camera/activity/gca/GcaActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivity;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->cameraActivity()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/CameraActivitySession;

    invoke-virtual {v0}, Lcom/android/camera/stats/CameraActivitySession;->recordActivityOnResumeEnd()V

    .line 70
    return-void
.end method

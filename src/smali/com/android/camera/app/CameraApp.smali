.class public Lcom/android/camera/app/CameraApp;
.super Lcom/android/camera/util/lifecycle/ObservableApplication;
.source "CameraApp.java"

# interfaces
.implements Lcom/android/camera/app/HasCameraAppComponent;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

.field cameraAppStartup:Lcom/android/camera/app/CameraAppStartup;

.field private component$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185O70GRFDLO6URJ5DPQ3M___:Lcom/android/camera/one/v2/OneCameraFactoryProvider;

.field gcamUsageStatisticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;"
        }
    .end annotation
.end field

.field notificationManager:Landroid/app/NotificationManager;

.field strictModePolicy:Lcom/android/camera/debug/StrictModePolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/util/lifecycle/ObservableApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public final component$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/app/CameraApp;->component$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185O70GRFDLO6URJ5DPQ3M___:Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    if-nez v0, :cond_2

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/CameraApp;->component$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185O70GRFDLO6URJ5DPQ3M___:Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "GCA_App#initialize"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 97
    const-string v0, "GCA_App#buildComponent"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2474
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;-><init>(B)V

    .line 2122
    invoke-static {p0}, Lcom/google/android/apps/camera/inject/app/ApplicationModule;->fromApplication(Landroid/app/Application;)Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->applicationModule(Lcom/google/android/apps/camera/inject/app/ApplicationModule;)Lcom/android/camera/app/DaggerCameraAppComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/util/lifecycle/AppLifecycleModule;

    .line 3012
    iget-object v2, p0, Lcom/android/camera/util/lifecycle/ObservableApplication;->lifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    .line 2123
    invoke-direct {v1, v2}, Lcom/android/camera/util/lifecycle/AppLifecycleModule;-><init>(Lcom/android/camera/util/lifecycle/AppLifecycle;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->appLifecycleModule(Lcom/android/camera/util/lifecycle/AppLifecycleModule;)Lcom/android/camera/app/DaggerCameraAppComponent$Builder;

    move-result-object v0

    .line 2124
    invoke-virtual {v0}, Lcom/android/camera/app/DaggerCameraAppComponent$Builder;->build$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/android/camera/app/CameraApp;->component$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185O70GRFDLO6URJ5DPQ3M___:Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    .line 99
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 101
    const-string v0, "GCA_App#initialize"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/app/CameraApp;->component$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185O70GRFDLO6URJ5DPQ3M___:Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    .line 3135
    const-string v1, "GCA_App#inject"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3136
    invoke-interface {v0, p0}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->inject(Lcom/android/camera/app/CameraApp;)V

    .line 3137
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3140
    const-string v0, "GCA_App#usageStatistics"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3142
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3143
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->setIsTestDevice(Z)V

    .line 3147
    :cond_0
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraApp;->buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->setBuildSource(Lcom/android/camera/util/app/AppProperties$BuildSource;)V

    .line 3148
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3151
    const-string v0, "GCA_App#strictMode"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3152
    iget-object v0, p0, Lcom/android/camera/app/CameraApp;->strictModePolicy:Lcom/android/camera/debug/StrictModePolicy;

    .line 3153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3156
    const-string v0, "GCA_App#startAsync"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3157
    iget-object v0, p0, Lcom/android/camera/app/CameraApp;->cameraAppStartup:Lcom/android/camera/app/CameraAppStartup;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppStartup;->startAsync()V

    .line 3158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3162
    const-string v0, "GCA_App#cancelNotifications"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3163
    iget-object v0, p0, Lcom/android/camera/app/CameraApp;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 3164
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3169
    const-string v0, "GCA_App#setDefaultUncaughtExceptionHandler"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3170
    new-instance v0, Lcom/android/camera/silentfeedback/RecordUncaughtExceptionStats;

    iget-object v1, p0, Lcom/android/camera/app/CameraApp;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/camera/silentfeedback/CameraSilentFeedbackHandler;

    .line 3174
    invoke-virtual {p0}, Lcom/android/camera/app/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/silentfeedback/CameraSilentFeedbackHandler;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/silentfeedback/RecordUncaughtExceptionStats;-><init>(Ljavax/inject/Provider;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3170
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3175
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 103
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 104
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 106
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraApp;->component$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185O70GRFDLO6URJ5DPQ3M___:Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "GCA_App#onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/android/camera/stats/CameraAppSession;->instance()Lcom/android/camera/stats/CameraAppSession;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraAppSession;->recordAppOnCreateStart()V

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/app/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/debug/LogHelper;->initializeOnce(Landroid/content/ContentResolver;)V

    .line 80
    invoke-static {}, Lcom/android/camera/settings/FirstRunDetector;->instance()Lcom/android/camera/settings/FirstRunDetector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/app/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/settings/FirstRunDetector;->initializeTimeOfFirstRun(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/stats/UsageStatistics;->initialize(Landroid/content/Context;)V

    .line 83
    invoke-super {p0}, Lcom/android/camera/util/lifecycle/ObservableApplication;->onCreate()V

    .line 84
    invoke-virtual {v0}, Lcom/android/camera/stats/CameraAppSession;->recordAppOnCreateEnd()V

    .line 85
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 86
    return-void
.end method

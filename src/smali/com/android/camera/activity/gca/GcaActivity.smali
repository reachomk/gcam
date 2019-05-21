.class public Lcom/android/camera/activity/gca/GcaActivity;
.super Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;
.source "GcaActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

.field private activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

.field appLifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

.field appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

.field private gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

.field private isInitialized:Z

.field private final lock:Ljava/lang/Object;

.field trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "GcaActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/activity/gca/GcaActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->lock:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->isInitialized:Z

    return-void
.end method

.method private getActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/camera/activity/gca/GcaActivity;->initializeOnce()V

    .line 112
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    return-object v0
.end method

.method private final initializeOnce()V
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->isInitialized:Z

    if-nez v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/camera/activity/gca/GcaActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->isInitialized:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/activity/gca/GcaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/CameraApp;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraApp;->component$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->inject(Lcom/android/camera/activity/gca/GcaActivity;)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

    invoke-static {v0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->create(Lcom/android/camera/util/lifetime/AppLifetime;)Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->isInitialized:Z

    .line 158
    :cond_0
    monitor-exit v1

    .line 160
    :cond_1
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final logWithId(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/android/camera/activity/gca/GcaActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method


# virtual methods
.method protected final getActivityModule()Lcom/google/android/apps/camera/inject/activity/ActivityModule;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    if-nez v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/camera/activity/gca/GcaActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 142
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityModule:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final getGcaActivityModule()Lcom/android/camera/activity/gca/GcaActivityModule;
    .locals 4

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/activity/gca/GcaActivity;->initializeOnce()V

    .line 121
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    if-nez v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/camera/activity/gca/GcaActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    iget-object v2, p0, Lcom/android/camera/activity/gca/GcaActivity;->appLifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 125
    new-instance v0, Lcom/android/camera/activity/gca/GcaActivityModule;

    iget-object v2, p0, Lcom/android/camera/activity/gca/GcaActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-direct {p0}, Lcom/android/camera/activity/gca/GcaActivity;->getActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/camera/activity/gca/GcaActivityModule;-><init>(Lcom/android/camera/activity/gca/GcaActivity;Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;Lcom/android/camera/util/lifetime/ActivityLifetime;)V

    iput-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 127
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/activity/gca/GcaActivity;->initializeOnce()V

    .line 43
    const-string v0, "GcaActivity#onCreate"

    invoke-direct {p0, v0}, Lcom/android/camera/activity/gca/GcaActivity;->logWithId(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "GcaActivity#onCreate"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    invoke-virtual {v0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->onCreate()V

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "GcaActivity#onDestroy"

    invoke-direct {p0, v0}, Lcom/android/camera/activity/gca/GcaActivity;->logWithId(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "GcaActivity#onDestroy"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 95
    invoke-super {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    invoke-virtual {v0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 99
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "GcaActivity#onPause"

    invoke-direct {p0, v0}, Lcom/android/camera/activity/gca/GcaActivity;->logWithId(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "GcaActivity#onPause"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->onPause()V

    .line 77
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    invoke-virtual {v0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->onPause()V

    .line 78
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "GcaActivity#onResume"

    invoke-direct {p0, v0}, Lcom/android/camera/activity/gca/GcaActivity;->logWithId(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "GcaActivity#onResume"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    invoke-virtual {v0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->onResume()V

    .line 67
    invoke-super {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 69
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "GcaActivity#onStart"

    invoke-direct {p0, v0}, Lcom/android/camera/activity/gca/GcaActivity;->logWithId(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "GcaActivity#onStart"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    invoke-virtual {v0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->onStart()V

    .line 57
    invoke-super {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->onStart()V

    .line 58
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 59
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "GcaActivity#onStop"

    invoke-direct {p0, v0}, Lcom/android/camera/activity/gca/GcaActivity;->logWithId(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "GcaActivity#onStop"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 85
    invoke-super {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->onStop()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    invoke-virtual {v0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->onStop()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 89
    return-void
.end method

.method protected final trace()Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/camera/activity/gca/GcaActivity;->initializeOnce()V

    .line 103
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

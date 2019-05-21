.class public final Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;
.super Ljava/lang/Object;
.source "ActivityLifetimeImpl.java"

# interfaces
.implements Lcom/android/camera/util/lifetime/ActivityLifetime;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnDestroy;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnPause;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnResume;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStart;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStop;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

.field private foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

.field private isInstanceLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

.field private isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

.field private final lock:Ljava/lang/Object;

.field private visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ActivityLifetime"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createInstanceLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 75
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-interface {v0, v1}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createVisibleChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 76
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-interface {v0, v1}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createForegroundChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 78
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v1, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isInstanceLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 79
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v1, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 80
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v1, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 81
    return-void
.end method

.method public static create(Lcom/android/camera/util/lifetime/AppLifetime;)Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    instance-of v0, p0, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 67
    new-instance v0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;

    check-cast p0, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    invoke-direct {v0, p0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;-><init>(Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;)V

    return-object v0
.end method


# virtual methods
.method public final getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getVisibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isForegroundLifetimeClosed()Z
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isInstanceLifetimeClosed()Z
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isInstanceLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isVisibleLifetimeClosed()Z
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onCreate()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isInstanceLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createInstanceLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 136
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v2, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isInstanceLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 138
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    iget-object v2, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-interface {v0, v2}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createVisibleChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 139
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v2, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 141
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    iget-object v2, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-interface {v0, v2}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createForegroundChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 142
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v2, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 144
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    sget-object v0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy()"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 193
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onPause()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    sget-object v0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v2, "onPause()"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 177
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v2, "onResume()"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isForegroundLifetimeClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    iget-object v2, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-interface {v0, v2}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createForegroundChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 167
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v2, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 169
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onStart()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    sget-object v0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v2, "onStart()"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isVisibleLifetimeClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    iget-object v2, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->instanceLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-interface {v0, v2}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createVisibleChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 153
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v2, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isVisibleLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 155
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->appLifetimes:Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;

    iget-object v2, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-interface {v0, v2}, Lcom/android/camera/util/lifetime/TrackedLifetimeCreator;->createForegroundChildLifetimeFrom(Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 156
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->foregroundLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v2, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/IsClosed;

    iput-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->isForegroundLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 158
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onStop()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    sget-object v0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->TAG:Ljava/lang/String;

    const-string v2, "onStop()"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/util/lifetime/ActivityLifetimeImpl;->visibleLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 185
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

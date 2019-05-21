.class public Lcom/android/camera/processing/ProcessingService;
.super Landroid/app/Service;
.source "ProcessingService.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$ProgressListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/ProcessingService$ServiceController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentTask:Lcom/android/camera/processing/ProcessingTask;

.field private destroyed:Z

.field localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private notificationBuilder:Landroid/app/Notification$Builder;

.field private final notificationLock:Ljava/lang/Object;

.field notificationManager:Landroid/app/NotificationManager;

.field private notificationUpdateTimeout:Lcom/google/android/apps/camera/async/DelayedExecutor;

.field private okToPostToNotification:Z

.field private volatile paused:Z

.field powerManager:Landroid/os/PowerManager;

.field processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private processingThread:Ljava/lang/Thread;

.field private final serviceController:Lcom/android/camera/processing/ProcessingService$ServiceController;

.field private final suspendStatusLock:Ljava/lang/Object;

.field trace:Lcom/android/camera/debug/trace/Trace;

.field private updateNotificationAfterTimeout:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "ProcessingService"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    new-instance v0, Lcom/android/camera/processing/ProcessingService$ServiceController;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/processing/ProcessingService$ServiceController;-><init>(Lcom/android/camera/processing/ProcessingService;B)V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->serviceController:Lcom/android/camera/processing/ProcessingService$ServiceController;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->suspendStatusLock:Ljava/lang/Object;

    .line 93
    iput-boolean v1, p0, Lcom/android/camera/processing/ProcessingService;->paused:Z

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/processing/ProcessingService;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->pause()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/processing/ProcessingService;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->resume()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/processing/ProcessingService;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->destroyed:Z

    return v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/processing/ProcessingService;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->postNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/processing/ProcessingService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->suspendStatusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/processing/ProcessingService;)Lcom/android/camera/processing/ProcessingTask;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->currentTask:Lcom/android/camera/processing/ProcessingTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/processing/ProcessingService;Lcom/android/camera/processing/ProcessingTask;)Lcom/android/camera/processing/ProcessingTask;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingService;->currentTask:Lcom/android/camera/processing/ProcessingTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/processing/ProcessingService;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->paused:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/processing/ProcessingService;Lcom/android/camera/processing/ProcessingTask;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/processing/ProcessingService;->processAndNotify(Lcom/android/camera/processing/ProcessingTask;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/processing/ProcessingService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/processing/ProcessingService;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/processing/ProcessingService;->okToPostToNotification:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/processing/ProcessingService;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->updateNotificationAfterTimeout:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/processing/ProcessingService;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->updateNotificationAfterTimeout:Z

    return v0
.end method

.method private final pause()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v1, "Pausing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->notificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->okToPostToNotification:Z

    .line 196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->suspendStatusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->paused:Z

    .line 199
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->currentTask:Lcom/android/camera/processing/ProcessingTask;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->currentTask:Lcom/android/camera/processing/ProcessingTask;

    invoke-interface {v0}, Lcom/android/camera/processing/ProcessingTask;->suspend()V

    .line 202
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 202
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private final postNotification()V
    .locals 4

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->notificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->okToPostToNotification:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->destroyed:Z

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v2, "Posting notification"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/camera/processing/ProcessingService;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->okToPostToNotification:Z

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->updateNotificationAfterTimeout:Z

    .line 303
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationUpdateTimeout:Lcom/google/android/apps/camera/async/DelayedExecutor;

    new-instance v2, Lcom/android/camera/processing/ProcessingService$2;

    invoke-direct {v2, p0}, Lcom/android/camera/processing/ProcessingService$2;-><init>(Lcom/android/camera/processing/ProcessingService;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/DelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 319
    :goto_0
    monitor-exit v1

    return-void

    .line 317
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->updateNotificationAfterTimeout:Z

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final processAndNotify(Lcom/android/camera/processing/ProcessingTask;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    if-nez p1, :cond_0

    .line 266
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v1, "Reference to ProcessingTask is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 2285
    :cond_0
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v1, "Resetting notification"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationBuilder:Landroid/app/Notification$Builder;

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 2287
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->postNotification()V

    .line 271
    invoke-interface {p1}, Lcom/android/camera/processing/ProcessingTask;->getSession()Lcom/android/camera/session/SessionBase;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_1

    .line 275
    invoke-interface {v0, p0}, Lcom/android/camera/session/SessionBase;->setProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V

    .line 278
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 279
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v1, "Processing start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-interface {p1, p0}, Lcom/android/camera/processing/ProcessingTask;->process(Landroid/content/Context;)V

    .line 281
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v1, "Processing done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final resume()V
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v1, "Resuming"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->notificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->okToPostToNotification:Z

    .line 210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->suspendStatusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->paused:Z

    .line 213
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->currentTask:Lcom/android/camera/processing/ProcessingTask;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->currentTask:Lcom/android/camera/processing/ProcessingTask;

    invoke-interface {v0}, Lcom/android/camera/processing/ProcessingTask;->resume()V

    .line 216
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 216
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/processing/ProcessingService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/HasCameraAppComponent;

    invoke-interface {v0}, Lcom/android/camera/app/HasCameraAppComponent;->component$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->inject(Lcom/android/camera/processing/ProcessingService;)V

    .line 116
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 117
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->notificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->okToPostToNotification:Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->updateNotificationAfterTimeout:Z

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingService;->destroyed:Z

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "ProcessingService#onCreate"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/google/android/apps/camera/async/DelayedExecutor;

    const-string v1, "ProcServ"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/async/DelayedExecutor;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationUpdateTimeout:Lcom/google/android/apps/camera/async/DelayedExecutor;

    .line 127
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "WakeLock#new"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->powerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 130
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string v1, "com.android.camera.processing.PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "com.android.camera.processing.RESUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingService;->serviceController:Lcom/android/camera/processing/ProcessingService$ServiceController;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1326
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020102

    .line 1327
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1328
    invoke-virtual {p0}, Lcom/android/camera/processing/ProcessingService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1330
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0a005b

    .line 1331
    invoke-virtual {p0, v1}, Lcom/android/camera/processing/ProcessingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationBuilder:Landroid/app/Notification$Builder;

    .line 138
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 139
    return-void

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationUpdateTimeout:Lcom/google/android/apps/camera/async/DelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/DelayedExecutor;->close()V

    .line 150
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->serviceController:Lcom/android/camera/processing/ProcessingService$ServiceController;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/processing/ProcessingService;->stopForeground(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    invoke-virtual {v0}, Lcom/android/camera/processing/ProcessingServiceManager;->onServiceDestroyed()V

    .line 156
    return-void
.end method

.method public final onProgressChanged(I)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationBuilder:Landroid/app/Notification$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 182
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->postNotification()V

    .line 183
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 160
    sget-object v0, Lcom/android/camera/processing/ProcessingService;->TAG:Ljava/lang/String;

    const-string v1, "Starting in foreground."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/processing/ProcessingService;->startForeground(ILandroid/app/Notification;)V

    .line 2224
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->processingThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2227
    new-instance v0, Lcom/google/android/apps/camera/async/AndroidPriorityThread;

    const/16 v1, 0x9

    new-instance v2, Lcom/android/camera/processing/ProcessingService$1;

    invoke-direct {v2, p0}, Lcom/android/camera/processing/ProcessingService$1;-><init>(Lcom/android/camera/processing/ProcessingService;)V

    const-string v3, "CameraProcessingThread"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/camera/async/AndroidPriorityThread;-><init>(ILjava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingService;->processingThread:Ljava/lang/Thread;

    .line 2258
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->processingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onStatusMessageChanged(Lcom/android/camera/ui/UiString;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-interface {p1, p0}, Lcom/android/camera/ui/UiString;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 188
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingService;->postNotification()V

    .line 189
    return-void
.end method

.class public Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;
.super Ljava/lang/Object;
.source "GcaClearcutLoggerImpl.java"

# interfaces
.implements Lcom/android/camera/stats/clearcut/GcaClearcutLogger;


# static fields
.field private static final API_CLIENT_DISCONNECT_MILLIS:J

.field private static final CLEARCUT_LOG_SOURCE:Ljava/lang/String; = "ANDROID_CAMERA"

.field private static final DEBUG_LOG_ALL_EVENTS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appPackageName:Ljava/lang/String;

.field private final clearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field private final disconnectApiClient:Ljava/lang/Runnable;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final googleApiConnectionLock:Ljava/lang/Object;

.field private googleApiDisconnectFuture:Ljava/util/concurrent/Future;

.field private final logger:Lcom/android/camera/debug/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "GcaClearcutLog"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->TAG:Ljava/lang/String;

    .line 24
    const/16 v0, 0x1e

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToMillis(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->API_CLIENT_DISCONNECT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiConnectionLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;-><init>(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)V

    iput-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->disconnectApiClient:Ljava/lang/Runnable;

    .line 59
    iput-object p2, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 60
    iput-object p3, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->appPackageName:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->TAG:Ljava/lang/String;

    invoke-interface {p4, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->logger:Lcom/android/camera/debug/Logger;

    .line 65
    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    const-string v1, "ANDROID_CAMERA"

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->clearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiConnectionLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->logger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->maybeConnectToGoogleApiClient()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/google/android/gms/clearcut/ClearcutLogger;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->clearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->rescheduleApiClientDisconnect()V

    return-void
.end method

.method private logEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "\n---EVENT--- "

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->logger:Lcom/android/camera/debug/Logger;

    invoke-virtual {p1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->getSerializedSize()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "protobuf size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->logger:Lcom/android/camera/debug/Logger;

    invoke-virtual {p1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private maybeConnectToGoogleApiClient()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v2, "Connecting Clearcut GoogleApiClient..."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 124
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

.method private rescheduleApiClientDisconnect()V
    .locals 6

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiDisconnectFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiDisconnectFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->disconnectApiClient:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->API_CLIENT_DISCONNECT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 138
    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->googleApiDisconnectFuture:Ljava/util/concurrent/Future;

    .line 140
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public sendToClearcut(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V
    .locals 2

    .prologue
    .line 78
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;-><init>(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

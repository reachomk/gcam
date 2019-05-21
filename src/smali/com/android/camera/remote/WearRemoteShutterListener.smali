.class public final Lcom/android/camera/remote/WearRemoteShutterListener;
.super Ljava/lang/Object;
.source "WearRemoteShutterListener.java"

# interfaces
.implements Lcom/android/camera/remote/RemoteShutterListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/wearable/MessageApi$MessageListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/camera/remote/WearRemoteShutterListener;


# instance fields
.field private api:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final appContext:Landroid/content/Context;

.field private final mainHander:Landroid/os/Handler;

.field private module:Lcom/android/camera/remote/RemoteCameraModule;

.field private moduleReady:Z

.field private final sendHandler:Landroid/os/Handler;

.field private final sendHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "WearRmtShttrLstnr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->sInstance:Lcom/android/camera/remote/WearRemoteShutterListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->appContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camera.wearable"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->sendHandlerThread:Landroid/os/HandlerThread;

    .line 79
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->sendHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->sendHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->sendHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->mainHander:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/remote/WearRemoteShutterListener;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/remote/WearRemoteShutterListener;Lcom/google/android/gms/wearable/Asset;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/remote/WearRemoteShutterListener;->setPostviewThubmnailDataItem(Lcom/google/android/gms/wearable/Asset;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/remote/WearRemoteShutterListener;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/camera/remote/RemoteShutterListener;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/remote/WearRemoteShutterListener;

    invoke-direct {v0, p0}, Lcom/android/camera/remote/WearRemoteShutterListener;-><init>(Landroid/content/Context;)V

    .line 58
    sput-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->sInstance:Lcom/android/camera/remote/WearRemoteShutterListener;

    return-object v0
.end method

.method private final setCameraReady(ZLjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 191
    const-string v0, "/camera_packet"

    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataMapRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v1

    const-string v2, "camera_ready"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    invoke-direct {p0, v0, p2}, Lcom/android/camera/remote/WearRemoteShutterListener;->setDataItem(Lcom/google/android/gms/wearable/PutDataMapRequest;Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method private final setDataItem(Lcom/google/android/gms/wearable/PutDataMapRequest;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->sendHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/remote/WearRemoteShutterListener$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/remote/WearRemoteShutterListener$4;-><init>(Lcom/android/camera/remote/WearRemoteShutterListener;Lcom/google/android/gms/wearable/PutDataMapRequest;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method private final setPostviewThubmnailDataItem(Lcom/google/android/gms/wearable/Asset;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 203
    const-string v0, "/camera_packet"

    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataMapRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v0

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v1

    const-string v2, "postview_thumbnail"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 207
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/camera/remote/WearRemoteShutterListener;->setDataItem(Lcom/google/android/gms/wearable/PutDataMapRequest;Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->sendHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 252
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 254
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 256
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 257
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 86
    sget-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google API connected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->moduleReady:Z

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    iget-object v1, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/wearable/MessageApi;->addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/remote/WearRemoteShutterListener;->setCameraReady(ZLjava/lang/Runnable;)V

    .line 97
    :cond_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Connection suspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public final onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 4

    .prologue
    .line 241
    const-string v0, "/takePicture"

    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    const-string v1, "Received remote shutter from Wear device"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->module:Lcom/android/camera/remote/RemoteCameraModule;

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteCameraModule;->onRemoteShutterPress()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v1, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    const-string v2, "Unable to handle unknown message: "

    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onModuleExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->module:Lcom/android/camera/remote/RemoteCameraModule;

    .line 129
    iget-boolean v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->moduleReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    const-string v1, "onModuleExit. Shutting down wearable connection"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    iget-object v1, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/wearable/MessageApi;->removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 132
    new-instance v0, Lcom/android/camera/remote/WearRemoteShutterListener$1;

    invoke-direct {v0, p0}, Lcom/android/camera/remote/WearRemoteShutterListener$1;-><init>(Lcom/android/camera/remote/WearRemoteShutterListener;)V

    invoke-direct {p0, v2, v0}, Lcom/android/camera/remote/WearRemoteShutterListener;->setCameraReady(ZLjava/lang/Runnable;)V

    .line 141
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->moduleReady:Z

    .line 142
    return-void
.end method

.method public final onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    iput-object p1, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->module:Lcom/android/camera/remote/RemoteCameraModule;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->moduleReady:Z

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    const-string v1, "Bad install order on GmsCore and Camera - remote shutter will not work, reinstall the same GoogleCamera.apk"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iput-object v4, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 118
    iput-boolean v3, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->moduleReady:Z

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    sget-object v1, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    const-string v2, "Exception when connecting to wear"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    iput-object v4, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 122
    iput-boolean v3, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->moduleReady:Z

    goto :goto_0
.end method

.method public final onPictureTaken([B)V
    .locals 3

    .prologue
    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->moduleReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->api:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    new-instance v0, Lcom/android/camera/remote/WearRemoteShutterListener$2;

    const/16 v1, 0x140

    const/16 v2, 0x140

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/remote/WearRemoteShutterListener$2;-><init>(Lcom/android/camera/remote/WearRemoteShutterListener;II)V

    .line 163
    iget-object v1, p0, Lcom/android/camera/remote/WearRemoteShutterListener;->mainHander:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/remote/WearRemoteShutterListener$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/camera/remote/WearRemoteShutterListener$3;-><init>(Lcom/android/camera/remote/WearRemoteShutterListener;[BLcom/bumptech/glide/request/target/SimpleTarget;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lcom/android/camera/remote/WearRemoteShutterListener;->TAG:Ljava/lang/String;

    const-string v2, "error processing photo for wear"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

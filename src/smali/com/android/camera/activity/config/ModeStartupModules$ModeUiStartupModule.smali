.class public Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;
.super Ljava/lang/Object;
.source "ModeStartupModules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/activity/config/ModeStartupModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeUiStartupModule"
.end annotation


# instance fields
.field private final mediaSaver:Lcom/android/camera/storage/MediaSaver;

.field private final memoryManager:Lcom/android/camera/memory/MemoryManager;

.field private final remoteShutterListener:Lcom/android/camera/remote/RemoteShutterListener;

.field private final sessionManager:Lcom/android/camera/session/CaptureSessionManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/storage/MediaSaver;Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/remote/RemoteShutterListener;Lcom/android/camera/settings/SettingsManager;)V
    .locals 0

    .prologue
    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    iput-object p1, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 2029
    iput-object p2, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->mediaSaver:Lcom/android/camera/storage/MediaSaver;

    .line 2030
    iput-object p3, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->memoryManager:Lcom/android/camera/memory/MemoryManager;

    .line 2031
    iput-object p4, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->remoteShutterListener:Lcom/android/camera/remote/RemoteShutterListener;

    .line 2033
    return-void
.end method


# virtual methods
.method public getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method public getMediaSaver()Lcom/android/camera/storage/MediaSaver;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->mediaSaver:Lcom/android/camera/storage/MediaSaver;

    return-object v0
.end method

.method public getMemoryManager()Lcom/android/camera/memory/MemoryManager;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->memoryManager:Lcom/android/camera/memory/MemoryManager;

    return-object v0
.end method

.method public getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->remoteShutterListener:Lcom/android/camera/remote/RemoteShutterListener;

    return-object v0
.end method

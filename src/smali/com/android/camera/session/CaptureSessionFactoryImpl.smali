.class public final Lcom/android/camera/session/CaptureSessionFactoryImpl;
.super Ljava/lang/Object;
.source "CaptureSessionFactoryImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionFactory;


# instance fields
.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final mediaSaver:Lcom/android/camera/storage/MediaSaver;

.field private final placeholderManager:Lcom/android/camera/session/PlaceholderManager;

.field private final sessionFinishExecutor:Ljava/util/concurrent/Executor;

.field private final sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

.field private final stackSaverFactory:Lcom/android/camera/session/StackSaverFactory;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/MediaSaver;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/session/SessionStorageManager;Lcom/android/camera/session/StackSaverFactory;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/Storage;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FilesProxy;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 34
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/MediaSaver;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mediaSaver:Lcom/android/camera/storage/MediaSaver;

    .line 35
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/PlaceholderManager;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 36
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/SessionStorageManager;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    .line 37
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/StackSaverFactory;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->stackSaverFactory:Lcom/android/camera/session/StackSaverFactory;

    .line 38
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->sessionFinishExecutor:Ljava/util/concurrent/Executor;

    .line 39
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->storage:Lcom/android/camera/storage/Storage;

    .line 40
    return-void
.end method


# virtual methods
.method public final createNewSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSJB1DPGMEPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQJCLPN6QBFDP76UT39CPKMASHR9HL62TJ15TM62RJ75T9N8SJ9DPJJMIICC5N68SJFD5I2UR3FCDGN8QBFDONKORR3C5Q6IRRE7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;)Lcom/android/camera/session/StackableSession;
    .locals 16

    .prologue
    .line 49
    .line 1058
    new-instance v7, Lcom/android/camera/session/TemporarySessionFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    const-string v3, "TEMP_SESSIONS"

    move-object/from16 v0, p3

    invoke-direct {v7, v2, v3, v0}, Lcom/android/camera/session/TemporarySessionFile;-><init>(Lcom/android/camera/session/SessionStorageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    new-instance v2, Lcom/android/camera/session/CaptureSessionImpl;

    .line 1063
    invoke-static/range {p6 .. p6}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mediaSaver:Lcom/android/camera/storage/MediaSaver;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->stackSaverFactory:Lcom/android/camera/session/StackSaverFactory;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->sessionFinishExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->storage:Lcom/android/camera/storage/Storage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/session/CaptureSessionImpl;-><init>(Ljava/lang/String;JLcom/google/common/base/Optional;Lcom/android/camera/session/TemporarySessionFile;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/storage/MediaSaver;Lcom/android/camera/session/StackSaverFactory;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/Storage;Lcom/android/camera/storage/FilesProxy;)V

    .line 49
    return-object v2
.end method
